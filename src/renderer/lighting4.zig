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

pub fn init() void {
	memoryPool = std.heap.MemoryPool(ChannelChunk).init(main.globalAllocator.allocator);
}

pub fn deinit() void {
	memoryPool.deinit();
}

const RunInfo = struct {
	blockAbsorption: u8,
	runSlope: u8,
	runValue: u8,
	isIncreasing: bool,
	runLength: u6,
};

const AdvancedRunInfo = struct {
	startInclusive: u5,
	info: RunInfo,

	fn getValue(self: AdvancedRunInfo, z: u5) u8 {
		if(self.info.isIncreasing) {
			const slope = self.info.runSlope;
			const value = self.info.runValue;
			return value -| (self.startInclusive + self.info.runLength - 1 - z)*|slope;
		} else {
			const slope = self.info.runSlope;
			const value = self.info.runValue;
			return value -| (z - self.startInclusive)*|slope;
		}
	}
};

fn getIndex(x: usize, y: usize) usize {
	return x*chunk.chunkSize + y;
}

pub const ChannelChunk = struct {
	runData: []RunInfo,
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
				var runInfo: RunInfo = .{.blockAbsorption = 0, .runSlope = 0, .runValue = 0, .isIncreasing = false, .runLength = 0};
				var runIndex: u5 = 0;
				var start: u5 = 0;
				for(0..chunk.chunkSize) |z| {
					const blockAbsorption: u8 = @intCast(ch.blocks[chunk.getIndex(@intCast(x), @intCast(y), @intCast(z))].absorption() >> self.channel.shift() & 0xff);
					//if(runInfo.blockAbsorption != blockAbsorption) {
						if(z != 0) {
							runInfo.runLength = @intCast(z - start);
							runInfo.runValue = 255 - runInfo.blockAbsorption; // TODO
							self.runPtr(index, runIndex).* = runInfo;
							runIndex += 1;
						}
						runInfo.blockAbsorption = blockAbsorption;
						start = @intCast(z);
					//}
				}
				runInfo.runLength = @intCast(@as(u6, 32) - start);
				runInfo.runValue = 255 - runInfo.blockAbsorption; // TODO
				self.runPtr(index, runIndex).* = runInfo;
			}
		}
		return self;
	}

	pub fn deinit(self: *ChannelChunk) void {
		main.globalAllocator.free(self.runData);
		memoryPoolMutex.lock();
		memoryPool.destroy(self);
		memoryPoolMutex.unlock();
	}

	fn runPtr(self: *ChannelChunk, index: usize, runIndex: u5) *RunInfo {
		while(runIndex >= self.maxRuns) { // Ensure capacity
			const oldRuns = self.runData;
			self.runData = main.globalAllocator.alloc(RunInfo, (self.maxRuns + 1)*chunk.chunkSize*chunk.chunkSize);
			for(0..chunk.chunkSize*chunk.chunkSize) |i| {
				@memcpy(self.runData[i*(self.maxRuns + 1)..][0..self.maxRuns], oldRuns[i*self.maxRuns..][0..self.maxRuns]);
			}
			self.maxRuns += 1;
			main.globalAllocator.free(oldRuns);
		}
		return &self.runData[index*self.maxRuns + runIndex];
	}

	fn getRunInfo(self: *const ChannelChunk, index: usize, runIndex: u5) RunInfo {
		std.debug.assert(runIndex < self.maxRuns);
		return self.runData[index*self.maxRuns + runIndex];
	}

	fn getAdvancedRunInfo(self: *const ChannelChunk, index: usize, z: u5) AdvancedRunInfo {
		var curZ: u5 = 0;
		for(0..self.maxRuns) |i| {
			const run = self.getRunInfo(index, @intCast(i));
			if(z < curZ + run.runLength) {
				return .{
					.startInclusive = curZ,
					.info = run,
				};
			}
			curZ += @intCast(run.runLength);
		}
		unreachable;
	}

	const Entry = struct {
		x: u5,
		y: u5,
		runInfo: AdvancedRunInfo,
	};

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

	fn propagateDirect(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry)) void {
		_ = self;
		_ = lightQueue;
//		var neighborLists: [6]main.ListUnmanaged(Entry) = .{.{}} ** 6;
//		defer {
//			for(&neighborLists) |*list| {
//				list.deinit(main.stackAllocator);
//			}
//		}
//
	//	self.mutex.lock();
	//	while (lightQueue.dequeue()) |entry| {
	//		const index = getIndex(entry.x, entry.y);
	//		var items: [32]AdvancedRunInfo = undefined;
	//		var list: main.ListUnmanaged(AdvancedRunInfo) = .{.capacity = 32, .items = &items[0..0]};
	//		var removedRuns: usize = 0;
	//		var continuity = self.continuity[index];
	//		var z: u5 = entry.runInfo.startInclusive;
	//		while(true) {
	//			const run = self.getAdvancedRunInfo(index, z);
	//			
	//		}
	//	}
//		self.mutex.lock();
//		while(lightQueue.dequeue()) |entry| {
//			const index = chunk.getIndex(entry.x, entry.y, entry.z);
//			if(entry.value <= self.data[index].load(.Unordered)) continue;
//			self.data[index].store(entry.value, .Unordered);
//			for(chunk.Neighbors.iterable) |neighbor| {
//				if(neighbor == entry.sourceDir) continue;
//				const nx = entry.x + chunk.Neighbors.relX[neighbor];
//				const ny = entry.y + chunk.Neighbors.relY[neighbor];
//				const nz = entry.z + chunk.Neighbors.relZ[neighbor];
//				var result: Entry = .{.x = @intCast(nx & chunk.chunkMask), .y = @intCast(ny & chunk.chunkMask), .z = @intCast(nz & chunk.chunkMask), .value = entry.value, .sourceDir = neighbor ^ 1};
//				if(!self.channel.isSun() or neighbor != chunk.Neighbors.dirDown or result.value != 255) {
//					result.value -|= 8*|@as(u8, @intCast(self.ch.pos.voxelSize));
//				}
//				if(result.value == 0) continue;
//				if(nx < 0 or nx >= chunk.chunkSize or ny < 0 or ny >= chunk.chunkSize or nz < 0 or nz >= chunk.chunkSize) {
//					neighborLists[neighbor].append(main.stackAllocator, result);
//					continue;
//				}
//				const neighborIndex = chunk.getIndex(nx, ny, nz);
//				var absorption: u8 = @intCast(self.ch.blocks[neighborIndex].absorption() >> self.channel.shift() & 255);
//				absorption *|= @intCast(self.ch.pos.voxelSize);
//				result.value -|= absorption;
//				if(result.value != 0) lightQueue.enqueue(result);
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
//			defer neighborMesh.decreaseRefCount();
//			neighborMesh.lightingData[@intFromEnum(self.channel)].propagateFromNeighbor(lightQueue, neighborLists[neighbor].items);
//		}
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
		_ = self;
		_ = lightQueue;
		_ = lights;
//		std.debug.assert(lightQueue.startIndex == lightQueue.endIndex);
//		for(lights) |entry| {
//			const index = chunk.getIndex(entry.x, entry.y, entry.z);
//			var result = entry;
//			var absorption: u8 = @intCast(self.ch.blocks[index].absorption() >> self.channel.shift() & 255);
//			absorption *|= @intCast(self.ch.pos.voxelSize);
//			result.value -|= absorption;
//			if(result.value != 0) lightQueue.enqueue(result);
//		}
//		self.propagateDirect(lightQueue);
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
		_ = self;
		_ = lights;
		_ = checkNeighbors;
//		var lightQueue = main.utils.CircularBufferQueue(Entry).init(main.stackAllocator, 1 << 12);
//		defer lightQueue.deinit();
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
//		self.propagateDirect(&lightQueue);
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
