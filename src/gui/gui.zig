const std = @import("std");

const main = @import("root");
const graphics = main.graphics;
const draw = graphics.draw;
const JsonElement = main.JsonElement;
const settings = main.settings;
const vec = main.vec;
const Vec2f = vec.Vec2f;
const List = main.List;

const NeverFailingAllocator = main.utils.NeverFailingAllocator;

const Button = @import("components/Button.zig");
const CheckBox = @import("components/CheckBox.zig");
const ScrollBar = @import("components/ScrollBar.zig");
const ContinuousSlider = @import("components/ContinuousSlider.zig");
const DiscreteSlider = @import("components/DiscreteSlider.zig");
const TextInput = @import("components/TextInput.zig");
pub const GuiComponent = @import("gui_component.zig").GuiComponent;
pub const GuiWindow = @import("GuiWindow.zig");

pub const windowlist = @import("windows/_windowlist.zig");

var windowList: List(*GuiWindow) = undefined;
var hudWindows: List(*GuiWindow) = undefined;
pub var openWindows: List(*GuiWindow) = undefined;
var selectedWindow: ?*GuiWindow = null;
pub var selectedTextInput: ?*TextInput = null;
var hoveredAWindow: bool = false;

pub var scale: f32 = undefined;

const GuiCommandQueue = struct {
	const Action = enum {
		open,
		close,
	};
	const Command = struct {
		window: *GuiWindow,
		action: Action,
	};

	var commands: List(Command) = undefined;
	var mutex: std.Thread.Mutex = .{};

	fn init() void {
		mutex.lock();
		defer mutex.unlock();
		commands = List(Command).init(main.globalAllocator);
	}

	fn deinit() void {
		mutex.lock();
		defer mutex.unlock();
		commands.deinit();
	}

	fn scheduleCommand(command: Command) void {
		mutex.lock();
		defer mutex.unlock();
		commands.append(command);
	}

	fn executeCommands() void {
		mutex.lock();
		defer mutex.unlock();
		for(commands.items) |command| {
			switch(command.action) {
				.open => {
					executeOpenWindowCommand(command.window);
				},
				.close => {
					executeCloseWindowCommand(command.window);
				}
			}
		}
		commands.clearRetainingCapacity();
	}

	fn executeOpenWindowCommand(window: *GuiWindow) void {
		main.utils.assertLocked(&mutex);
		defer updateWindowPositions();
		for(openWindows.items, 0..) |_openWindow, i| {
			if(_openWindow == window) {
				_ = openWindows.swapRemove(i);
				openWindows.appendAssumeCapacity(window);
				selectedWindow = null;
				return;
			}
		}
		openWindows.append(window);
		window.onOpenFn();
		selectedWindow = null;
	}

	fn executeCloseWindowCommand(window: *GuiWindow) void {
		main.utils.assertLocked(&mutex);
		defer updateWindowPositions();
		if(selectedWindow == window) {
			selectedWindow = null;
		}
		for(openWindows.items, 0..) |_openWindow, i| {
			if(_openWindow == window) {
				_ = openWindows.swapRemove(i);
				break;
			}
		}
		window.onCloseFn();
	}
};

pub const Callback = struct {
	callback: ?*const fn(usize) void = null,
	arg: usize = 0,

	pub fn run(self: Callback) void {
		if(self.callback) |callback| {
			callback(self.arg);
		}
	}
};

pub fn init() void {
	GuiCommandQueue.init();
	windowList = List(*GuiWindow).init(main.globalAllocator);
	hudWindows = List(*GuiWindow).init(main.globalAllocator);
	openWindows = List(*GuiWindow).init(main.globalAllocator);
	inline for(@typeInfo(windowlist).Struct.decls) |decl| {
		const windowStruct = @field(windowlist, decl.name);
		windowStruct.window.id = decl.name;
		addWindow(&windowStruct.window);
		if(@hasDecl(windowStruct, "init")) {
			windowStruct.init();
		}
		const functionNames = [_][]const u8{"render", "update", "updateSelected", "updateHovered", "onOpen", "onClose"};
		inline for(functionNames) |function| {
			if(@hasDecl(windowStruct, function)) {
				@field(windowStruct.window, function ++ "Fn") = &@field(windowStruct, function);
			}
		}
	}
	GuiWindow.__init();
	Button.__init();
	CheckBox.__init();
	ScrollBar.__init();
	ContinuousSlider.__init();
	DiscreteSlider.__init();
	TextInput.__init();
	load();
}

