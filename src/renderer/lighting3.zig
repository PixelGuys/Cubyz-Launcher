const std = @import("std");
const Atomic = std.atomic.Value;

const main = @import("root");
const blocks = main.blocks;
const chunk = main.chunk;
const chunk_meshing = @import("chunk_meshing.zig");
const mesh_storage = @import("mesh_storage.zig");

const Channel = enum(u8) {
	sun_red = 0,
	sun_green = 1,
	sun_blue = 2,
	red = 3,
	green = 4,
	blue = 5,

	pub fn shift(self: Channel) u5 {
		switch(self) {
			.red, .sun_red => return 16,
			.green, .sun_green => return 8,
			.blue, .sun_blue => return 0,
		}
	}

	pub fn isSun(self: Channel) bool {
		switch(self) {
			.sun_red, .sun_green, .sun_blue => return true,
			.red, .green, .blue => return false,
		}
	}
};

var memoryPool: std.heap.MemoryPool(ChannelChunk) = undefined;
var memoryPoolMutex: std.Thread.Mutex = .{};
var runMemoryPool: std.heap.MemoryPool([chunk.chunkSize*chunk.chunkSize]RunInfo) = undefined;
var runMemoryPoolMutex: std.Thread.Mutex = .{};

pub fn init() void {
	memoryPool = std.heap.MemoryPool(ChannelChunk).init(main.globalAllocator.allocator);
	runMemoryPool = std.heap.MemoryPool([chunk.chunkSize*chunk.chunkSize]RunInfo).init(main.globalAllocator.allocator);
}

pub fn deinit() void {
	memoryPool.deinit();
	runMemoryPool.deinit();
}

const RunInfo = struct {
	blockAbsorption: u8,
	runSlope: u8,
	runValue: u8,
	isIncreasing: bool,
};

fn calculateValue(sourceVal: u8, distance: u8, slope: u8) u8 {
	const res = @as(i32, sourceVal) - @as(i32, distance)*@as(i32, slope);
	if(res < 0) return 0;
	return @intCast(res);
}

const AdvancedRunInfo = struct {
	startInclusive: u5,
	endInclusive: u5,
	info: RunInfo,

	fn getValue(self: AdvancedRunInfo, z: u5) u8 {
		if(self.info.isIncreasing) {
			const slope = self.info.runSlope;
			const value = self.info.runValue;
			return calculateValue(value, self.endInclusive - z, slope);
		} else {
			const slope = self.info.runSlope;
			const value = self.info.runValue;
			return calculateValue(value, z - self.startInclusive, slope);
		}
	}

	fn sliceTop(_self: AdvancedRunInfo, newEnd: u5) AdvancedRunInfo {
		var self = _self;
		std.debug.assert(newEnd >= self.startInclusive and newEnd <= self.endInclusive);
		if(!self.info.isIncreasing) {
			self.info.runValue = calculateValue(self.info.runValue, self.info.runSlope, self.endInclusive - newEnd);
		}
		self.endInclusive = newEnd;
		return self;
	}

	fn sliceBottom(_self: AdvancedRunInfo, newStart: u5) AdvancedRunInfo {
		var self = _self;
		std.debug.assert(newStart >= self.startInclusive and newStart <= self.endInclusive);
		if(self.info.isIncreasing) {
			self.info.runValue = calculateValue(self.info.runValue, self.info.runSlope, newStart - self.startInclusive);
		}
		self.startInclusive = newStart;
		return self;
	}

	fn attemptMerge(self: AdvancedRunInfo, other: *AdvancedRunInfo) bool {
		std.debug.assert(self.startInclusive == other.endInclusive + 1);
		if(self.info.blockAbsorption != other.info.blockAbsorption) return false;
		const selfValue = self.getValue(self.startInclusive);
		const otherValue = other.getValue(other.endInclusive);
		if(self.info.runValue == 0) {
			if(otherValue <= other.info.runSlope and !other.info.isIncreasing) {
				other.endInclusive = self.endInclusive;
				return true;
			} else {
				return false;
			}
		}
		if(other.info.runValue == 0) {
			if(selfValue <= self.info.runSlope and self.info.isIncreasing) {
				const oldStart = other.startInclusive;
				other.* = self;
				other.startInclusive = oldStart;
				return true;
			} else {
				return false;
			}
		}
		if(self.startInclusive == self.endInclusive) { // Slope is free
			if(other.startInclusive == other.endInclusive) { // Both slopes are free
				if(selfValue > otherValue) {
					other.endInclusive = self.endInclusive;
					other.info.runSlope = selfValue - otherValue;
					other.info.runValue = selfValue;
				} else {
					other.endInclusive = self.endInclusive;
					other.info.runSlope = otherValue - selfValue;
				}
				return true;
			}
			if(other.info.isIncreasing) {
				if(selfValue -| other.info.runSlope == otherValue) {
					other.endInclusive = self.endInclusive;
					return true;
				} else {
					return false;
				}
			} else {
				if(selfValue == otherValue -| other.info.runSlope) {
					other.endInclusive = self.endInclusive;
					return true;
				} else {
					return false;
				}
			}
		}
		if(other.startInclusive == other.endInclusive) { // Slope is free
			if(self.info.isIncreasing) {
				if(otherValue == selfValue -| self.info.runSlope) {
					const oldStart = other.startInclusive;
					other.* = self;
					other.startInclusive = oldStart;
					return true;
				} else {
					return false;
				}
			} else {
				if(otherValue -| self.info.runSlope == other.info.runSlope) {
					const oldStart = other.startInclusive;
					other.* = self;
					other.startInclusive = oldStart;
					return true;
				} else {
					return false;
				}
			}
		}
		if(self.info.isIncreasing != other.info.isIncreasing) return false;
		if(self.info.runSlope != other.info.runSlope) return false;
		if(self.info.isIncreasing) {
			if(selfValue -| otherValue == self.info.runSlope) {
				const oldStart = other.startInclusive;
				other.* = self;
				other.startInclusive = oldStart;
				return true;
			} else {
				return false;
			}
		} else {
			if(otherValue -| selfValue == self.info.runSlope) {
				other.endInclusive = self.endInclusive;
				return true;
			} else {
				return false;
			}
		}
	}
};

