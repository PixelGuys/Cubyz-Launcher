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

var memoryPool1: std.heap.MemoryPool(ChannelChunk) = undefined;
var memoryPoolMutex1: std.Thread.Mutex = .{};
var memoryPool2: std.heap.MemoryPool([chunk.chunkSize*chunk.chunkSize]DataEntry) = undefined;
var memoryPoolMutex2: std.Thread.Mutex = .{};

pub fn init() void {
	memoryPool1 = std.heap.MemoryPool(ChannelChunk).init(main.globalAllocator.allocator);
	memoryPool2 = std.heap.MemoryPool([chunk.chunkSize*chunk.chunkSize]DataEntry).init(main.globalAllocator.allocator);
}

pub fn deinit() void {
	memoryPool1.deinit();
	memoryPool2.deinit();
}

const DataEntry = struct{value: u8, nativeAbsorption: u8, runAbsorption: u8, position: u8};

pub const ChannelChunk = struct {
	data: [chunk.chunkSize]*align(8)[chunk.chunkSize*chunk.chunkSize]DataEntry,
	continuity: [chunk.chunkSize*chunk.chunkSize]u31,
	height: usize,

	mutex: std.Thread.Mutex,
	ch: *chunk.Chunk,
	channel: Channel,

	pub fn init(ch: *chunk.Chunk, channel: Channel) *ChannelChunk {
		memoryPoolMutex1.lock();
		const self = memoryPool1.create() catch unreachable;
		memoryPoolMutex1.unlock();
		self.mutex = .{};
		self.ch = ch;
		self.channel = channel;
		self.height = 1;
		memoryPoolMutex2.lock();
		self.data[0] = memoryPool2.create() catch unreachable;
		memoryPoolMutex2.unlock();
		for(0..32) |x| {
			for(0..32) |y| {
				var continuity: u31 = 0;
				var lastAbsorption: u8 = @intCast(ch.getBlock(@intCast(x), @intCast(y), 0).absorption() >> channel.shift() & 0xff);
				for(1..32) |z| {
					const newAbsorption: u8 = @intCast(ch.getBlock(@intCast(x), @intCast(y), @intCast(z)).absorption() >> channel.shift() & 0xff);
					if(newAbsorption != lastAbsorption) {
						self.setEntry(x, y, .{.value = 0, .nativeAbsorption = lastAbsorption, .runAbsorption = 0, .position = 0}, @popCount(continuity));

						lastAbsorption = newAbsorption;
						continuity |= @as(u31, 1) << @intCast(y-1);
					}
				}
				self.setEntry(x, y, .{.value = 0, .nativeAbsorption = lastAbsorption, .runAbsorption = 0, .position = 0}, @popCount(continuity));

				self.continuity[x*32 + y] = continuity;
			}
		}
		return self;
	}

	pub fn deinit(self: *ChannelChunk) void {
		memoryPoolMutex1.lock();
		memoryPool1.destroy(self);
		memoryPoolMutex1.unlock();
		memoryPoolMutex2.lock();
		for(0..self.height) |i| {
			memoryPool2.destroy(self.data[i]);
		}
		memoryPoolMutex2.unlock();
	}

	fn expand(self: *ChannelChunk) void {
		memoryPoolMutex2.lock();
		self.data[self.height] = memoryPool2.create() catch unreachable;
		memoryPoolMutex2.unlock();
		self.height += 1;
	}

	fn setEntry(self: *ChannelChunk, x: usize, y: usize, entry: DataEntry, insertionIndex: usize) void {
		if(insertionIndex >= self.height) {
			self.expand();
		}
		self.data[insertionIndex][x*32 + y] = entry;
	}

	const Entry = struct {
		x: u5,
		y: u5,
		startZ: u5,
		endZ: u5,
		value: u8,
		position: u8,
		absorption: u8,
		sourceDir: u3,
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

	fn getIndex(x: usize, y: usize) usize {
		return x*32 + y;
	}

	fn getIndexZ(self: *const ChannelChunk, index: usize, z: u5) u5 {
		const mask: u31 = @intCast((@as(u32, 1) << z)-1);
		return @popCount(self.continuity[index] & mask);
	}

	fn getStartAndEndZ(self: *const ChannelChunk, index: usize, z: u5) struct{u5, u5} {
		const mask: u31 = @intCast((@as(u32, 1) << z)-1);
		const continuity: u31 = self.continuity[index];
		// Start z is the position of the most significant bit smaller than z:
		const startZ: u5 = 31 - @clz(continuity & mask);
		// End z is the position of the least significant bit larger than or equal to z:
		const endZ: u5 = 1 + @ctz(continuity & ~mask);

		return .{startZ, endZ};
	}

	pub fn getValue(self: *const ChannelChunk, x: i32, y: i32, z: i32) u8 {
		const index = getIndex(@intCast(x), @intCast(y));
		const indexZ = self.getIndexZ(index, @intCast(z));
		const deltaZ: u8 = @intCast(@abs(@as(i32, z) - @as(i32, self.data[indexZ][index].position)));
		const absorption = deltaZ*|self.data[indexZ][index].runAbsorption;

		return self.data[indexZ][index].value -| absorption;
	}

	fn getRunInfoAndPtr(self: *const ChannelChunk, x: u5, y: u5, z: u5) struct{Entry, *DataEntry} {
		const index = getIndex(@intCast(x), @intCast(y));
		const indexZ = self.getIndexZ(index, z);
		const startZ, const endZ = self.getStartAndEndZ(index, z);
		return .{
			.{
				.x = x,
				.y = y,
				.startZ = startZ,
				.endZ = endZ,
				.value = self.data[indexZ][index].value,
				.position = self.data[indexZ][index].position,
				.absorption = self.data[indexZ][index].runAbsorption,
				.sourceDir = 6,
			}, &self.data[indexY][index],
		};
	}

	fn getValueAtPoint(entry: Entry, z: u5) u8 {
		const deltaZ: u8 = @intCast(@abs(@as(i32, z) - @as(i32, entry.position)));
		const absorption = deltaZ*|entry.absorption;
		return entry.value -| absorption;
	}

	fn findLineIntersection(lowerPos: u5, lowerAbsorption: u32, lowerValue: u32, upperPos: u5, upperAbsorption: u32, upperValue: u32) u5 {
		// Line 1: lowerValue - lowerAbsorption·(pos - lowerPos)
		// Line 2: upperValue - upperAbsorption·(upperPos - pos)
		// Line 1 = Line 2, solve for pos:
		// lowerValue - lowerAbsorption·(pos - lowerPos) = upperValue - upperAbsorption·(upperPos - pos)
		// lowerValue - lowerAbsorption·pos + lowerAbsorption·lowerPos = upperValue - upperAbsorption·upperPos + upperAbsorption·pos
		// lowerValue - upperValue + lowerAbsorption·lowerPos + upperAbsorption·upperPos = (lowerAbsorption + upperAbsorption)·pos
		// pos = (lowerValue - upperValue + lowerAbsorption·lowerPos + upperAbsorption·upperPos)/(lowerAbsorption + upperAbsorption)
		const pos = (lowerValue + lowerAbsorption*lowerPos + upperAbsorption*upperPos -| upperValue)/(lowerAbsorption + upperAbsorption);
		return @min(upperPos, @max(lowerPos, pos));
	}

	fn computeRuns(target: Entry, targetPtr: *DataEntry, _other: Entry) [3]?Entry {
		// Clamp the other entry to the target area:
		var other = _other;
		if(other.startZ < target.startZ) {
			if(other.position < target.startZ) {
				other.value -|= other.absorption*|(target.startZ - other.position);
				other.position = target.startZ;
			}
			other.startZ = target.startZ;
		}
		if(other.endZ > target.endZ) {
			if(other.position >= target.startZ) {
				other.value -|= other.absorption*|(other.position - target.EndZ + 1);
				other.position = target.endZ - 1;
			}
			other.endZ = target.endZ;
		}
		// Check the center first:
		const centerPos = other.position;
		const targetVal = getValueAtPoint(target, centerPos);
		if(centerPos.value > targetVal) {

		} else if(other.absorption >= target.absorption) {
			// Nothing:
			return ...;
		} else { // There are some heavy edge cases here.

		}
		var centerTarget = 
		var result: [3]?Entry = .{null, null, null};
		// Check the center(full coverage check):
		{
			const centerPos = target.position;
			if(targetPtr.nativeAbsorption != other.absorption and centerPos < other.startZ) {
				const edgeVal = getValueAtPoint(other, other.startZ);
				const otherValue = edgeVal -| (other.startZ - centerPos)*|targetPtr.nativeAbsorption;
				if(otherValue > target.value) { // Full coverage
					resut
					result[2] = other;
					return result;
				}
			} else if(targetPtr.nativeAbsorption != other.absorption and centerPos >= other.endY) {
				const edgeVal = getValueAtPoint(other, other.endZ - 1);
				const otherValue = edgeVal -| (centerPos - (other.endZ - 1))*|targetPtr.nativeAbsorption;
				if(otherValue > target.value) { // Full coverage
					resut
					result[2] = other;
					return result;
				}
			} else {
				const otherValue = getValueAtPoint(other, centerPos);
				if(otherValue > target.value) { // Full coverage
					result[2] = other;
					return result;
				}
			}
		}
		// Check bottom:
		{
			const bottom = @max(target.startZ, other.startZ);
			const targetValue = getValueAtPoint(target, bottom);
			const otherValue = getValueAtPoint(other, bottom);
			if(otherValue > targetValue) {
				const intersection = findLineIntersection(bottom, other.absorption, otherValue, target.position, target.absorption, target.value);
				result[0] = .{
					.x = target.x,
					.y = target.y,
					.startZ = target.startZ,
//		x: u5,
//		y: u5,
//		startZ: u5,
//		endZ: u5,
//		value: u8,
//		position: u8,
//		absorption: u8,
//		sourceDir: u3,
				}
			}
		}
	}
// TODO
	fn propagateDirect(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry)) void {
		var neighborLists: [6]main.ListUnmanaged(Entry) = .{.{}} ** 6;
		defer {
			for(&neighborLists) |*list| {
				list.deinit(main.stackAllocator);
			}
		}

		self.mutex.lock();
		while(lightQueue.dequeue()) |entry| {
			const index = getIndex(entry.x, entry.y);
			var z = entry.startZ;
			while(z < entry.endZ) {
				const runInfo, const runPtr = self.getRunInfoAndPtr(entry.x, entry.y, z);
				z = runInfo.endZ;
				var entryWithAbsorption = entry;
				entryWithAbsorption.value -= runPtr.nativeAbsorption;
				entryWithAbsorption.absorption = @min(entryWithAbsorption.absorption, runPtr.nativeAbsorption);

			}

			const index = chunk.getIndex(entry.x, entry.y, entry.z);
			if(entry.value <= self.data[index].load(.Unordered)) continue;
			self.data[index].store(entry.value, .Unordered);
			for(chunk.Neighbors.iterable) |neighbor| {
				if(neighbor == entry.sourceDir) continue;
				const nx = entry.x + chunk.Neighbors.relX[neighbor];
				const ny = entry.y + chunk.Neighbors.relY[neighbor];
				const nz = entry.z + chunk.Neighbors.relZ[neighbor];
				var result: Entry = .{.x = @intCast(nx & chunk.chunkMask), .y = @intCast(ny & chunk.chunkMask), .z = @intCast(nz & chunk.chunkMask), .value = entry.value, .sourceDir = neighbor ^ 1};
				if(!self.channel.isSun() or neighbor != chunk.Neighbors.dirDown or result.value != 255) {
					result.value -|= 8*|@as(u8, @intCast(self.ch.pos.voxelSize));
				}
				if(result.value == 0) continue;
				if(nx < 0 or nx >= chunk.chunkSize or ny < 0 or ny >= chunk.chunkSize or nz < 0 or nz >= chunk.chunkSize) {
					neighborLists[neighbor].append(main.stackAllocator, result);
					continue;
				}
				const neighborIndex = chunk.getIndex(nx, ny, nz);
				var absorption: u8 = @intCast(self.ch.blocks[neighborIndex].absorption() >> self.channel.shift() & 255);
				absorption *|= @intCast(self.ch.pos.voxelSize);
				result.value -|= absorption;
				if(result.value != 0) lightQueue.enqueue(result);
			}
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
// TODO
	fn propagateDestructive(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry), constructiveEntries: *main.ListUnmanaged(ChunkEntries), isFirstBlock: bool) main.ListUnmanaged(PositionEntry) {
		var neighborLists: [6]main.ListUnmanaged(Entry) = .{.{}} ** 6;
		var constructiveList: main.ListUnmanaged(PositionEntry) = .{};
		defer {
			for(&neighborLists) |*list| {
				list.deinit(main.stackAllocator);
			}
		}
		var isFirstIteration: bool = isFirstBlock;

		self.mutex.lock();
		while(lightQueue.dequeue()) |entry| {
			const index = chunk.getIndex(entry.x, entry.y, entry.z);
			if(entry.value != self.data[index].load(.Unordered)) {
				if(self.data[index].load(.Unordered) != 0) {
					constructiveList.append(main.stackAllocator, .{.x = entry.x, .y = entry.y, .z = entry.z});
				}
				continue;
			}
			if(entry.value == 0 and !isFirstIteration) continue;
			isFirstIteration = false;
			self.data[index].store(0, .Unordered);
			for(chunk.Neighbors.iterable) |neighbor| {
				if(neighbor == entry.sourceDir) continue;
				const nx = entry.x + chunk.Neighbors.relX[neighbor];
				const ny = entry.y + chunk.Neighbors.relY[neighbor];
				const nz = entry.z + chunk.Neighbors.relZ[neighbor];
				var result: Entry = .{.x = @intCast(nx & chunk.chunkMask), .y = @intCast(ny & chunk.chunkMask), .z = @intCast(nz & chunk.chunkMask), .value = entry.value, .sourceDir = neighbor ^ 1};
				if(!self.channel.isSun() or neighbor != chunk.Neighbors.dirDown or result.value != 255) {
					result.value -|= 8*|@as(u8, @intCast(self.ch.pos.voxelSize));
				}
				if(nx < 0 or nx >= chunk.chunkSize or ny < 0 or ny >= chunk.chunkSize or nz < 0 or nz >= chunk.chunkSize) {
					neighborLists[neighbor].append(main.stackAllocator, result);
					continue;
				}
				const neighborIndex = chunk.getIndex(nx, ny, nz);
				var absorption: u8 = @intCast(self.ch.blocks[neighborIndex].absorption() >> self.channel.shift() & 255);
				absorption *|= @intCast(self.ch.pos.voxelSize);
				result.value -|= absorption;
				lightQueue.enqueue(result);
			}
		}
		self.mutex.unlock();
		if(mesh_storage.getMeshAndIncreaseRefCount(self.ch.pos)) |mesh| {
			mesh.scheduleLightRefreshAndDecreaseRefCount();
		}

		for(0..6) |neighbor| {
			if(neighborLists[neighbor].items.len == 0) continue;
			const neighborMesh = mesh_storage.getNeighborAndIncreaseRefCount(self.ch.pos, self.ch.pos.voxelSize, @intCast(neighbor)) orelse continue;
			constructiveEntries.append(main.stackAllocator, .{
				.mesh = neighborMesh,
				.entries = neighborMesh.lightingData[@intFromEnum(self.channel)].propagateDestructiveFromNeighbor(lightQueue, neighborLists[neighbor].items, constructiveEntries),
			});
		}

		return constructiveList;
	}
// TODO
	fn propagateFromNeighbor(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry), lights: []const Entry) void {
		std.debug.assert(lightQueue.startIndex == lightQueue.endIndex);
		for(lights) |entry| {
			const index = chunk.getIndex(entry.x, entry.y, entry.z);
			var result = entry;
			var absorption: u8 = @intCast(self.ch.blocks[index].absorption() >> self.channel.shift() & 255);
			absorption *|= @intCast(self.ch.pos.voxelSize);
			result.value -|= absorption;
			if(result.value != 0) lightQueue.enqueue(result);
		}
		self.propagateDirect(lightQueue);
	}
// TODO
	fn propagateDestructiveFromNeighbor(self: *ChannelChunk, lightQueue: *main.utils.CircularBufferQueue(Entry), lights: []const Entry, constructiveEntries: *main.ListUnmanaged(ChunkEntries)) main.ListUnmanaged(PositionEntry) {
		std.debug.assert(lightQueue.startIndex == lightQueue.endIndex);
		for(lights) |entry| {
			const index = chunk.getIndex(entry.x, entry.y, entry.z);
			var result = entry;
			var absorption: u8 = @intCast(self.ch.blocks[index].absorption() >> self.channel.shift() & 255);
			absorption *|= @intCast(self.ch.pos.voxelSize);
			result.value -|= absorption;
			lightQueue.enqueue(result);
		}
		return self.propagateDestructive(lightQueue, constructiveEntries, false);
	}
// TODO
	pub fn propagateLights(self: *ChannelChunk, lights: []const [3]u8, comptime checkNeighbors: bool) void {
		var lightQueue = main.utils.CircularBufferQueue(Entry).init(main.stackAllocator, 1 << 12);
		defer lightQueue.deinit();
		for(lights) |pos| {
			const index = chunk.getIndex(pos[0], pos[1], pos[2]);
			if(self.channel.isSun()) {
				lightQueue.enqueue(.{
					.x = @intCast(pos[0]),
					.y = @intCast(pos[1]),
					.startY = @intCast(pos[2]),
					.height = 1,
					.position = @intCast(pos[2]),
					.absorption = 0,
					.value = 255,
					.sourceDir = 6,
				});
			} else {
				lightQueue.enqueue(.{
					.x = @intCast(pos[0]),
					.y = @intCast(pos[1]),
					.startZ = @intCast(pos[2]),
					.height = 1,
					.position = @intCast(pos[2]),
					.absorption = 0,
					.value = @intCast(self.ch.blocks[index].light() >> self.channel.shift() & 255),
					.sourceDir = 6,
				});
			}
		}
		if(checkNeighbors) {
			for(0..6) |neighbor| {
				const x3: i32 = if(neighbor & 1 == 0) chunk.chunkMask else 0;
				var x1: i32 = 0;
				while(x1 < chunk.chunkSize): (x1 += 1) {
					var x2: i32 = 0;
					while(x2 < chunk.chunkSize): (x2 += 1) {
						var x: i32 = undefined;
						var y: i32 = undefined;
						var z: i32 = undefined;
						if(chunk.Neighbors.relX[neighbor] != 0) {
							x = x3;
							y = x1;
							z = x2;
						} else if(chunk.Neighbors.relY[neighbor] != 0) {
							x = x1;
							y = x3;
							z = x2;
						} else {
							x = x2;
							y = x1;
							z = x3;
						}
						const otherX = x+%chunk.Neighbors.relX[neighbor] & chunk.chunkMask;
						const otherY = y+%chunk.Neighbors.relY[neighbor] & chunk.chunkMask;
						const otherZ = z+%chunk.Neighbors.relZ[neighbor] & chunk.chunkMask;
						const neighborMesh = mesh_storage.getNeighborAndIncreaseRefCount(self.ch.pos, self.ch.pos.voxelSize, @intCast(neighbor)) orelse continue;
						defer neighborMesh.decreaseRefCount();
						const neighborLightChunk = neighborMesh.lightingData[@intFromEnum(self.channel)];
						const index = chunk.getIndex(x, y, z);
						const neighborIndex = chunk.getIndex(otherX, otherY, otherZ);
						var value: u8 = neighborLightChunk.data[neighborIndex].load(.Unordered);
						if(!self.channel.isSun() or neighbor != chunk.Neighbors.dirUp or value != 255) {
							value -|= 8*|@as(u8, @intCast(self.ch.pos.voxelSize));
						}
						if(value == 0) continue;
						var absorption: u8 = @intCast(self.ch.blocks[index].absorption() >> self.channel.shift() & 255);
						absorption *|= @intCast(self.ch.pos.voxelSize);
						value -|= absorption;
						if(value != 0) lightQueue.enqueue(.{.x = @intCast(x), .y = @intCast(y), .z = @intCast(z), .value = value, .sourceDir = @intCast(neighbor)});
					}
				}
			}
		}
		self.propagateDirect(&lightQueue);
	}
// TODO
	pub fn propagateLightsDestructive(self: *ChannelChunk, lights: []const [3]u8) void {
		var lightQueue = main.utils.CircularBufferQueue(Entry).init(main.stackAllocator, 1 << 12);
		defer lightQueue.deinit();
		for(lights) |pos| {
			lightQueue.enqueue(.{
				.x = @intCast(pos[0]),
				.y = @intCast(pos[1]),
				.startY = @intCast(pos[2]),
				.height = 1,
				.position = @intCast(pos[2]),
				.absorption = 0,
				.value = self.getValue(pos[0], pos[1], pos[2]),
				.sourceDir = 6,
			});
		}
		var constructiveEntries: main.ListUnmanaged(ChunkEntries) = .{};
		defer constructiveEntries.deinit(main.stackAllocator);
		constructiveEntries.append(main.stackAllocator, .{
			.mesh = null,
			.entries = self.propagateDestructive(&lightQueue, &constructiveEntries, true),
		});
		for(constructiveEntries.items) |entries| {
			const mesh = entries.mesh;
			defer if(mesh) |_mesh| _mesh.decreaseRefCount();
			var entryList = entries.entries;
			defer entryList.deinit(main.stackAllocator);
			const channelChunk = if(mesh) |_mesh| _mesh.lightingData[@intFromEnum(self.channel)] else self;
			for(entryList.items) |entry| {
				const data, const ref = self.getRunInfoAndPtr(entry.x, entry.y, entry.z);
				if(ref.value == 0) continue;
				ref.value = 0;
				lightQueue.enqueue(data);
			}
			channelChunk.propagateDirect(&lightQueue);
		}
	}
};
