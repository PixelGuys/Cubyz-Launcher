const std = @import("std");

pub const gui = @import("gui");

pub const files = @import("files.zig");
pub const graphics = @import("graphics.zig");
pub const JsonElement = @import("json.zig").JsonElement;
pub const random = @import("random.zig");
pub const renderer = @import("renderer.zig");
pub const settings = @import("settings.zig");
pub const utils = @import("utils.zig");
pub const vec = @import("vec.zig");

pub const Window = @import("graphics/Window.zig");

pub const List = @import("utils/list.zig").List;
pub const ListUnmanaged = @import("utils/list.zig").ListUnmanaged;

const Vec2f = vec.Vec2f;
const Vec3d = vec.Vec3d;

pub threadlocal var stackAllocator: utils.NeverFailingAllocator = undefined;
pub threadlocal var seed: u64 = undefined;
var global_gpa = std.heap.GeneralPurposeAllocator(.{.thread_safe=true}){};
var handled_gpa = utils.ErrorHandlingAllocator.init(global_gpa.allocator());
pub const globalAllocator: utils.NeverFailingAllocator = handled_gpa.allocator();

fn cacheStringImpl(comptime len: usize, comptime str: [len]u8) []const u8 {
	return str[0..len];
}

fn cacheString(comptime str: []const u8) []const u8 {
	return cacheStringImpl(str.len, str[0..].*);
}
var logFile: ?std.fs.File = undefined;
var logFileTs: ?std.fs.File = undefined;
var supportsANSIColors: bool = undefined;
// overwrite the log function:
pub const std_options: std.Options = .{
	.log_level = .debug,
	.logFn = struct {pub fn logFn(
		comptime level: std.log.Level,
		comptime _: @Type(.EnumLiteral),
		comptime format: []const u8,
		args: anytype,
	) void {
		const color = comptime switch (level) {
			std.log.Level.err => "\x1b[31m",
			std.log.Level.info => "",
			std.log.Level.warn => "\x1b[33m",
			std.log.Level.debug => "\x1b[37;44m",
		};
		const colorReset = "\x1b[0m\n";
		const filePrefix = "[" ++ comptime level.asText() ++ "]" ++ ": ";
		const fileSuffix = "\n";
		comptime var formatString: []const u8 = "";
		comptime var i: usize = 0;
		comptime var mode: usize = 0;
		comptime var sections: usize = 0;
		comptime var sectionString: []const u8 = "";
		comptime var sectionResults: []const []const u8 = &.{};
		comptime var sectionId: []const usize = &.{};
		inline while(i < format.len) : (i += 1) {
			if(mode == 0) {
				if(format[i] == '{') {
					if(format[i + 1] == '{') {
						sectionString = sectionString ++ "{{";
						i += 1;
						continue;
					} else {
						mode = 1;
						formatString = formatString ++ "{s}{";
						sectionResults = sectionResults ++ &[_][]const u8{sectionString};
						sectionString = "";
						sectionId = sectionId ++ &[_]usize {sections};
						sections += 1;
						continue;
					}
				} else {
					sectionString = sectionString ++ format[i..i+1];
				}
			} else {
				formatString = formatString ++ format[i..i+1];
				if(format[i] == '}') {
					sections += 1;
					mode = 0;
				}
			}
		}
		formatString = formatString ++ "{s}";
		sectionResults = sectionResults ++ &[_][]const u8{sectionString};
		sectionId = sectionId ++ &[_]usize {sections};
		sections += 1;
		formatString = comptime cacheString("{s}" ++ formatString ++ "{s}");

		comptime var types: []const type = &.{};
		comptime var i_1: usize = 0;
		comptime var i_2: usize = 0;
		inline while(types.len != sections) {
			if(i_2 < sectionResults.len) {
				if(types.len == sectionId[i_2]) {
					types = types ++ &[_]type{[]const u8};
					i_2 += 1;
					continue;
				}
			}
			const TI = @typeInfo(@TypeOf(args[i_1]));
			if(@TypeOf(args[i_1]) == comptime_int) {
				types = types ++ &[_]type{i64};
			} else if(@TypeOf(args[i_1]) == comptime_float) {
				types = types ++ &[_]type{f64};
			} else if(TI == .Pointer and TI.Pointer.size == .Slice and TI.Pointer.child == u8) {
				types = types ++ &[_]type{[]const u8};
			} else if(TI == .Int and TI.Int.bits <= 64) {
				if(TI.Int.signedness == .signed) {
					types = types ++ &[_]type{i64};
				} else {
					types = types ++ &[_]type{u64};
				}
			} else {
				types = types ++ &[_]type{@TypeOf(args[i_1])};
			}
			i_1 += 1;
		}
		types = &[_]type{[]const u8} ++ types ++ &[_]type{[]const u8};

		const ArgsType = std.meta.Tuple(types);
		comptime var comptimeTuple: ArgsType = undefined;
		comptime var len: usize = 0;
		i_1 = 0;
		i_2 = 0;
		inline while(len != sections) : (len += 1) {
			if(i_2 < sectionResults.len) {
				if(len == sectionId[i_2]) {
					comptimeTuple[len+1] = sectionResults[i_2];
					i_2 += 1;
					continue;
				}
			}
			i_1 += 1;
		}
		comptimeTuple[0] = filePrefix;
		comptimeTuple[comptimeTuple.len - 1] = fileSuffix;
		var resultArgs: ArgsType = comptimeTuple;
		len = 0;
		i_1 = 0;
		i_2 = 0;
		inline while(len != sections) : (len += 1) {
			if(i_2 < sectionResults.len) {
				if(len == sectionId[i_2]) {
					i_2 += 1;
					continue;
				}
			}
			resultArgs[len+1] = args[i_1];
			i_1 += 1;
		}

		logToFile(formatString, resultArgs);

		if(supportsANSIColors) {
			resultArgs[0] = color;
			resultArgs[resultArgs.len - 1] = colorReset;
		}
		logToStdErr(formatString, resultArgs);
	}}.logFn,
};

