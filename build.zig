const std = @import("std");

pub fn build(b: *std.Build) !void {
	// Standard target options allows the person running `zig build` to choose
	// what target to build for. Here we do not override the defaults, which
	// means any target is allowed, and the default is native. Other options
	// for restricting supported target set are available.
	const target = b.standardTargetOptions(.{});
	const t = target.result;

	// Standard release options allow the person running `zig build` to select
	// between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
	const optimize = b.standardOptimizeOption(.{});
	const exe = b.addExecutable(.{
		.name = "Cubyz_Launcher",
		.root_source_file = b.path("src/main.zig"),
		.target = target,
		.optimize = optimize,
		//.sanitize_thread = true,
	});
	exe.linkLibC();
	exe.linkLibCpp();

	const depsLib = b.fmt("cubyz_deps_{s}-{s}-{s}", .{@tagName(t.cpu.arch), @tagName(t.os.tag), switch(t.os.tag) {
		.linux => "musl",
		.macos => "none",
		.windows => "gnu",
		else => "none",
	}});

	var depsName: []const u8 = b.fmt("cubyz_deps_{s}_{s}", .{@tagName(t.cpu.arch), @tagName(t.os.tag)});
	const useLocalDeps = b.option(bool, "local", "Use local cubyz_deps") orelse false;
	if(useLocalDeps) depsName = "local";

	const libsDeps = b.lazyDependency(depsName, .{
		.target = target,
		.optimize = optimize,
	}) orelse {
		// Lazy dependencies with a `url` field will fail here the first time.
		// build.zig will restart and try again.
		std.log.info("Downloading cubyz_deps libraries {s}.", .{depsName});
		return;
	};
	const headersDeps = if(useLocalDeps) libsDeps else
		b.lazyDependency("cubyz_deps_headers", .{}) orelse {
		std.log.info("Downloading cubyz_deps headers {s}.", .{depsName});
		return;
	};

	exe.addLibraryPath(libsDeps.path("lib"));
	exe.addIncludePath(headersDeps.path("include"));
	exe.linkSystemLibrary(depsLib);
	exe.addRPath(libsDeps.path("lib")); // TODO: Maybe move the library next to the executable, to make this more portable?

	if(t.os.tag == .windows) {
		exe.linkSystemLibrary("gdi32");
		exe.linkSystemLibrary("opengl32");
	} else if(t.os.tag == .linux) {
		exe.linkSystemLibrary("x11");
		exe.linkSystemLibrary("GL");
	} else if(t.os.tag == .macos) {
		exe.linkFramework("CoreServices");
		exe.linkFramework("Foundation");
		exe.linkFramework("IOKit");
		exe.linkFramework("Cocoa");
		exe.linkFramework("QuartzCore");
		exe.linkSystemLibrary("X11");
		exe.addLibraryPath(b.path("/usr/local/GL/lib"));
		exe.addLibraryPath(b.path("/opt/X11/lib"));
		exe.addRPath(b.path("../Library"));
	} else {
		std.log.err("Unsupported target: {}\n", .{t.os.tag});
	}

	exe.root_module.addAnonymousImport("gui", .{
		.target = target,
		.optimize = optimize,
		.root_source_file = b.path("src/gui/gui.zig"),
	});

	b.installArtifact(exe);

	const run_cmd = b.addRunArtifact(exe);
	run_cmd.step.dependOn(b.getInstallStep());
	if (b.args) |args| {
		run_cmd.addArgs(args);
	}

	const run_step = b.step("run", "Run the app");
	run_step.dependOn(&run_cmd.step);

	const exe_tests = b.addTest(.{
		.root_source_file = b.path("src/main.zig"),
		.target = target,
		.optimize = optimize,
	});

	const test_step = b.step("test", "Run unit tests");
	test_step.dependOn(&exe_tests.step);
}
