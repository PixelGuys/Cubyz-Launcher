const std = @import("std");
const http = @import("std").http;
const Allocator = @import("std").mem.Allocator;
const fs = std.fs;

pub fn downloadFile(allocator: Allocator, url: []const u8, filename: []const u8) !void {
	var client = http.Client{.allocator = allocator};
	defer client.deinit();

	var response = std.ArrayList(u8).init(allocator);
	defer response.deinit();

	// Can't use httpbin.org, see #14172.
	const result = try client.fetch(allocator, .{
		.method = .GET,
		.location = .{ .url = url },
	});

	var file = try fs.cwd().createFile(filename, .{});
	defer file.close();

	_ = try file.write(result.body.?);
}

pub const Error = enum {
	InvalidStatusCode,
};
