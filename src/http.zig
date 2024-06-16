const std = @import("std");
const utils = @import("utils.zig");
const http = std.http;
const fs = std.fs;

pub fn fetchAndSave(allocator: utils.NeverFailingAllocator, url: []const u8, out: []const u8) !void {
	var stream = fs.cwd().createFile(out, .{}) catch try fs.cwd().openFile(out, .{});
	defer stream.close();

	var client = http.Client{.allocator = allocator.allocator};
	defer client.deinit();

	var response: std.ArrayList(u8) = std.ArrayList(u8).init(allocator.allocator);
	defer response.deinit();

	const result = try client.fetch(.{
		.method = .GET,
		.response_storage = .{ .dynamic = &response },
		.max_append_size = std.math.maxInt(usize),
		.location = .{
			.url = url
		}
	});

	_ = result;

	try stream.writeAll(response.items);
}