pub fn deinit() void {
	save();
	windowList.deinit();
	hudWindows.deinit();
	for(openWindows.items) |window| {
		window.onCloseFn();
	}
	openWindows.deinit();
	GuiWindow.__deinit();
	Button.__deinit();
	CheckBox.__deinit();
	ScrollBar.__deinit();
	ContinuousSlider.__deinit();
	DiscreteSlider.__deinit();
	TextInput.__deinit();
	inline for(@typeInfo(windowlist).Struct.decls) |decl| {
		const WindowStruct = @field(windowlist, decl.name);
		if(@hasDecl(WindowStruct, "deinit")) {
			WindowStruct.deinit();
		}
	}
	GuiCommandQueue.deinit();
}

fn save() void {
	const guiJson = JsonElement.initObject(main.stackAllocator);
	defer guiJson.free(main.stackAllocator);
	for(windowList.items) |window| {
		const windowJson = JsonElement.initObject(main.stackAllocator);
		for(window.relativePosition, 0..) |relPos, i| {
			const relPosJson = JsonElement.initObject(main.stackAllocator);
			switch(relPos) {
				.ratio => |ratio| {
					relPosJson.put("type", "ratio");
					relPosJson.put("ratio", ratio);
				},
				.attachedToFrame => |attachedToFrame| {
					relPosJson.put("type", "attachedToFrame");
					relPosJson.put("selfAttachmentPoint", @intFromEnum(attachedToFrame.selfAttachmentPoint));
					relPosJson.put("otherAttachmentPoint", @intFromEnum(attachedToFrame.otherAttachmentPoint));
				},
				.relativeToWindow => |relativeToWindow| {
					relPosJson.put("type", "relativeToWindow");
					relPosJson.put("reference", relativeToWindow.reference.id);
					relPosJson.put("ratio", relativeToWindow.ratio);
				},
				.attachedToWindow => |attachedToWindow| {
					relPosJson.put("type", "attachedToWindow");
					relPosJson.put("reference", attachedToWindow.reference.id);
					relPosJson.put("selfAttachmentPoint", @intFromEnum(attachedToWindow.selfAttachmentPoint));
					relPosJson.put("otherAttachmentPoint", @intFromEnum(attachedToWindow.otherAttachmentPoint));
				},
			}
			windowJson.put(([_][]const u8{"relPos0", "relPos1"})[i], relPosJson);
		}
		windowJson.put("scale", window.scale);
		guiJson.put(window.id, windowJson);
	}
	
	main.files.writeJson("gui_layout.json", guiJson) catch |err| {
		std.log.err("Could not write gui_layout.json: {s}", .{@errorName(err)});
	};
}

fn load() void {
	const json: JsonElement = main.files.readToJson(main.stackAllocator, "gui_layout.json") catch |err| blk: {
		if(err != error.FileNotFound) {
			std.log.err("Could not read gui_layout.json: {s}", .{@errorName(err)});
		}
		break :blk JsonElement{.JsonNull={}};
	};
	defer json.free(main.stackAllocator);

	for(windowList.items) |window| {
		const windowJson = json.getChild(window.id);
		if(windowJson == .JsonNull) continue;
		for(&window.relativePosition, 0..) |*relPos, i| {
			const relPosJson = windowJson.getChild(([_][]const u8{"relPos0", "relPos1"})[i]);
			const typ = relPosJson.get([]const u8, "type", "ratio");
			if(std.mem.eql(u8, typ, "ratio")) {
				relPos.* = .{.ratio = relPosJson.get(f32, "ratio", 0.5)};
			} else if(std.mem.eql(u8, typ, "attachedToFrame")) {
				relPos.* = .{.attachedToFrame = .{
					.selfAttachmentPoint = @enumFromInt(relPosJson.get(u8, "selfAttachmentPoint", 0)),
					.otherAttachmentPoint = @enumFromInt(relPosJson.get(u8, "otherAttachmentPoint", 0)),
				}};
			} else if(std.mem.eql(u8, typ, "relativeToWindow")) {
				const reference = getWindowById(relPosJson.get([]const u8, "reference", "")) orelse continue;
				relPos.* = .{.relativeToWindow = .{
					.reference = reference,
					.ratio = relPosJson.get(f32, "ratio", 0.5),
				}};
			} else if(std.mem.eql(u8, typ, "attachedToWindow")) {
				const reference = getWindowById(relPosJson.get([]const u8, "reference", "")) orelse continue;
				relPos.* = .{.attachedToWindow = .{
					.reference = reference,
					.selfAttachmentPoint = @enumFromInt(relPosJson.get(u8, "selfAttachmentPoint", 0)),
					.otherAttachmentPoint = @enumFromInt(relPosJson.get(u8, "otherAttachmentPoint", 0)),
				}};
			} else {
				std.log.warn("Unknown window attachment type: {s}", .{typ});
			}
		}
		window.scale = windowJson.get(f32, "scale", 1);
	}
}

