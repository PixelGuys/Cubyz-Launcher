const std = @import("std");
const builtin = @import("builtin");

const main = @import("root");
const Vec2f = main.vec.Vec2f;

const gui = @import("../gui.zig");
const GuiComponent = gui.GuiComponent;
const GuiWindow = gui.GuiWindow;
const Button = @import("../components/Button.zig");
const VerticalList = @import("../components/VerticalList.zig");

const http = main.http;
const archive = main.archive;
const files = main.files;

pub var window = GuiWindow {
	.contentSize = Vec2f{128, 256},
};

const padding: f32 = 8;

fn exitGame(_:usize) void {
	main.Window.c.glfwSetWindowShouldClose(main.Window.window,main.Window.c.GLFW_TRUE);
}

pub fn play(_:usize) void {
	std.fs.cwd().deleteTree(".cubyz/Cubyz-master") catch |err| {
		std.log.err("Error deleting .cubyz/Cubyz-master: {}\n", .{err});
		return;
	};

	http.fetchAndSave(main.stackAllocator, "https://www.github.com/PixelGuys/Cubyz/archive/master.zip", ".cubyz/master.zip") catch |err| {
		std.log.err("Error fetching https://www.github.com/PixelGuys/Cubyz/archive/master.zip into .cubyz/master.zip: {}\n", .{err});
		return;
	};
	
	archive.decompress_zip(".cubyz/master.zip", ".cubyz") catch |err| {
		std.log.err("Error extracting .cubyz/master.zip into .cubyz: {}\n", .{err});
		return;
	};
	
	std.fs.cwd().deleteFile(".cubyz/master.zip") catch {};

	var dir = files.openDir(".cubyz/Cubyz-master") catch |err| {
		std.log.err("Error opening .cubyz/Cubyz-master: {}\n", .{err});
		return;
	};
	defer dir.close();

	const ver = dir.read(main.stackAllocator, ".zig-version") catch |err| {
		std.log.err("Error reading the zig version: {}\n", .{err});
		return;
	};

	defer main.stackAllocator.free(ver);

	if (builtin.target.os.tag == .windows) {
		var buf: [128]u8 = undefined;
		const zig_http = std.fmt.bufPrint(&buf, "https://ziglang.org/builds/zig-{s}-{s}-{s}.zip", .{@tagName(builtin.target.os.tag), builtin.target.osArchName(), ver}) catch |err| {
			std.log.err("Error getting the http url: {}\n", .{err});
			return;
		};

		_ = std.fs.cwd().makeDir(".cubyz/Cubyz-master/compiler") catch |err| {
			std.log.err("Error creating .cubyz/Cubyz-master/compiler: {}\n", .{err});
			return;
		};

		http.fetchAndSave(main.stackAllocator, zig_http, ".cubyz/Cubyz-master/compiler/archive.zip") catch |err| {
			std.log.err("Error fetching the compiler: {}\n", .{err});
			return;
		};

		archive.decompress_zip(".cubyz/Cubyz-master/compiler/archive.zip", ".cubyz/Cubyz-master/compiler") catch |err| {
			std.log.err("Error extracting the compiler: {}\n", .{err});
			return;
		};

		var commandBuf: [1024]u8 = undefined;
		const command = std.fmt.bufPrint(&commandBuf, ".\\compiler\\zig-{s}-{s}-{s}\\zig.exe", .{@tagName(builtin.target.os.tag), builtin.target.osArchName(), ver}) catch |err| {
			std.log.err("Error creating the run command: {}\n", .{err});
			return;
		};

		const argv = [_][]const u8{command, "build", "run", "-Doptimize=ReleaseSafe"};
		var proc = std.process.Child.init(&argv, main.stackAllocator.allocator);
		proc.cwd = ".cubyz\\Cubyz-master";
		_ = proc.spawnAndWait() catch |err| {
			std.log.err("Error running cubyz: {}\n", .{err});
			return;
		};
	} else {
		var buf: [128]u8 = undefined;
		const zig_http = std.fmt.bufPrint(&buf, "https://ziglang.org/builds/zig-{s}-{s}-{s}.tar.xz", .{@tagName(builtin.target.os.tag), builtin.target.osArchName(), ver}) catch |err| {
			std.log.err("Error getting the http url: {}\n", .{err});
			return;
		};

		_ = std.fs.cwd().makeDir(".cubyz/Cubyz-master/compiler") catch |err| {
			std.log.err("Error creating .cubyz/Cubyz-master/compiler: {}\n", .{err});
			return;
		};

		http.fetchAndSave(main.stackAllocator, zig_http, ".cubyz/Cubyz-master/compiler/archive.tar.xz") catch |err| {
			std.log.err("Error fetching the compiler: {}\n", .{err});
			return;
		};

		archive.decompress_tar_xz(".cubyz/Cubyz-master/compiler/archive.tar.xz", ".cubyz/Cubyz-master/compiler") catch |err| {
			std.log.err("Error extracting the compiler: {}\n", .{err});
			return;
		};
		
		var commandBuf: [1024]u8 = undefined;
		const command = std.fmt.bufPrint(&commandBuf, "./compiler/zig-{s}-{s}-{s}/zig", .{@tagName(builtin.target.os.tag), builtin.target.osArchName(), ver}) catch |err| {
			std.log.err("Error creating the run command: {}\n", .{err});
			return;
		};

		const argv = [_][]const u8{command, "build", "run", "-Doptimize=ReleaseSafe"};
		var proc = std.process.Child.init(&argv, main.stackAllocator.allocator);
		proc.cwd = ".cubyz/Cubyz-master";
		_ = proc.spawnAndWait() catch |err| {
			std.log.err("Error running cubyz: {}\n", .{err});
			return;
		};
	}
}

pub fn onOpen() void {
	const list = VerticalList.init(.{padding, 16 + padding}, 300, 16);
	list.add(Button.initText(.{0, 0}, 128, "Play", .{.callback = &play,}));
	list.add(Button.initText(.{0, 0}, 128, "Settings", gui.openWindowCallback("settings")));
	list.add(Button.initText(.{0, 0}, 128, "Touch Grass",  .{.callback = &exitGame}));
	list.finish(.center);
	window.rootComponent = list.toComponent();
	window.contentSize = window.rootComponent.?.pos() + window.rootComponent.?.size() + @as(Vec2f, @splat(padding));
	gui.updateWindowPositions();
}

pub fn onClose() void {
	if(window.rootComponent) |*comp| {
		comp.deinit();
	}
}