fn getIndex(x: usize, y: usize) usize {
	return x*chunk.chunkSize + y;
}

pub const ChannelChunk = struct {
	continuity: [chunk.chunkSize*chunk.chunkSize]u31,
	runData: [chunk.chunkSize]*[chunk.chunkSize*chunk.chunkSize]RunInfo,
	maxRuns: u8 = 0,
	mutex: std.Thread.Mutex,
	ch: *chunk.Chunk,
	channel: Channel,

	pub fn init(ch: *chunk.Chunk, channel: Channel) *ChannelChunk {
		memoryPoolMutex.lock();
		const self: *ChannelChunk = memoryPool.create() catch unreachable;
		memoryPoolMutex.unlock();
		self.maxRuns = 0;
		self.mutex = .{};
		self.ch = ch;
		self.channel = channel;
		for(0..chunk.chunkSize) |x| {
			for(0..chunk.chunkSize) |y| {
				const index = getIndex(x, y);
				var runInfo: RunInfo = .{.blockAbsorption = 0, .runSlope = 0, .runValue = 0, .isIncreasing = false};
				var runIndex: u5 = 0;
				var start: u5 = 0;
				var continuity: u31 = 0;
				for(0..chunk.chunkSize) |z| {
					const blockAbsorption: u8 = @intCast(ch.blocks[chunk.getIndex(@intCast(x), @intCast(y), @intCast(z))].absorption() >> self.channel.shift() & 0xff);
					if(runInfo.blockAbsorption != blockAbsorption) {
						if(z != 0) {
							//runInfo.runValue = 255 - runInfo.blockAbsorption; // TODO
							self.runPtr(index, runIndex).* = runInfo;
							runIndex += 1;
							continuity |= @as(u31, 1) << @intCast(z-1);
						}
						runInfo.blockAbsorption = blockAbsorption;
						start = @intCast(z);
					}
				}
				//runInfo.runValue = 255 - runInfo.blockAbsorption; // TODO
				self.runPtr(index, runIndex).* = runInfo;
				self.continuity[index] = continuity;
			}
		}
		return self;
	}

	pub fn deinit(self: *ChannelChunk) void {
		memoryPoolMutex.lock();
		memoryPool.destroy(self);
		memoryPoolMutex.unlock();
	}

	fn runPtr(self: *ChannelChunk, index: usize, runIndex: u5) *RunInfo {
		while(runIndex >= self.maxRuns) { // Ensure capacity
			runMemoryPoolMutex.lock();
			self.runData[self.maxRuns] = runMemoryPool.create() catch unreachable;
			runMemoryPoolMutex.unlock();
			self.maxRuns += 1;
		}
		return &self.runData[runIndex][index];
	}

	fn getRunInfo(self: *const ChannelChunk, index: usize, runIndex: u5) RunInfo {
		std.debug.assert(runIndex < self.maxRuns);
		return self.runData[runIndex][index];
	}

	fn getAdvancedRunInfo(self: *const ChannelChunk, index: usize, z: u5) AdvancedRunInfo {
		const mask: u31 = @intCast((@as(u32, 1) << z)-1);
		const continuity: u31 = self.continuity[index];
		// Start z is the position of the most significant bit smaller than z:
		const start: u5 = 31 - @clz(continuity & mask);
		// End z is the position of the least significant bit larger than or equal to z:
		const end: u5 = @ctz(continuity & ~mask);
		return .{
			.startInclusive = start,
			.endInclusive = end,
			.info = self.getRunInfo(index, @popCount(continuity & mask)),
		};
	}

	const Entry = struct {
		x: u5,
		y: u5,
		sourceDir: u3,
		runInfo: AdvancedRunInfo,
	};

	const Entry2 = struct{info: AdvancedRunInfo, isOld: bool};

	const PositionEntry = struct {
		x: u5,
		y: u5,
		z: u5,
	};

	const ChunkEntries = struct {
		mesh: ?*chunk_meshing.ChunkMesh,
		entries: main.ListUnmanaged(PositionEntry),
	};

	pub fn getValue(self: *const ChannelChunk, x: i32, y: i32, z: i32) u8 {
		const index = getIndex(@intCast(x), @intCast(y));
		const runInfo = self.getAdvancedRunInfo(index, @intCast(z));
		return runInfo.getValue(@intCast(z));
	}

	fn findIntersection(start: u5, end: u5, a1: i32, b1: i32, a2: i32, b2: i32) u5 {
		// a1 + (b1 - a1)/(end - start)*x = a2 + (b2 - a2)/(end - start)*x
		// a1 - a2 = (b2 - a2)/(end - start)*x - (b1 - a1)/(end - start)*x
		// a1 - a2 = ((b2 - a2) - (b1 - a1))/(end - start)*x
		// a1 - a2 = (b2 - a2 - b1 + a1)/(end - start)*x
		// x = (a1 - a2)*(end - start)/(b2 - a2 - b1 + a1)
		const x = @divTrunc((a1 - a2)*(end - start), (b2 - a2 - b1 + a1));
		return @as(u5, @intCast(x)) + start;
	}

	noinline fn propagateRun(target: AdvancedRunInfo, source: AdvancedRunInfo, results: *main.ListUnmanaged(Entry2)) bool {
		const start = @max(target.startInclusive, source.startInclusive);
		const end = @min(target.endInclusive, source.endInclusive);
		const bottomTargetValue = target.getValue(start);
		const topTargetValue = target.getValue(end);
		var bottomSourceValue = source.getValue(start) -| target.info.blockAbsorption;
		var topSourceValue = source.getValue(end) -| target.info.blockAbsorption;
		var slope = source.info.runSlope;
		if(source.info.runSlope > target.info.blockAbsorption +| 8) {
			slope = target.info.blockAbsorption +| 8;
			if(source.info.isIncreasing) {
				bottomSourceValue = calculateValue(topSourceValue, slope, end - start);
			} else {
				topSourceValue = calculateValue(bottomSourceValue, slope, end - start);
			}
		}
		var newSource = source;
		newSource.startInclusive = start;
		newSource.endInclusive = end;
		newSource.info.isIncreasing = source.info.isIncreasing;
		newSource.info.blockAbsorption = target.info.blockAbsorption;
		newSource.info.runSlope = slope;
		if(source.info.isIncreasing) {
			newSource.info.runValue = topSourceValue;
		} else {
			newSource.info.runValue = bottomSourceValue;
		}
		if(topSourceValue <= topTargetValue and bottomSourceValue <= bottomTargetValue) {
			results.appendAssumeCapacity(.{.info = target, .isOld = true});
			return false;
		}
		if(bottomSourceValue >= bottomTargetValue) {
			// Here there is a special case when the target interval is larger than the source interval:
			if(target.startInclusive < start) {
				const newStart = target.startInclusive;
				const newEnd = start - 1;
				const newSlope = (target.info.blockAbsorption +| 8);
				const newTopValue = bottomSourceValue -| newSlope;
				const newBottomValue = calculateValue(newTopValue, newSlope, newEnd - newStart);
				const oldTopValue = target.getValue(newEnd);
				const oldBottomValue = target.getValue(newStart);
				if(newTopValue > oldTopValue) {
					var newOutput = target.sliceTop(start - 1);
					newOutput.info.isIncreasing = true;
					newOutput.info.runSlope = newSlope;
					newOutput.info.runValue = newTopValue;
					if(newBottomValue >= oldBottomValue) {
						// Full coverage:
						results.appendAssumeCapacity(.{.info = newOutput, .isOld = false});
					} else {
						// Partial coverage:
						const intersection = findIntersection(newStart, newEnd, oldBottomValue, oldTopValue, newBottomValue, newTopValue);
						results.appendAssumeCapacity(.{.info = target.sliceTop(intersection), .isOld = true});
						results.appendAssumeCapacity(.{.info = newOutput.sliceBottom(intersection+1), .isOld = false});
					}
				} else {
					// No coverage
					results.appendAssumeCapacity(.{.info = target.sliceTop(start - 1), .isOld = true});
				}
			}
		}

		if(topSourceValue >= topTargetValue) {
			if(bottomSourceValue >= bottomTargetValue) {
				// Full overlap...
				results.appendAssumeCapacity(.{.info = newSource, .isOld = false});
			} else {
				// Partial overlap at top...
				const intersection = findIntersection(start, end, bottomTargetValue, topTargetValue, bottomSourceValue, topSourceValue);
				results.appendAssumeCapacity(.{.info = target.sliceTop(intersection), .isOld = true});
				results.appendAssumeCapacity(.{.info = newSource.sliceBottom(intersection+1), .isOld = false});
			}
		} else {
			if(bottomSourceValue >= bottomTargetValue) {
				// Partial overlap at bottom...

				const intersection = findIntersection(start, end, bottomTargetValue, topTargetValue, bottomSourceValue, topSourceValue);
				results.appendAssumeCapacity(.{.info = newSource.sliceTop(intersection), .isOld = false});
				results.appendAssumeCapacity(.{.info = target.sliceBottom(intersection+1), .isOld = true});
			} else unreachable;
		}

		if(topSourceValue >= topTargetValue) {
			// Here there is a special case when the target interval is larger than the source interval:
			if(target.endInclusive > end) {
				const newStart = end + 1;
				const newEnd = target.endInclusive;
				const newSlope = (target.info.blockAbsorption +| 8);
				const newBottomValue = bottomSourceValue -| newSlope;
				const newTopValue = calculateValue(newBottomValue, newSlope, newEnd - newStart);
				const oldBottomValue = target.getValue(newStart);
				const oldTopValue = target.getValue(newEnd);
				if(newBottomValue > oldBottomValue) {
					var newOutput = target.sliceBottom(end + 1);
					newOutput.info.isIncreasing = false;
					newOutput.info.runSlope = newSlope;
					newOutput.info.runValue = newBottomValue;
					if(newTopValue >= oldTopValue) {
						// Full coverage:
						results.appendAssumeCapacity(.{.info = newOutput, .isOld = false});
					} else {
						// Partial coverage:
						const intersection = findIntersection(newStart, newEnd, oldBottomValue, oldTopValue, newBottomValue, newTopValue);
						results.appendAssumeCapacity(.{.info = newOutput.sliceTop(intersection), .isOld = false});
						results.appendAssumeCapacity(.{.info = target.sliceBottom(intersection+1), .isOld = true});
					}
				} else {
					// No coverage
					results.appendAssumeCapacity(.{.info = target.sliceBottom(end + 1), .isOld = true});
				}
			}
		}
		return true;
	}

	fn propagateDirect(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry)) void {
		var neighborLists: [6]main.ListUnmanaged(Entry) = .{.{}} ** 6;
		defer {
			for(&neighborLists) |*list| {
				list.deinit(main.stackAllocator);
			}
		}

		self.mutex.lock();
		while (lightQueue.dequeue()) |entry| {
			const index = getIndex(entry.x, entry.y);
			var items: [32]Entry2 = undefined;
			var list: main.ListUnmanaged(Entry2) = .{.capacity = 32, .items = items[0..0]};
			var removedEntries: usize = 0;
			var z: u5 = entry.runInfo.startInclusive;
			var changedAnything: bool = false;
			while(true) {
				// TODO: Fast-path for unmodified values.
				const run = self.getAdvancedRunInfo(index, z);
				removedEntries += 1;
				const successfulPropagation: bool = propagateRun(run, entry.runInfo, &list); // TODO: Use return type
				if(!changedAnything and !successfulPropagation) {
					list.clearRetainingCapacity();
				} else {
					changedAnything = true;
				}
				if(run.endInclusive == 31) break;
				if(run.endInclusive >= entry.runInfo.endInclusive) { // Copy all the unmodified neighbors over:
					var _run = run;
					while(_run.endInclusive != 31) {
						z = _run.endInclusive + 1;
						_run = self.getAdvancedRunInfo(index, z);
						list.appendAssumeCapacity(.{.info = _run, .isOld = true});
					}
					break;
				}
				z = run.endInclusive + 1;
			}
			if(!changedAnything) continue;

			// TODO: Combine consecutive runs before doing more stuff.
			var items2: [32]Entry2 = undefined;
			var listMerged: main.ListUnmanaged(Entry2) = .{.capacity = 32, .items = items2[0..0]};
			var previousRun: ?*Entry2 = null;
			for(list.items) |run| {
				if(previousRun) |prev| {
					if(run.info.attemptMerge(&prev.info)) {
						prev.isOld = prev.isOld and run.isOld;
					} else {
						previousRun = listMerged.addOneAssumeCapacity();
						previousRun.?.* = run;
					}
				} else {
					previousRun = listMerged.addOneAssumeCapacity();
					previousRun.?.* = run;
				}
			}
			var continuity: u31 = @intCast(self.continuity[index] & (@as(u32, 1) << listMerged.items[0].info.startInclusive)-1);
			var runIndex: u6 = @popCount(continuity);
			var lastRun: ?AdvancedRunInfo = null;
			for(listMerged.items) |run| {
				if(!run.isOld) {
					// Propagate to neighbors:
					for([4]u3{chunk.Neighbors.dirNegX, chunk.Neighbors.dirPosX, chunk.Neighbors.dirNegY, chunk.Neighbors.dirPosY}) |neighbor| {
						if(neighbor == entry.sourceDir and run.info.startInclusive >= entry.runInfo.startInclusive and run.info.endInclusive <= entry.runInfo.endInclusive) continue;
						const nx = entry.x + chunk.Neighbors.relX[neighbor];
						const ny = entry.y + chunk.Neighbors.relY[neighbor];
						var result: Entry = .{.x = @intCast(nx & chunk.chunkMask), .y = @intCast(ny & chunk.chunkMask), .runInfo = run.info, .sourceDir = neighbor ^ 1};
						result.runInfo.info.runValue -|= 8;
						if(result.runInfo.info.runValue == 0) continue;
						if(nx < 0 or nx >= chunk.chunkSize or ny < 0 or ny >= chunk.chunkSize) {
							neighborLists[neighbor].append(main.stackAllocator, result);
							continue;
						}
						lightQueue.enqueue(result);
					}
					if(run.info.endInclusive >= entry.runInfo.endInclusive) {
						lastRun = run.info;
					}
				}
				continuity |= @intCast((@as(u32, 1) << @intCast(run.info.startInclusive)) >> 1);
				self.runPtr(index, @intCast(runIndex)).* = run.info.info;
				runIndex += 1;
			}
			// Propagate above and below:
			if(!listMerged.items[0].isOld) {
				const run = listMerged.items[0].info;
				if(entry.sourceDir != chunk.Neighbors.dirDown) {
					const val = run.getValue(run.startInclusive) -| 8;
					const pos: u5 = run.startInclusive -% 1;
					if(val != 0) {
						const result: Entry = .{
							.x = entry.x, .y = entry.y,
							.runInfo = .{.startInclusive = pos, .endInclusive = pos, .info = .{.blockAbsorption = undefined, .runSlope = 0, .runValue = val, .isIncreasing = true}},
							.sourceDir = chunk.Neighbors.dirUp,
						};
						if(run.startInclusive == 0) {
							neighborLists[chunk.Neighbors.dirDown].append(main.stackAllocator, result);
						} else {
							lightQueue.enqueue(result);
						}
					}
				}
			}
			if(lastRun) |run| {
				if(entry.sourceDir != chunk.Neighbors.dirUp) {
					const val = run.getValue(run.endInclusive) -| 8;
					const pos: u5 = run.endInclusive +% 1;
					if(val != 0) {
						const result: Entry = .{
							.x = entry.x, .y = entry.y,
							.runInfo = .{.startInclusive = pos, .endInclusive = pos, .info = .{.blockAbsorption = undefined, .runSlope = 0, .runValue = val, .isIncreasing = false}},
							.sourceDir = chunk.Neighbors.dirDown,
						};
						if(run.startInclusive == 0) {
							neighborLists[chunk.Neighbors.dirUp].append(main.stackAllocator, result);
						} else {
							lightQueue.enqueue(result);
						}
					}
				}
			}
			self.continuity[index] = continuity;
		}
		self.mutex.unlock();
		if(mesh_storage.getMeshAndIncreaseRefCount(self.ch.pos)) |mesh| {
			mesh.scheduleLightRefreshAndDecreaseRefCount();
		}

		for(0..6) |neighbor| {
			if(neighborLists[neighbor].items.len == 0) continue;
			const neighborMesh = mesh_storage.getNeighborAndIncreaseRefCount(self.ch.pos, self.ch.pos.voxelSize, @intCast(neighbor)) orelse continue;
			defer neighborMesh.decreaseRefCount();
			neighborMesh.lightingData[@intFromEnum(self.channel)].propagateFromNeighbor(lightQueue, neighborLists[neighbor].items);
		}
	}

	fn propagateDestructive(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry), constructiveEntries: *main.ListUnmanaged(ChunkEntries), isFirstBlock: bool) main.ListUnmanaged(PositionEntry) {
		_ = self;
		_ = lightQueue;
		_ = constructiveEntries;
		_ = isFirstBlock;
//		var neighborLists: [6]main.ListUnmanaged(Entry) = .{.{}} ** 6;
//		var constructiveList: main.ListUnmanaged(PositionEntry) = .{};
//		defer {
//			for(&neighborLists) |*list| {
//				list.deinit(main.stackAllocator);
//			}
//		}
//		var isFirstIteration: bool = isFirstBlock;
//
//		self.mutex.lock();
//		while(lightQueue.dequeue()) |entry| {
//			const index = chunk.getIndex(entry.x, entry.y, entry.z);
//			if(entry.value != self.data[index].load(.Unordered)) {
//				if(self.data[index].load(.Unordered) != 0) {
//					constructiveList.append(main.stackAllocator, .{.x = entry.x, .y = entry.y, .z = entry.z});
//				}
//				continue;
//			}
//			if(entry.value == 0 and !isFirstIteration) continue;
//			isFirstIteration = false;
//			self.data[index].store(0, .Unordered);
//			for(chunk.Neighbors.iterable) |neighbor| {
//				if(neighbor == entry.sourceDir) continue;
//				const nx = entry.x + chunk.Neighbors.relX[neighbor];
//				const ny = entry.y + chunk.Neighbors.relY[neighbor];
//				const nz = entry.z + chunk.Neighbors.relZ[neighbor];
//				var result: Entry = .{.x = @intCast(nx & chunk.chunkMask), .y = @intCast(ny & chunk.chunkMask), .z = @intCast(nz & chunk.chunkMask), .value = entry.value, .sourceDir = neighbor ^ 1};
//				if(!self.channel.isSun() or neighbor != chunk.Neighbors.dirDown or result.value != 255) {
//					result.value -|= 8*|@as(u8, @intCast(self.ch.pos.voxelSize));
//				}
//				if(nx < 0 or nx >= chunk.chunkSize or ny < 0 or ny >= chunk.chunkSize or nz < 0 or nz >= chunk.chunkSize) {
//					neighborLists[neighbor].append(main.stackAllocator, result);
//					continue;
//				}
//				const neighborIndex = chunk.getIndex(nx, ny, nz);
//				var absorption: u8 = @intCast(self.ch.blocks[neighborIndex].absorption() >> self.channel.shift() & 255);
//				absorption *|= @intCast(self.ch.pos.voxelSize);
//				result.value -|= absorption;
//				lightQueue.enqueue(result);
//			}
//		}
//		self.mutex.unlock();
//		if(mesh_storage.getMeshAndIncreaseRefCount(self.ch.pos)) |mesh| {
//			mesh.scheduleLightRefreshAndDecreaseRefCount();
//		}
//
//		for(0..6) |neighbor| {
//			if(neighborLists[neighbor].items.len == 0) continue;
//			const neighborMesh = mesh_storage.getNeighborAndIncreaseRefCount(self.ch.pos, self.ch.pos.voxelSize, @intCast(neighbor)) orelse continue;
//			constructiveEntries.append(main.stackAllocator, .{
//				.mesh = neighborMesh,
//				.entries = neighborMesh.lightingData[@intFromEnum(self.channel)].propagateDestructiveFromNeighbor(lightQueue, neighborLists[neighbor].items, constructiveEntries),
//			});
//		}
//
//		return constructiveList;
	}

	fn propagateFromNeighbor(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry), lights: []const Entry) void {
		std.debug.assert(lightQueue.startIndex == lightQueue.endIndex);
		for(lights) |entry| {
			lightQueue.enqueue(entry);
		}
		self.propagateDirect(lightQueue);
	}

	fn propagateDestructiveFromNeighbor(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry), lights: []const Entry, constructiveEntries: *main.ListUnmanaged(ChunkEntries)) main.ListUnmanaged(PositionEntry) {
		_ = self;
		_ = lightQueue;
		_ = lights;
		_ = constructiveEntries;
//		std.debug.assert(lightQueue.startIndex == lightQueue.endIndex);
//		for(lights) |entry| {
//			const index = chunk.getIndex(entry.x, entry.y, entry.z);
//			var result = entry;
//			var absorption: u8 = @intCast(self.ch.blocks[index].absorption() >> self.channel.shift() & 255);
//			absorption *|= @intCast(self.ch.pos.voxelSize);
//			result.value -|= absorption;
//			lightQueue.enqueue(result);
//		}
//		return self.propagateDestructive(lightQueue, constructiveEntries, false);
	}

	pub fn propagateLights(self: *ChannelChunk, lights: []const [3]u8, comptime checkNeighbors: bool) void {
		_ = checkNeighbors;
		if(self.channel.isSun()) return; // TODO!
		var lightQueue = main.utils.CircularBufferQueue(Entry).init(main.stackAllocator, 1 << 12);
		defer lightQueue.deinit();
		for(lights) |pos| {
			const index = chunk.getIndex(pos[0], pos[1], pos[2]);
			lightQueue.enqueue(.{
				.x = @intCast(pos[0]), .y = @intCast(pos[1]),
				.runInfo = .{
					.startInclusive = @intCast(pos[2]), .endInclusive = @intCast(pos[2]),
					.info = .{.blockAbsorption = undefined, .runSlope = 0, .runValue = @intCast(self.ch.blocks[index].light() >> self.channel.shift() & 255), .isIncreasing = false},
				},
				.sourceDir = 6,
			});
		}
//		for(lights) |pos| {
//			const index = chunk.getIndex(pos[0], pos[1], pos[2]);
//			if(self.channel.isSun()) {
//				lightQueue.enqueue(.{.x = @intCast(pos[0]), .y = @intCast(pos[1]), .z = @intCast(pos[2]), .value = 255, .sourceDir = 6});
//			} else {
//				lightQueue.enqueue(.{.x = @intCast(pos[0]), .y = @intCast(pos[1]), .z = @intCast(pos[2]), .value = @intCast(self.ch.blocks[index].light() >> self.channel.shift() & 255), .sourceDir = 6});
//			}
//		}
//		if(checkNeighbors) {
//			for(0..6) |neighbor| {
//				const x3: i32 = if(neighbor & 1 == 0) chunk.chunkMask else 0;
//				var x1: i32 = 0;
//				while(x1 < chunk.chunkSize): (x1 += 1) {
//					var x2: i32 = 0;
//					while(x2 < chunk.chunkSize): (x2 += 1) {
//						var x: i32 = undefined;
//						var y: i32 = undefined;
//						var z: i32 = undefined;
//						if(chunk.Neighbors.relX[neighbor] != 0) {
//							x = x3;
//							y = x1;
//							z = x2;
//						} else if(chunk.Neighbors.relY[neighbor] != 0) {
//							x = x1;
//							y = x3;
//							z = x2;
//						} else {
//							x = x2;
//							y = x1;
//							z = x3;
//						}
//						const otherX = x+%chunk.Neighbors.relX[neighbor] & chunk.chunkMask;
//						const otherY = y+%chunk.Neighbors.relY[neighbor] & chunk.chunkMask;
//						const otherZ = z+%chunk.Neighbors.relZ[neighbor] & chunk.chunkMask;
//						const neighborMesh = mesh_storage.getNeighborAndIncreaseRefCount(self.ch.pos, self.ch.pos.voxelSize, @intCast(neighbor)) orelse continue;
//						defer neighborMesh.decreaseRefCount();
//						const neighborLightChunk = neighborMesh.lightingData[@intFromEnum(self.channel)];
//						const index = chunk.getIndex(x, y, z);
//						const neighborIndex = chunk.getIndex(otherX, otherY, otherZ);
//						var value: u8 = neighborLightChunk.data[neighborIndex].load(.Unordered);
//						if(!self.channel.isSun() or neighbor != chunk.Neighbors.dirUp or value != 255) {
//							value -|= 8*|@as(u8, @intCast(self.ch.pos.voxelSize));
//						}
//						if(value == 0) continue;
//						var absorption: u8 = @intCast(self.ch.blocks[index].absorption() >> self.channel.shift() & 255);
//						absorption *|= @intCast(self.ch.pos.voxelSize);
//						value -|= absorption;
//						if(value != 0) lightQueue.enqueue(.{.x = @intCast(x), .y = @intCast(y), .z = @intCast(z), .value = value, .sourceDir = @intCast(neighbor)});
//					}
//				}
//			}
//		}
		self.propagateDirect(&lightQueue);
	}

	pub fn propagateLightsDestructive(self: *ChannelChunk, lights: []const [3]u8) void {
		_ = self;
		_ = lights;
//		var lightQueue = main.utils.CircularBufferQueue(Entry).init(main.stackAllocator, 1 << 12);
//		defer lightQueue.deinit();
//		for(lights) |pos| {
//			const index = chunk.getIndex(pos[0], pos[1], pos[2]);
//			lightQueue.enqueue(.{.x = @intCast(pos[0]), .y = @intCast(pos[1]), .z = @intCast(pos[2]), .value = self.data[index].load(.Unordered), .sourceDir = 6});
//		}
//		var constructiveEntries: main.ListUnmanaged(ChunkEntries) = .{};
//		defer constructiveEntries.deinit(main.stackAllocator);
//		constructiveEntries.append(main.stackAllocator, .{
//			.mesh = null,
//			.entries = self.propagateDestructive(&lightQueue, &constructiveEntries, true),
//		});
//		for(constructiveEntries.items) |entries| {
//			const mesh = entries.mesh;
//			defer if(mesh) |_mesh| _mesh.decreaseRefCount();
//			var entryList = entries.entries;
//			defer entryList.deinit(main.stackAllocator);
//			const channelChunk = if(mesh) |_mesh| _mesh.lightingData[@intFromEnum(self.channel)] else self;
//			for(entryList.items) |entry| {
//				const index = chunk.getIndex(entry.x, entry.y, entry.z);
//				const value = channelChunk.data[index].load(.Unordered);
//				if(value == 0) continue;
//				channelChunk.data[index].store(0, .Unordered);
//				lightQueue.enqueue(.{.x = entry.x, .y = entry.y, .z = entry.z, .value = value, .sourceDir = 6});
//			}
//			channelChunk.propagateDirect(&lightQueue);
//		}
	}
};