fn initLogging() void {
	logFile = null;
	std.fs.cwd().makePath("logs") catch |err| {
		std.log.err("Couldn't create logs folder: {s}", .{@errorName(err)});
		return;
	};
	logFile = std.fs.cwd().createFile("logs/latest.log", .{}) catch |err| {
		std.log.err("Couldn't create logs/latest.log: {s}", .{@errorName(err)});
		return;
	};

	const _timestamp = std.time.timestamp();

	const _path_str = std.fmt.allocPrint(stackAllocator.allocator, "logs/ts_{}.log", .{_timestamp}) catch unreachable;
	defer stackAllocator.free(_path_str);

	logFileTs = std.fs.cwd().createFile(_path_str, .{}) catch |err| {
		std.log.err("Couldn't create {s}: {s}", .{_path_str, @errorName(err)});
		return;
	};

	supportsANSIColors = std.io.getStdOut().supportsAnsiEscapeCodes();
}

fn deinitLogging() void {
	if (logFile) |_logFile| {
		_logFile.close();
		logFile = null;
	}

	if (logFileTs) |_logFileTs| {
		_logFileTs.close();
		logFileTs = null;
	}
}

fn logToFile(comptime format: []const u8, args: anytype) void {
	var buf: [65536]u8 = undefined;
	var fba = std.heap.FixedBufferAllocator.init(&buf);
	const allocator = fba.allocator();

	const string = std.fmt.allocPrint(allocator, format, args) catch format;
	defer allocator.free(string);
	(logFile orelse return).writeAll(string) catch {};
	(logFileTs orelse return).writeAll(string) catch {};
}

fn logToStdErr(comptime format: []const u8, args: anytype) void {
	var buf: [65536]u8 = undefined;
	var fba = std.heap.FixedBufferAllocator.init(&buf);
	const allocator = fba.allocator();

	const string = std.fmt.allocPrint(allocator, format, args) catch format;
	defer allocator.free(string);
	nosuspend std.io.getStdErr().writeAll(string) catch {};
}

fn escape() void {
	if(gui.selectedTextInput != null) {
		gui.selectedTextInput = null;
		return;
	}
}
fn toggleDebugOverlay() void {
	gui.toggleWindow("debug");
}
fn togglePerformanceOverlay() void {
	gui.toggleWindow("performance_graph");
}
fn toggleGPUPerformanceOverlay() void {
	gui.toggleWindow("gpu_performance_measuring");
}