fn getWindowById(id: []const u8) ?*GuiWindow {
	for(windowList.items) |window| {
		if(std.mem.eql(u8, id, window.id)) {
			return window;
		}
	}
	std.log.warn("Could not find window with id: {s}", .{id});
	return null;
}

pub fn updateGuiScale() void {
	if(settings.guiScale) |guiScale| {
		scale = guiScale;
	} else {
		const windowSize = main.Window.getWindowSize();
		const screenWidth = @min(windowSize[0], windowSize[1]*16/9);
		scale = @floor(screenWidth/640.0 + 0.2);
		if(scale < 1) {
			scale = 0.5;
		}
	}
}

fn addWindow(window: *GuiWindow) void {
	for(windowList.items) |other| {
		if(std.mem.eql(u8, window.id, other.id)) {
			std.log.err("Duplicate window id: {s}", .{window.id});
			return;
		}
	}
	if(window.isHud) {
		hudWindows.append(window);
	}
	windowList.append(window);
}

pub fn openWindow(id: []const u8) void {
	defer updateWindowPositions();
	for(windowList.items) |window| {
		if(std.mem.eql(u8, window.id, id)) {
			openWindowFromRef(window);
			return;
		}
	}
	std.log.warn("Could not find window with id {s}.", .{id});
}

pub fn openWindowFromRef(window: *GuiWindow) void {
	GuiCommandQueue.scheduleCommand(.{.action = .open, .window = window});
}

pub fn toggleWindow(id: []const u8) void {
	defer updateWindowPositions();
	for(windowList.items) |window| {
		if(std.mem.eql(u8, window.id, id)) {
			for(openWindows.items, 0..) |_openWindow, i| {
				if(_openWindow == window) {
					_ = openWindows.swapRemove(i);
					selectedWindow = null;
					return;
				}
			}
			openWindows.append(window);
			window.onOpenFn();
			selectedWindow = null;
			return;
		}
	}
	std.log.warn("Could not find window with id {s}.", .{id});
}

pub fn openHud() void {
	for(windowList.items) |window| {
		if(window.isHud) {
			openWindowFromRef(window);
		}
	}
}

fn openWindowCallbackFunction(windowPtr: usize) void {
	openWindowFromRef(@ptrFromInt(windowPtr));
}
pub fn openWindowCallback(comptime id: []const u8) Callback {
	return .{
		.callback = &openWindowCallbackFunction,
		.arg = @intFromPtr(&@field(windowlist, id).window),
	};
}

pub fn closeWindow(window: *GuiWindow) void {
	GuiCommandQueue.scheduleCommand(.{.action = .close, .window = window});
}

pub fn setSelectedTextInput(newSelectedTextInput: ?*TextInput) void {
	if(selectedTextInput) |current| {
		if(current != newSelectedTextInput) {
			current.deselect();
		}
	}
	selectedTextInput = newSelectedTextInput;
}

