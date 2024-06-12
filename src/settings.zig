const std = @import("std");

const JsonElement = @import("json.zig").JsonElement;
const main = @import("main.zig");


pub var guiScale: ?f32 = null;


pub fn init() void {
	const json: JsonElement = main.files.readToJson(main.stackAllocator, "settings.json") catch |err| blk: {
		if(err != error.FileNotFound) {
			std.log.err("Could not read settings file: {s}", .{@errorName(err)});
		}
		break :blk .JsonNull;
	};
	defer json.free(main.stackAllocator);

	inline for(@typeInfo(@This()).Struct.decls) |decl| {
		const is_const = @typeInfo(@TypeOf(&@field(@This(), decl.name))).Pointer.is_const; // Sadly there is no direct way to check if a declaration is const.
		if(!is_const) {
			const declType = @TypeOf(@field(@This(), decl.name));
			if(@typeInfo(declType) == .Struct) {
				@compileError("Not implemented yet.");
			}
			@field(@This(), decl.name) = json.get(declType, decl.name, @field(@This(), decl.name));
			if(@typeInfo(declType) == .Pointer) {
				if(@typeInfo(declType).Pointer.size == .Slice) {
					@field(@This(), decl.name) = main.globalAllocator.dupe(@typeInfo(declType).Pointer.child, @field(@This(), decl.name));
				} else {
					@compileError("Not implemented yet.");
				}
			}
		}
	}

	// keyboard settings:
	const keyboard = json.getChild("keyboard");
	for(&main.KeyBoard.keys) |*key| {
		const keyJson = keyboard.getChild(key.name);
		key.key = keyJson.get(c_int, "key", key.key);
		key.mouseButton = keyJson.get(c_int, "mouseButton", key.mouseButton);
		key.scancode = keyJson.get(c_int, "scancode", key.scancode);
	}
}

pub fn deinit() void {
	const jsonObject = JsonElement.initObject(main.stackAllocator);
	defer jsonObject.free(main.stackAllocator);

	inline for(@typeInfo(@This()).Struct.decls) |decl| {
		const is_const = @typeInfo(@TypeOf(&@field(@This(), decl.name))).Pointer.is_const; // Sadly there is no direct way to check if a declaration is const.
		if(!is_const) {
			const declType = @TypeOf(@field(@This(), decl.name));
			if(@typeInfo(declType) == .Struct) {
				@compileError("Not implemented yet.");
			}
			if(declType == []const u8) {
				jsonObject.putOwnedString(decl.name, @field(@This(), decl.name));
			} else {
				jsonObject.put(decl.name, @field(@This(), decl.name));
			}
			if(@typeInfo(declType) == .Pointer) {
				if(@typeInfo(declType).Pointer.size == .Slice) {
					main.globalAllocator.free(@field(@This(), decl.name));
				} else {
					@compileError("Not implemented yet.");
				}
			}
		}
	}

	// keyboard settings:
	const keyboard = JsonElement.initObject(main.stackAllocator);
	for(&main.KeyBoard.keys) |key| {
		const keyJson = JsonElement.initObject(main.stackAllocator);
		keyJson.put("key", key.key);
		keyJson.put("mouseButton", key.mouseButton);
		keyJson.put("scancode", key.scancode);
		keyboard.put(key.name, keyJson);
	}
	jsonObject.put("keyboard", keyboard);

	// Write to file:
	main.files.writeJson("settings.json", jsonObject) catch |err| {
		std.log.err("Couldn't write settings to file: {s}", .{@errorName(err)});
	};
}