pub const KeyBoard = struct {
	const c = Window.c;
	pub var keys = [_]Window.Key {
		// Gui:
		.{.name = "escape", .key = c.GLFW_KEY_ESCAPE, .releaseAction = &escape},
		.{.name = "mainGuiButton", .mouseButton = c.GLFW_MOUSE_BUTTON_LEFT, .pressAction = &gui.mainButtonPressed, .releaseAction = &gui.mainButtonReleased},
		.{.name = "secondaryGuiButton", .mouseButton = c.GLFW_MOUSE_BUTTON_RIGHT, .pressAction = &gui.secondaryButtonPressed, .releaseAction = &gui.secondaryButtonReleased},
		// text:
		.{.name = "textCursorLeft", .key = c.GLFW_KEY_LEFT, .repeatAction = &gui.textCallbacks.left},
		.{.name = "textCursorRight", .key = c.GLFW_KEY_RIGHT, .repeatAction = &gui.textCallbacks.right},
		.{.name = "textCursorDown", .key = c.GLFW_KEY_DOWN, .repeatAction = &gui.textCallbacks.down},
		.{.name = "textCursorUp", .key = c.GLFW_KEY_UP, .repeatAction = &gui.textCallbacks.up},
		.{.name = "textGotoStart", .key = c.GLFW_KEY_HOME, .repeatAction = &gui.textCallbacks.gotoStart},
		.{.name = "textGotoEnd", .key = c.GLFW_KEY_END, .repeatAction = &gui.textCallbacks.gotoEnd},
		.{.name = "textDeleteLeft", .key = c.GLFW_KEY_BACKSPACE, .repeatAction = &gui.textCallbacks.deleteLeft},
		.{.name = "textDeleteRight", .key = c.GLFW_KEY_DELETE, .repeatAction = &gui.textCallbacks.deleteRight},
		.{.name = "textCopy", .key = c.GLFW_KEY_C, .repeatAction = &gui.textCallbacks.copy},
		.{.name = "textPaste", .key = c.GLFW_KEY_V, .repeatAction = &gui.textCallbacks.paste},
		.{.name = "textCut", .key = c.GLFW_KEY_X, .repeatAction = &gui.textCallbacks.cut},
		.{.name = "textNewline", .key = c.GLFW_KEY_ENTER, .repeatAction = &gui.textCallbacks.newline},

		// debug:
		.{.name = "debugOverlay", .key = c.GLFW_KEY_F3, .releaseAction = &toggleDebugOverlay},
		.{.name = "performanceOverlay", .key = c.GLFW_KEY_F4, .releaseAction = &togglePerformanceOverlay},
		.{.name = "gpuPerformanceOverlay", .key = c.GLFW_KEY_F5, .releaseAction = &toggleGPUPerformanceOverlay},
	};

	pub fn key(name: []const u8) *const Window.Key { // TODO: Maybe I should use a hashmap here?
		for(&keys) |*_key| {
			if(std.mem.eql(u8, name, _key.name)) {
				return _key;
			}
		}
		std.log.err("Couldn't find keyboard key with name {s}", .{name});
		return &.{.name = ""};
	}
};

pub var lastFrameTime = std.atomic.Value(f64).init(0);

pub fn main() void {
	seed = @bitCast(std.time.milliTimestamp());
	defer if(global_gpa.deinit() == .leak) {
		std.log.err("Memory leak", .{});
	};
	var sta = utils.StackAllocator.init(globalAllocator, 1 << 23);
	defer sta.deinit();
	stackAllocator = sta.allocator();

	initLogging();
	defer deinitLogging();

	settings.init();
	defer settings.deinit();

	Window.init();
	defer Window.deinit();

	graphics.init();
	defer graphics.deinit();

	gui.init();
	defer gui.deinit();

	renderer.init();
	defer renderer.deinit();

	gui.openWindow("main");

	const c = Window.c;

	c.glCullFace(c.GL_BACK);
	c.glEnable(c.GL_BLEND);
	c.glEnable(c.GL_DEPTH_CLAMP);
	c.glDepthFunc(c.GL_LESS);
	c.glBlendFunc(c.GL_SRC_ALPHA, c.GL_ONE_MINUS_SRC_ALPHA);
	Window.GLFWCallbacks.framebufferSize(undefined, Window.width, Window.height);
	var lastTime = std.time.nanoTimestamp();

	while(c.glfwWindowShouldClose(Window.window) == 0) {
		c.glfwSwapBuffers(Window.window);
		// Clear may also wait on vsync, so it's done before handling events:
		gui.windowlist.gpu_performance_measuring.startQuery(.screenbuffer_clear);
		c.glClearColor(0.5, 1, 1, 1);
		c.glClear(c.GL_DEPTH_BUFFER_BIT | c.GL_STENCIL_BUFFER_BIT | c.GL_COLOR_BUFFER_BIT);
		gui.windowlist.gpu_performance_measuring.stopQuery();

		while(true) {
			Window.handleEvents();
			if(c.glfwGetWindowAttrib(Window.window, c.GLFW_FOCUSED) == c.GLFW_TRUE or c.glfwWindowShouldClose(Window.window) == c.GLFW_TRUE) {
				break;
			} else {
				lastTime = std.time.nanoTimestamp();
				std.time.sleep(16_000_000);
			}
		}

		const newTime = std.time.nanoTimestamp();
		const deltaTime = @as(f64, @floatFromInt(newTime -% lastTime))/1e9;
		lastFrameTime.store(deltaTime, .monotonic);
		lastTime = newTime;
		c.glEnable(c.GL_CULL_FACE);
		c.glEnable(c.GL_DEPTH_TEST);
		gui.windowlist.gpu_performance_measuring.startQuery(.menu_background);
		renderer.render(deltaTime);
		gui.windowlist.gpu_performance_measuring.stopQuery();

		{ // Render the GUI
			gui.windowlist.gpu_performance_measuring.startQuery(.gui);
			c.glDisable(c.GL_CULL_FACE);
			c.glDisable(c.GL_DEPTH_TEST);
			gui.updateAndRenderGui();
			gui.windowlist.gpu_performance_measuring.stopQuery();
		}
	}
}
