const std = @import("std");
const fs = std.fs;
const zip = std.zip;
const tar = std.tar;
const compress = std.compress;

pub fn decompress_zip(zip_path: []const u8, output_dir: []const u8) !void {
	const zip_file = try fs.cwd().openFile(zip_path, .{});
    defer zip_file.close();

	fs.cwd().makeDir(output_dir) catch {};

    var output_dir_handle = try fs.cwd().openDir(output_dir, .{});
    defer output_dir_handle.close();
    
	try zip.extract(output_dir_handle, zip_file.seekableStream(), .{});
}

pub fn decompress_tar_xz(zip_path: []const u8, output_dir: []const u8) !void {
	const tar_file = try fs.cwd().openFile(zip_path, .{});
    defer tar_file.close();

	fs.cwd().makeDir(output_dir) catch {};

    var output_dir_handle = try fs.cwd().openDir(output_dir, .{});
    defer output_dir_handle.close();
    
	var xz_decompress = try compress.xz.decompress(std.heap.page_allocator, tar_file.reader());
    defer xz_decompress.deinit();

    try std.tar.pipeToFileSystem(output_dir_handle, xz_decompress.reader(), .{.mode_mode = .ignore});
}