pub const textCallbacks = struct {
	pub fn char(codepoint: u21) void {
		if(selectedTextInput) |current| {
			current.inputCharacter(codepoint);
		}
	}
	pub fn left(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.left(mods);
		}
	}
	pub fn right(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.right(mods);
		}
	}
	pub fn down(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.down(mods);
		}
	}
	pub fn up(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.up(mods);
		}
	}
	pub fn gotoStart(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.gotoStart(mods);
		}
	}
	pub fn gotoEnd(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.gotoEnd(mods);
		}
	}
	pub fn deleteLeft(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.deleteLeft(mods);
		}
	}
	pub fn deleteRight(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.deleteRight(mods);
		}
	}
	pub fn copy(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.copy(mods);
		}
	}
	pub fn paste(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.paste(mods);
		}
	}
	pub fn cut(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.cut(mods);
		}
	}
	pub fn newline(mods: main.Window.Key.Modifiers) void {
		if(selectedTextInput) |current| {
			current.newline(mods);
		}
	}
};

pub fn mainButtonPressed() void {
	selectedWindow = null;
	selectedTextInput = null;
	var selectedI: usize = 0;
	for(openWindows.items, 0..) |window, i| {
		var mousePosition = main.Window.getMousePosition()/@as(Vec2f, @splat(scale));
		mousePosition -= window.pos;
		if(@reduce(.And, mousePosition >= Vec2f{0, 0}) and @reduce(.And, mousePosition < window.size)) {
			selectedWindow = window;
			selectedI = i;
		}
	}
	if(selectedWindow) |_selectedWindow| {
		const mousePosition = main.Window.getMousePosition()/@as(Vec2f, @splat(scale));
		_selectedWindow.mainButtonPressed(mousePosition);
		_ = openWindows.orderedRemove(selectedI);
		openWindows.appendAssumeCapacity(_selectedWindow);
	}
}

pub fn mainButtonReleased() void {
	const oldWindow = selectedWindow;
	selectedWindow = null;
	for(openWindows.items) |window| {
		var mousePosition = main.Window.getMousePosition()/@as(Vec2f, @splat(scale));
		mousePosition -= window.pos;
		if(@reduce(.And, mousePosition >= Vec2f{0, 0}) and @reduce(.And, mousePosition < window.size)) {
			selectedWindow = window;
		}
	}
	if(selectedWindow != oldWindow) { // Unselect the window if the mouse left it.
		selectedWindow = null;
	}
	if(oldWindow) |_oldWindow| {
		const mousePosition = main.Window.getMousePosition()/@as(Vec2f, @splat(scale));
		_oldWindow.mainButtonReleased(mousePosition);
	}
}

pub fn secondaryButtonPressed() void {

}

pub fn secondaryButtonReleased() void {

}

pub fn updateWindowPositions() void {
	var wasChanged: bool = false;
	for(windowList.items) |window| {
		const oldPos = window.pos;
		window.updateWindowPosition();
		const newPos = window.pos;
		if(vec.lengthSquare(oldPos - newPos) >= 1e-3) {
			wasChanged = true;
		}
	}
	if(wasChanged) @call(.always_tail, updateWindowPositions, .{}); // Very efficient O(n²) algorithm :P
}

pub fn updateAndRenderGui() void {
	const mousePos = main.Window.getMousePosition()/@as(Vec2f, @splat(scale));
	hoveredAWindow = false;
	GuiCommandQueue.executeCommands();
	{
		if(selectedWindow) |selected| {
			selected.updateSelected(mousePos);
		}
		var i: usize = openWindows.items.len;
		while(i != 0) {
			i -= 1;
			const window: *GuiWindow = openWindows.items[i];
			if(GuiComponent.contains(window.pos, window.size, mousePos)) {
				window.updateHovered(mousePos);
				hoveredAWindow = true;
				break;
			}
		}
	}
	for(openWindows.items) |window| {
		window.update();
	}
	{
		draw.setColor(0x80000000);
		GuiWindow.borderShader.bind();
		graphics.c.glUniform2f(GuiWindow.borderUniforms.effectLength, main.Window.getWindowSize()[0]/6, main.Window.getWindowSize()[1]/6);
		draw.customShadedRect(GuiWindow.borderUniforms, .{0, 0}, main.Window.getWindowSize());
	}
	const oldScale = draw.setScale(scale);
	defer draw.restoreScale(oldScale);
	for(openWindows.items) |window| {
		window.render(mousePos);
	}
}
