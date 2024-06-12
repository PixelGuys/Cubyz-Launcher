/// A collection of things that should make dealing with opengl easier.
/// Also contains some basic 2d drawing stuff.

const std = @import("std");

const vec =  @import("vec.zig");
const Mat4f = vec.Mat4f;
const Vec4i = vec.Vec4i;
const Vec4f = vec.Vec4f;
const Vec2f = vec.Vec2f;
const Vec2i = vec.Vec2i;
const Vec3f = vec.Vec3f;

const main = @import("main.zig");
const Window = main.Window;

const NeverFailingAllocator = main.utils.NeverFailingAllocator;

pub const c = @cImport ({
	@cInclude("glad/glad.h");
});

pub const stb_image = @cImport ({
	@cInclude("stb/stb_image.h");
	@cInclude("stb/stb_image_write.h");
});

pub const draw = struct {
	var color: u32 = 0;
	var clip: ?Vec4i = null;
	var translation: Vec2f = Vec2f{0, 0};
	var scale: f32 = 1;

	pub fn setColor(newColor: u32) void {
		color = newColor;
	}

	/// Returns the previous translation.
	pub fn setTranslation(newTranslation: Vec2f) Vec2f {
		const oldTranslation = translation;
		translation += newTranslation*@as(Vec2f, @splat(scale));
		return oldTranslation;
	}

	pub fn restoreTranslation(previousTranslation: Vec2f) void {
		translation = previousTranslation;
	}

	/// Returns the previous scale.
	pub fn setScale(newScale: f32) f32 {
		std.debug.assert(newScale >= 0);
		const oldScale = scale;
		scale *= newScale;
		return oldScale;
	}

	pub fn restoreScale(previousScale: f32) void {
		scale = previousScale;
	}

	/// Returns the previous clip.
	pub fn setClip(clipRect: Vec2f) ?Vec4i {
		std.debug.assert(@reduce(.And, clipRect >= Vec2f{0, 0}));
		var newClip = Vec4i {
			std.math.lossyCast(i32, translation[0]),
			main.Window.height - std.math.lossyCast(i32, translation[1] + clipRect[1]*scale),
			std.math.lossyCast(i32, clipRect[0]*scale),
			std.math.lossyCast(i32, clipRect[1]*scale),
		};
		if(clip) |oldClip| {
			if (newClip[0] < oldClip[0]) {
				newClip[2] -= oldClip[0] - newClip[0];
				newClip[0] += oldClip[0] - newClip[0];
			}
			if (newClip[1] < oldClip[1]) {
				newClip[3] -= oldClip[1] - newClip[1];
				newClip[1] += oldClip[1] - newClip[1];
			}
			if (newClip[0] + newClip[2] > oldClip[0] + oldClip[2]) {
				newClip[2] -= (newClip[0] + newClip[2]) - (oldClip[0] + oldClip[2]);
			}
			if (newClip[1] + newClip[3] > oldClip[1] + oldClip[3]) {
				newClip[3] -= (newClip[1] + newClip[3]) - (oldClip[1] + oldClip[3]);
			}
			newClip[2] = @max(newClip[2], 0);
			newClip[3] = @max(newClip[3], 0);
		} else {
			c.glEnable(c.GL_SCISSOR_TEST);
		}
		c.glScissor(newClip[0], newClip[1], newClip[2], newClip[3]);
		const oldClip = clip;
		clip = newClip;
		return oldClip;
	}

	/// Should be used to restore the old clip when leaving the render function.
	pub fn restoreClip(previousClip: ?Vec4i) void {
		clip = previousClip;
		if (clip) |clipRef| {
			c.glScissor(clipRef[0], clipRef[1], clipRef[2], clipRef[3]);
		} else {
			c.glDisable(c.GL_SCISSOR_TEST);
		}
	}

	// ----------------------------------------------------------------------------
	// Stuff for fillRect:
	var rectUniforms: struct {
		screen: c_int,
		start: c_int,
		size: c_int,
		rectColor: c_int,
	} = undefined;
	var rectShader: Shader = undefined;
	pub var rectVAO: c_uint = undefined;
	var rectVBO: c_uint = undefined;

	fn initRect() void {
		rectShader = Shader.initAndGetUniforms("assets/cubyz/shaders/graphics/Rect.vs", "assets/cubyz/shaders/graphics/Rect.fs", &rectUniforms);
		const rawData = [_]f32 {
			0, 0,
			0, 1,
			1, 0,
			1, 1,
		};

		c.glGenVertexArrays(1, &rectVAO);
		c.glBindVertexArray(rectVAO);
		c.glGenBuffers(1, &rectVBO);
		c.glBindBuffer(c.GL_ARRAY_BUFFER, rectVBO);
		c.glBufferData(c.GL_ARRAY_BUFFER, rawData.len*@sizeOf(f32), &rawData, c.GL_STATIC_DRAW);
		c.glVertexAttribPointer(0, 2, c.GL_FLOAT, c.GL_FALSE, 2*@sizeOf(f32), null);
		c.glEnableVertexAttribArray(0);
	}

	fn deinitRect() void {
		rectShader.deinit();
		c.glDeleteVertexArrays(1, &rectVAO);
		c.glDeleteBuffers(1, &rectVBO);
	}

	pub fn rect(_pos: Vec2f, _dim: Vec2f) void {
		var pos = _pos;
		var dim = _dim;
		pos *= @splat(scale);
		pos += translation;
		dim *= @splat(scale);

		rectShader.bind();

		c.glUniform2f(rectUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(rectUniforms.start, pos[0], pos[1]);
		c.glUniform2f(rectUniforms.size, dim[0], dim[1]);
		c.glUniform1i(rectUniforms.rectColor,  @bitCast(color));

		c.glBindVertexArray(rectVAO);
		c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
	}

	// ----------------------------------------------------------------------------
	// Stuff for fillRectBorder:
	var rectBorderUniforms: struct {
		screen: c_int,
		start: c_int,
		size: c_int,
		rectColor: c_int,
		lineWidth: c_int,
	} = undefined;
	var rectBorderShader: Shader = undefined;
	var rectBorderVAO: c_uint = undefined;
	var rectBorderVBO: c_uint = undefined;

	fn initRectBorder() void {
		rectBorderShader = Shader.initAndGetUniforms("assets/cubyz/shaders/graphics/RectBorder.vs", "assets/cubyz/shaders/graphics/RectBorder.fs", &rectBorderUniforms);
		const rawData = [_]f32 {
			0, 0, 0, 0,
			0, 0, 1, 1,
			0, 1, 0, 0,
			0, 1, 1, -1,
			1, 1, 0, 0,
			1, 1, -1, -1,
			1, 0, 0, 0,
			1, 0, -1, 1,
			0, 0, 0, 0,
			0, 0, 1, 1,
		};

		c.glGenVertexArrays(1, &rectBorderVAO);
		c.glBindVertexArray(rectBorderVAO);
		c.glGenBuffers(1, &rectBorderVBO);
		c.glBindBuffer(c.GL_ARRAY_BUFFER, rectBorderVBO);
		c.glBufferData(c.GL_ARRAY_BUFFER, rawData.len*@sizeOf(f32), &rawData, c.GL_STATIC_DRAW);
		c.glVertexAttribPointer(0, 4, c.GL_FLOAT, c.GL_FALSE, 4*@sizeOf(f32), null);
		c.glEnableVertexAttribArray(0);
	}

	fn deinitRectBorder() void {
		rectBorderShader.deinit();
		c.glDeleteVertexArrays(1, &rectBorderVAO);
		c.glDeleteBuffers(1, &rectBorderVBO);
	}

	pub fn rectBorder(_pos: Vec2f, _dim: Vec2f, _width: f32) void {
		var pos = _pos;
		var dim = _dim;
		var width = _width;
		pos *= @splat(scale);
		pos += translation;
		dim *= @splat(scale);
		width *= scale;

		rectBorderShader.bind();

		c.glUniform2f(rectBorderUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(rectBorderUniforms.start, pos[0], pos[1]);
		c.glUniform2f(rectBorderUniforms.size, dim[0], dim[1]);
		c.glUniform1i(rectBorderUniforms.rectColor,  @bitCast(color));
		c.glUniform1f(rectBorderUniforms.lineWidth, width);

		c.glBindVertexArray(rectBorderVAO);
		c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 10);
	}

	// ----------------------------------------------------------------------------
	// Stuff for drawLine:
	var lineUniforms: struct {
		screen: c_int,
		start: c_int,
		direction: c_int,
		lineColor: c_int,
	} = undefined;
	var lineShader: Shader = undefined;
	var lineVAO: c_uint = undefined;
	var lineVBO: c_uint = undefined;

	fn initLine() void {
		lineShader = Shader.initAndGetUniforms("assets/cubyz/shaders/graphics/Line.vs", "assets/cubyz/shaders/graphics/Line.fs", &lineUniforms);
		const rawData = [_]f32 {
			0, 0,
			1, 1,
		};

		c.glGenVertexArrays(1, &lineVAO);
		c.glBindVertexArray(lineVAO);
		c.glGenBuffers(1, &lineVBO);
		c.glBindBuffer(c.GL_ARRAY_BUFFER, lineVBO);
		c.glBufferData(c.GL_ARRAY_BUFFER, rawData.len*@sizeOf(f32), &rawData, c.GL_STATIC_DRAW);
		c.glVertexAttribPointer(0, 2, c.GL_FLOAT, c.GL_FALSE, 2*@sizeOf(f32), null);
		c.glEnableVertexAttribArray(0);
	}

	fn deinitLine() void {
		lineShader.deinit();
		c.glDeleteVertexArrays(1, &lineVAO);
		c.glDeleteBuffers(1, &lineVBO);
	}

	pub fn line(_pos1: Vec2f, _pos2: Vec2f) void {
		var pos1 = _pos1;
		var pos2 = _pos2;
		pos1 *= @splat(scale);
		pos1 += translation;
		pos2 *= @splat(scale);
		pos2 += translation;

		lineShader.bind();

		c.glUniform2f(lineUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(lineUniforms.start, pos1[0], pos1[1]);
		c.glUniform2f(lineUniforms.direction, pos2[0] - pos1[0], pos2[1] - pos1[1]);
		c.glUniform1i(lineUniforms.lineColor,  @bitCast(color));

		c.glBindVertexArray(lineVAO);
		c.glDrawArrays(c.GL_LINE_STRIP, 0, 2);
	}
	
	// ----------------------------------------------------------------------------
	// Stuff for drawRect:
	// Draw rect can use the same shader as drawline, because it essentially draws lines.
	var drawRectVAO: c_uint = undefined;
	var drawRectVBO: c_uint = undefined;

	fn initDrawRect() void {
		const rawData = [_]f32 {
			0, 0,
			0, 1,
			1, 1,
			1, 0,
		};

		c.glGenVertexArrays(1, &drawRectVAO);
		c.glBindVertexArray(drawRectVAO);
		c.glGenBuffers(1, &drawRectVBO);
		c.glBindBuffer(c.GL_ARRAY_BUFFER, drawRectVBO);
		c.glBufferData(c.GL_ARRAY_BUFFER, rawData.len*@sizeOf(f32), &rawData, c.GL_STATIC_DRAW);
		c.glVertexAttribPointer(0, 2, c.GL_FLOAT, c.GL_FALSE, 2*@sizeOf(f32), null);
		c.glEnableVertexAttribArray(0);
	}

	fn deinitDrawRect() void {
		c.glDeleteVertexArrays(1, &drawRectVAO);
		c.glDeleteBuffers(1, &drawRectVBO);
	}

	pub fn rectOutline(_pos: Vec2f, _dim: Vec2f) void {
		var pos = _pos;
		var dim = _dim;
		pos *= @splat(scale);
		pos += translation;
		dim *= @splat(scale);

		lineShader.bind();

		c.glUniform2f(lineUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(lineUniforms.start, pos[0], pos[1]); // Move the coordinates, so they are in the center of a pixel.
		c.glUniform2f(lineUniforms.direction, dim[0] - 1, dim[1] - 1); // The height is a lot smaller because the inner edge of the rect is drawn.
		c.glUniform1i(lineUniforms.lineColor,  @bitCast(color));

		c.glBindVertexArray(lineVAO);
		c.glDrawArrays(c.GL_LINE_LOOP, 0, 5);
	}
	
	// ----------------------------------------------------------------------------
	// Stuff for fillCircle:
	var circleUniforms: struct {
		screen: c_int,
		center: c_int,
		radius: c_int,
		circleColor: c_int,
	} = undefined;
	var circleShader: Shader = undefined;
	var circleVAO: c_uint = undefined;
	var circleVBO: c_uint = undefined;

	fn initCircle() void {
		circleShader = Shader.initAndGetUniforms("assets/cubyz/shaders/graphics/Circle.vs", "assets/cubyz/shaders/graphics/Circle.fs", &circleUniforms);
		const rawData = [_]f32 {
			-1, -1,
			-1, 1,
			1, -1,
			1, 1,
		};

		c.glGenVertexArrays(1, &circleVAO);
		c.glBindVertexArray(circleVAO);
		c.glGenBuffers(1, &circleVBO);
		c.glBindBuffer(c.GL_ARRAY_BUFFER, circleVBO);
		c.glBufferData(c.GL_ARRAY_BUFFER, rawData.len*@sizeOf(f32), &rawData, c.GL_STATIC_DRAW);
		c.glVertexAttribPointer(0, 2, c.GL_FLOAT, c.GL_FALSE, 2*@sizeOf(f32), null);
		c.glEnableVertexAttribArray(0);
	}

	fn deinitCircle() void {
		circleShader.deinit();
		c.glDeleteVertexArrays(1, &circleVAO);
		c.glDeleteBuffers(1, &circleVBO);
	}

	pub fn circle(_center: Vec2f, _radius: f32) void {
		var center = _center;
		var radius = _radius;
		center *= @splat(scale);
		center += translation;
		radius *= scale;
		circleShader.bind();

		c.glUniform2f(circleUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(circleUniforms.center, center[0], center[1]); // Move the coordinates, so they are in the center of a pixel.
		c.glUniform1f(circleUniforms.radius, radius); // The height is a lot smaller because the inner edge of the rect is drawn.
		c.glUniform1i(circleUniforms.circleColor,  @bitCast(color));

		c.glBindVertexArray(circleVAO);
		c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
	}
	
	// ----------------------------------------------------------------------------
	// Stuff for drawImage:
	// Luckily the vao of the regular rect can used.
	var imageUniforms: struct {
		screen: c_int,
		start: c_int,
		size: c_int,
		image: c_int,
		color: c_int,
		uvOffset: c_int,
		uvDim: c_int,
	} = undefined;
	var imageShader: Shader = undefined;

	fn initImage() void {
		imageShader = Shader.initAndGetUniforms("assets/cubyz/shaders/graphics/Image.vs", "assets/cubyz/shaders/graphics/Image.fs", &imageUniforms);
	}

	fn deinitImage() void {
		imageShader.deinit();
	}

	pub fn boundImage(_pos: Vec2f, _dim: Vec2f) void {
		var pos = _pos;
		var dim = _dim;
		pos *= @splat(scale);
		pos += translation;
		dim *= @splat(scale);
		pos = @floor(pos);
		dim = @ceil(dim);

		imageShader.bind();

		c.glUniform2f(imageUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(imageUniforms.start, pos[0], pos[1]);
		c.glUniform2f(imageUniforms.size, dim[0], dim[1]);
		c.glUniform1i(imageUniforms.color, @bitCast(color));
		c.glUniform2f(imageUniforms.uvOffset, 0, 0);
		c.glUniform2f(imageUniforms.uvDim, 1, 1);

		c.glBindVertexArray(rectVAO);
		c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
	}

	pub fn boundSubImage(_pos: Vec2f, _dim: Vec2f, uvOffset: Vec2f, uvDim: Vec2f) void {
		var pos = _pos;
		var dim = _dim;
		pos *= @splat(scale);
		pos += translation;
		dim *= @splat(scale);
		pos = @floor(pos);
		dim = @ceil(dim);

		imageShader.bind();

		c.glUniform2f(imageUniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(imageUniforms.start, pos[0], pos[1]);
		c.glUniform2f(imageUniforms.size, dim[0], dim[1]);
		c.glUniform1i(imageUniforms.color, @bitCast(color));
		c.glUniform2f(imageUniforms.uvOffset, uvOffset[0], 1 - uvOffset[1] - uvDim[1]);
		c.glUniform2f(imageUniforms.uvDim, uvDim[0], uvDim[1]);

		c.glBindVertexArray(rectVAO);
		c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
	}

	// ----------------------------------------------------------------------------

	pub fn customShadedRect(uniforms: anytype, _pos: Vec2f, _dim: Vec2f) void {
		var pos = _pos;
		var dim = _dim;
		pos *= @splat(scale);
		pos += translation;
		dim *= @splat(scale);
		pos = @floor(pos);
		dim = @ceil(dim);

		c.glUniform2f(uniforms.screen, @floatFromInt(Window.width), @floatFromInt(Window.height));
		c.glUniform2f(uniforms.start, pos[0], pos[1]);
		c.glUniform2f(uniforms.size, dim[0], dim[1]);
		c.glUniform1i(uniforms.color,  @bitCast(color));
		c.glUniform1f(uniforms.scale, scale);

		c.glBindVertexArray(rectVAO);
		c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
	}

	// ----------------------------------------------------------------------------
	
	pub fn text(_text: []const u8, x: f32, y: f32, fontSize: f32, alignment: TextBuffer.Alignment) void {
		TextRendering.renderText(_text, x, y, fontSize, .{.color = @truncate(@as(u32, @bitCast(color)))}, alignment);
	}

	pub inline fn print(comptime format: []const u8, args: anytype, x: f32, y: f32, fontSize: f32, alignment: TextBuffer.Alignment) void {
		const string = std.fmt.allocPrint(main.stackAllocator.allocator, format, args) catch unreachable;
		defer main.stackAllocator.free(string);
		text(string, x, y ,fontSize, alignment);
	}
};

pub const TextBuffer = struct {

	pub const Alignment = enum {
		left,
		center,
		right,
	};

	pub const FontEffect = packed struct(u28) {
		color: u24 = 0xffffff,
		bold: bool = false,
		italic: bool = false,
		underline: bool = false,
		strikethrough: bool = false,

		fn hasLine(self: FontEffect, comptime isUnderline: bool) bool {
			if(isUnderline) return self.underline;
			return self.strikethrough;
		}
	};

	const Line = struct {
		start: f32,
		end: f32,
		color: u24,
		isUnderline: bool,
	};

	const LineBreak = struct {
		index: u32,
		width: f32,
	};

	const GlyphData = struct {
		x_advance: f32,
		y_advance: f32,
		x_offset: f32,
		y_offset: f32,
		character: u21,
		index: u32,
		cluster: u32,
		fontEffect: FontEffect,
		characterIndex: u32,
	};

	alignment: Alignment,
	width: f32,
	glyphs: []GlyphData,
	lines: main.List(Line),
	lineBreaks: main.List(LineBreak),

	fn addLine(self: *TextBuffer, line: Line) void {
		if(line.start != line.end) {
			self.lines.append(line);
		}
	}

	fn initLines(self: *TextBuffer, comptime isUnderline: bool) void {
		var line: Line = Line {.start = 0, .end = 0, .color = 0, .isUnderline = isUnderline};
		var lastFontEffect: FontEffect = .{};
		for(self.glyphs) |glyph| {
			const fontEffect = glyph.fontEffect;
			if(lastFontEffect.hasLine(isUnderline)) {
				if(fontEffect.color != lastFontEffect.color) {
					self.addLine(line);
					line.color = fontEffect.color;
					line.start = line.end;
				} else if(!fontEffect.hasLine(isUnderline)) {
					self.addLine(line);
				}
			} else if(fontEffect.hasLine(isUnderline)) {
				line.start = line.end;
				line.color = fontEffect.color;
			}
			lastFontEffect = fontEffect;
			line.end += glyph.x_advance;
		}
		if(lastFontEffect.hasLine(isUnderline)) {
			self.addLine(line);
		}
	}

	const Parser = struct {
		unicodeIterator: std.unicode.Utf8Iterator,
		currentFontEffect: FontEffect,
		parsedText: main.List(u32),
		fontEffects: main.List(FontEffect),
		characterIndex: main.List(u32),
		showControlCharacters: bool,
		curChar: u21 = undefined,
		curIndex: u32 = 0,

		fn appendControlGetNext(self: *Parser) ?void {
			if(self.showControlCharacters) {
				self.fontEffects.append(.{.color = 0x808080});
				self.parsedText.append(self.curChar);
				self.characterIndex.append(self.curIndex);
			}
			self.curIndex = @intCast(self.unicodeIterator.i);
			self.curChar = self.unicodeIterator.nextCodepoint() orelse return null;
		}

		fn appendGetNext(self: *Parser) ?void {
			self.fontEffects.append(self.currentFontEffect);
			self.parsedText.append(self.curChar);
			self.characterIndex.append(self.curIndex);
			self.curIndex = @intCast(self.unicodeIterator.i);
			self.curChar = self.unicodeIterator.nextCodepoint() orelse return null;
		}

		fn parse(self: *Parser) void {
			self.curIndex = @intCast(self.unicodeIterator.i);
			self.curChar = self.unicodeIterator.nextCodepoint() orelse return;
			while(true) switch(self.curChar) {
				'*' => {
					self.appendControlGetNext() orelse return;
					if(self.curChar == '*') {
						self.appendControlGetNext() orelse return;
						self.currentFontEffect.bold = !self.currentFontEffect.bold;
					} else {
						self.currentFontEffect.italic = !self.currentFontEffect.italic;
					}
				},
				'_' => {
					self.appendControlGetNext() orelse return;
					if(self.curChar == '_') {
						self.appendControlGetNext() orelse return;
						self.currentFontEffect.strikethrough = !self.currentFontEffect.strikethrough;
					} else {
						self.currentFontEffect.underline = !self.currentFontEffect.underline;
					}
				},
				'\\' => {
					self.appendControlGetNext() orelse return;
					self.appendGetNext() orelse return;
				},
				'#' => {
					self.appendControlGetNext() orelse return;
					var shift: u5 = 20;
					while(true) : (shift -= 4) {
						self.currentFontEffect.color = (self.currentFontEffect.color & ~(@as(u24, 0xf) << shift)) | @as(u24, switch(self.curChar) {
							'0', '1', '2', '3', '4', '5', '6', '7', '8', '9' => self.curChar - '0',
							'a', 'b', 'c', 'd', 'e', 'f' => self.curChar - 'a' + 10,
							'A', 'B', 'C', 'D', 'E', 'F' => self.curChar - 'A' + 10,
							else => 0,
						}) << shift;
						self.appendControlGetNext() orelse return;
						if(shift == 0) break;
					}
				},
				else => {
					self.appendGetNext() orelse return;
				}
			};
		}
	};

	pub fn init(allocator: NeverFailingAllocator, text: []const u8, initialFontEffect: FontEffect, showControlCharacters: bool, alignment: Alignment) TextBuffer {
		var self: TextBuffer = undefined;
		self.alignment = alignment;
		// Parse the input text:
		var parser = Parser {
			.unicodeIterator = std.unicode.Utf8Iterator{.bytes = text, .i = 0},
			.currentFontEffect = initialFontEffect,
			.parsedText = main.List(u32).init(main.stackAllocator),
			.fontEffects = main.List(FontEffect).init(allocator),
			.characterIndex = main.List(u32).init(allocator),
			.showControlCharacters = showControlCharacters
		};
		defer parser.fontEffects.deinit();
		defer parser.parsedText.deinit();
		defer parser.characterIndex.deinit();
		self.lines = main.List(Line).init(allocator);
		self.lineBreaks = main.List(LineBreak).init(allocator);
		parser.parse();
		if(parser.parsedText.items.len == 0) {
			self.glyphs = &[0]GlyphData{};
			return self;
		}

		// Merge it all together:
		self.glyphs = allocator.alloc(GlyphData, parser.parsedText.items.len);
		for(self.glyphs, 0..) |*glyph, i| {
			const index = parser.parsedText.items[i];
			const ftGlyph = TextRendering.getGlyph(index);
			glyph.x_advance = ftGlyph.advance;
			glyph.y_advance = 0;
			glyph.x_offset = 0;
			glyph.y_offset = 0;
			glyph.character = @intCast(parser.parsedText.items[i]);
			glyph.index = parser.parsedText.items[i];
			glyph.cluster = 0;
			glyph.fontEffect = parser.fontEffects.items[i];
			glyph.characterIndex = parser.characterIndex.items[i];
		}

		// Find the lines:
		self.initLines(true);
		self.initLines(false);
		self.lineBreaks.append(.{.index = 0, .width = 0});
		self.lineBreaks.append(.{.index = @intCast(self.glyphs.len), .width = 0});
		return self;
	}

	pub fn deinit(self: TextBuffer) void {
		self.lines.allocator.free(self.glyphs);
		self.lines.deinit();
		self.lineBreaks.deinit();
	}

	fn getLineOffset(self: TextBuffer, line: usize) f32 {
		const factor: f32 = switch(self.alignment) {
			.left => 0,
			.center => 0.5,
			.right => 1,
		};
		const diff = self.width - self.lineBreaks.items[line+1].width;
		return diff*factor;
	}

	pub fn mousePosToIndex(self: TextBuffer, mousePos: Vec2f, bufferLen: usize) u32 {
		var line: usize = @intFromFloat(@max(0, mousePos[1]/16.0));
		line = @min(line, self.lineBreaks.items.len - 2);
		var x: f32 = self.getLineOffset(line);
		const start = self.lineBreaks.items[line].index;
		const end = self.lineBreaks.items[line + 1].index;
		for(self.glyphs[start..end]) |glyph| {
			if(mousePos[0] < x + glyph.x_advance/2) {
				return @intCast(glyph.characterIndex);
			}

			x += glyph.x_advance;
		}
		return @intCast(if(end < self.glyphs.len) self.glyphs[end-1].characterIndex else bufferLen);
	}

	pub fn indexToCursorPos(self: TextBuffer, index: u32) Vec2f {
		var x: f32 = 0;
		var y: f32 = 0;
		var i: usize = 0;
		while(true) {
			x = self.getLineOffset(i);
			for(self.glyphs[self.lineBreaks.items[i].index..self.lineBreaks.items[i+1].index]) |glyph| {
				if(glyph.characterIndex == index) {
					return .{x, y};
				}

				x += glyph.x_advance;
				y -= glyph.y_advance;
			}
			i += 1;
			if(i >= self.lineBreaks.items.len - 1) {
				return .{x, y};
			}
			y += 16;
		}
	}

	/// Returns the calculated dimensions of the text block.
	pub fn calculateLineBreaks(self: *TextBuffer, fontSize: f32, maxLineWidth: f32) Vec2f {
		self.lineBreaks.clearRetainingCapacity();
		const spaceCharacterWidth = 8;
		self.lineBreaks.append(.{.index = 0, .width = 0});
		const scaledMaxWidth = maxLineWidth/fontSize*16.0;
		var lineWidth: f32 = 0;
		var lastSpaceWidth: f32 = 0;
		var lastSpaceIndex: u32 = 0;
		for(self.glyphs, 0..) |glyph, i| {
			lineWidth += glyph.x_advance;
			if(glyph.character == ' ') {
				lastSpaceWidth = lineWidth;
				lastSpaceIndex = @intCast(i+1);
			}
			if(glyph.character == '\n') {
				self.lineBreaks.append(.{.index = @intCast(i+1), .width = lineWidth - spaceCharacterWidth});
				lineWidth = 0;
				lastSpaceIndex = 0;
				lastSpaceWidth = 0;
			}
			if(lineWidth > scaledMaxWidth) {
				if(lastSpaceIndex != 0) {
					lineWidth -= lastSpaceWidth;
					self.lineBreaks.append(.{.index = lastSpaceIndex, .width = lastSpaceWidth - spaceCharacterWidth});
					lastSpaceIndex = 0;
					lastSpaceWidth = 0;
				} else {
					self.lineBreaks.append(.{.index = @intCast(i), .width = lineWidth - glyph.x_advance});
					lineWidth = glyph.x_advance;
					lastSpaceIndex = 0;
					lastSpaceWidth = 0;
				}
			}
		}
		self.width = maxLineWidth;
		self.lineBreaks.append(.{.index = @intCast(self.glyphs.len), .width = lineWidth});
		return Vec2f{maxLineWidth*fontSize/16.0, @as(f32, @floatFromInt(self.lineBreaks.items.len - 1))*fontSize};
	}

	pub fn drawSelection(self: TextBuffer, pos: Vec2f, selectionStart: u32, selectionEnd: u32) void {
		std.debug.assert(selectionStart <= selectionEnd);
		var x: f32 = self.getLineOffset(0);
		var y: f32 = 0;
		var i: usize = 0;
		var j: usize = 0;
		// Find the start row:
		outer: while(i < self.lineBreaks.items.len - 1) : (i += 1) {
			x = self.getLineOffset(i);
			while(j < self.lineBreaks.items[i+1].index) : (j += 1) {
				const glyph = self.glyphs[j];
				if(glyph.characterIndex >= selectionStart) break :outer;
				x += glyph.x_advance;
				y -= glyph.y_advance;
			}
			y += 16;
		}
		while(i < self.lineBreaks.items.len - 1) {
			const startX = x;
			while(j < self.lineBreaks.items[i+1].index and j < selectionEnd) : (j += 1) {
				const glyph = self.glyphs[j];
				if(glyph.characterIndex >= selectionEnd) break;
				x += glyph.x_advance;
				y -= glyph.y_advance;
			}
			draw.rect(pos + Vec2f{startX, y}, .{x - startX, 16});
			i += 1;
			if(i >= self.lineBreaks.items.len - 1) break;
			x = self.getLineOffset(i);
			y += 16;
		}
	}

	pub fn render(self: TextBuffer, _x: f32, _y: f32, _fontSize: f32) void {
		self.renderShadow(_x, _y, _fontSize);
		const oldTranslation = draw.setTranslation(.{_x, _y});
		defer draw.restoreTranslation(oldTranslation);
		const oldScale = draw.setScale(_fontSize/16.0);
		defer draw.restoreScale(oldScale);
		var x: f32 = 0;
		var y: f32 = 0;
		TextRendering.shader.bind();
		c.glUniform2f(TextRendering.uniforms.scene, @floatFromInt(main.Window.width), @floatFromInt(main.Window.height));
		c.glUniform1f(TextRendering.uniforms.ratio, draw.scale);
		c.glUniform1f(TextRendering.uniforms.alpha, @as(f32, @floatFromInt(draw.color >> 24)) / 255.0);
		c.glActiveTexture(c.GL_TEXTURE0);
		c.glBindTexture(c.GL_TEXTURE_2D, TextRendering.glyphTexture[0]);
		c.glBindVertexArray(draw.rectVAO);
		const lineWraps: []f32 = main.stackAllocator.alloc(f32, self.lineBreaks.items.len - 1);
		defer main.stackAllocator.free(lineWraps);
		var i: usize = 0;
		while(i < self.lineBreaks.items.len - 1) : (i += 1) {
			x = self.getLineOffset(i);
			for(self.glyphs[self.lineBreaks.items[i].index..self.lineBreaks.items[i+1].index]) |glyph| {
				if(glyph.character != '\n') {
					const ftGlyph = TextRendering.getGlyph(glyph.index);
					TextRendering.drawGlyph(ftGlyph, x + glyph.x_offset, y - glyph.y_offset, @bitCast(glyph.fontEffect));
				}
				x += glyph.x_advance;
				y -= glyph.y_advance;
			}
			lineWraps[i] = x - self.getLineOffset(i);
			x = 0;
			y += 16;
		}

		for(self.lines.items) |_line| {
			var line: Line = _line;
			y = 0;
			if(line.isUnderline) y += 15
			else y += 8;
			draw.setColor(line.color | (@as(u32, 0xff000000) & draw.color));
			for(lineWraps, 0..) |lineWrap, j| {
				const lineStart = @max(0, line.start);
				const lineEnd = @min(lineWrap, line.end);
				if(lineStart < lineEnd) {
					const start = Vec2f{lineStart + self.getLineOffset(j), y};
					const dim = Vec2f{lineEnd - lineStart, 1};
					draw.rect(start, dim);
				}
				line.start -= lineWrap;
				line.end -= lineWrap;
				y += 16;
			}
		}
	}

	fn shadowColor(color: u24) u24 {
		const r: f32 = @floatFromInt(color >> 16);
		const g: f32 = @floatFromInt(color >> 8  &  255);
		const b: f32 = @floatFromInt(color & 255);
		const perceivedBrightness = @sqrt(0.299*r*r + 0.587*g*g + 0.114*b*b);
		if(perceivedBrightness < 64) {
			return 0xffffff; // Make shadows white for better readability.
		} else {
			return 0;
		}
	}

	fn renderShadow(self: TextBuffer, _x: f32, _y: f32, _fontSize: f32) void { // Basically a copy of render with some color and position changes.
		const oldTranslation = draw.setTranslation(.{_x + _fontSize/16.0, _y + _fontSize/16.0});
		defer draw.restoreTranslation(oldTranslation);
		const oldScale = draw.setScale(_fontSize/16.0);
		defer draw.restoreScale(oldScale);
		var x: f32 = 0;
		var y: f32 = 0;
		TextRendering.shader.bind();
		c.glUniform2f(TextRendering.uniforms.scene, @floatFromInt(main.Window.width), @floatFromInt(main.Window.height));
		c.glUniform1f(TextRendering.uniforms.ratio, draw.scale);
		c.glUniform1f(TextRendering.uniforms.alpha, @as(f32, @floatFromInt(draw.color >> 24)) / 255.0);
		c.glActiveTexture(c.GL_TEXTURE0);
		c.glBindTexture(c.GL_TEXTURE_2D, TextRendering.glyphTexture[0]);
		c.glBindVertexArray(draw.rectVAO);
		const lineWraps: []f32 = main.stackAllocator.alloc(f32, self.lineBreaks.items.len - 1);
		defer main.stackAllocator.free(lineWraps);
		var i: usize = 0;
		while(i < self.lineBreaks.items.len - 1) : (i += 1) {
			x = self.getLineOffset(i);
			for(self.glyphs[self.lineBreaks.items[i].index..self.lineBreaks.items[i+1].index]) |glyph| {
				if(glyph.character != '\n') {
					const ftGlyph = TextRendering.getGlyph(glyph.index);
					var fontEffect = glyph.fontEffect;
					fontEffect.color = shadowColor(fontEffect.color);
					TextRendering.drawGlyph(ftGlyph, x + glyph.x_offset, y - glyph.y_offset, @bitCast(fontEffect));
				}
				x += glyph.x_advance;
				y -= glyph.y_advance;
			}
			lineWraps[i] = x - self.getLineOffset(i);
			x = 0;
			y += 16;
		}

		for(self.lines.items) |_line| {
			var line: Line = _line;
			y = 0;
			if(line.isUnderline) y += 15
			else y += 8;
			draw.setColor(shadowColor(line.color) | (@as(u32, 0xff000000) & draw.color));
			for(lineWraps, 0..) |lineWrap, j| {
				const lineStart = @max(0, line.start);
				const lineEnd = @min(lineWrap, line.end);
				if(lineStart < lineEnd) {
					const start = Vec2f{lineStart + self.getLineOffset(j), y};
					const dim = Vec2f{lineEnd - lineStart, 1};
					draw.rect(start, dim);
				}
				line.start -= lineWrap;
				line.end -= lineWrap;
				y += 16;
			}
		}
	}
};

const TextRendering = struct {
	const Glyph = struct {
		textureX: i32,
		size: Vec2i,
		bearing: Vec2i,
		advance: f32,
	};
	var shader: Shader = undefined;
	var uniforms: struct {
		texture_rect: c_int,
		scene: c_int,
		offset: c_int,
		ratio: c_int,
		fontEffects: c_int,
		fontSize: c_int,
		texture_sampler: c_int,
		alpha: c_int,
	} = undefined;

	var glyphMapping: main.List(u31) = undefined;
	var glyphData: main.List(Glyph) = undefined;
	var glyphTexture: [2]c_uint = undefined;
	var fontData: main.List(struct{u21, []const u8}) = undefined;
	var textureWidth: i32 = 1024;
	const textureHeight = 16;
	var textureOffset: i32 = 0;

	fn init() !void {
		shader = Shader.initAndGetUniforms("assets/cubyz/shaders/graphics/Text.vs", "assets/cubyz/shaders/graphics/Text.fs", &uniforms);
		shader.bind();
		errdefer shader.deinit();
		c.glUniform1i(uniforms.texture_sampler, 0);
		c.glUniform1f(uniforms.alpha, 1.0);
		c.glUniform2f(uniforms.fontSize, @floatFromInt(textureWidth), @floatFromInt(textureHeight));

		glyphMapping = main.List(u31).init(main.globalAllocator);
		glyphData = main.List(Glyph).init(main.globalAllocator);
		glyphData.append(undefined); // 0 is a reserved value.
		c.glGenTextures(2, &glyphTexture);
		c.glBindTexture(c.GL_TEXTURE_2D, glyphTexture[0]);
		c.glTexImage2D(c.GL_TEXTURE_2D, 0, c.GL_R8, textureWidth, textureHeight, 0, c.GL_RED, c.GL_UNSIGNED_BYTE, null);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MIN_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MAG_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_S, c.GL_REPEAT);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_T, c.GL_REPEAT);
		c.glBindTexture(c.GL_TEXTURE_2D, glyphTexture[1]);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MIN_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MAG_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_S, c.GL_REPEAT);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_T, c.GL_REPEAT);

		const rawFontData = @embedFile("assets/unscii-16.hex");
		fontData = @TypeOf(fontData).init(main.globalAllocator);
		{
			const State = enum {codepoint, data};
			var state: State = .codepoint;
			var codepoint: u21 = 0;
			var data: [16*16]u8 = undefined;
			var dataIndex: usize = 0;
			for(rawFontData) |char| {
				switch(state) {
					.codepoint => {
						if(char == ':') {
							state = .data;
							continue;
						}
						codepoint = codepoint << 4 | try std.fmt.charToDigit(char, 16);
					},
					.data => {
						if(char == '\n') {
							state = .codepoint;
							fontData.append(.{codepoint, main.globalAllocator.dupe(u8, data[0..dataIndex])});
							codepoint = 0;
							dataIndex = 0;
							continue;
						}
						const bits = try std.fmt.charToDigit(char, 16);
						data[dataIndex] = if(bits & 8 != 0) 255 else 0;
						dataIndex += 1;
						data[dataIndex] = if(bits & 4 != 0) 255 else 0;
						dataIndex += 1;
						data[dataIndex] = if(bits & 2 != 0) 255 else 0;
						dataIndex += 1;
						data[dataIndex] = if(bits & 1 != 0) 255 else 0;
						dataIndex += 1;
					}
				}
			}
			if(state == .data) {
				fontData.append(.{codepoint, main.globalAllocator.dupe(u8, data[0..dataIndex])});
			}
		}
	}

	fn deinit() void {
		shader.deinit();
		glyphMapping.deinit();
		glyphData.deinit();
		c.glDeleteTextures(2, &glyphTexture);
		for(fontData.items) |texture| {
			main.globalAllocator.free(texture[1]);
		}
		fontData.deinit();
	}

	fn resizeTexture(newWidth: i32) void {
		textureWidth = newWidth;
		const swap = glyphTexture[1];
		glyphTexture[1] = glyphTexture[0];
		glyphTexture[0] = swap;
		c.glActiveTexture(c.GL_TEXTURE0);
		c.glBindTexture(c.GL_TEXTURE_2D, glyphTexture[0]);
		c.glTexImage2D(c.GL_TEXTURE_2D, 0, c.GL_R8, newWidth, textureHeight, 0, c.GL_RED, c.GL_UNSIGNED_BYTE, null);
		c.glCopyImageSubData(
			glyphTexture[1], c.GL_TEXTURE_2D, 0, 0, 0, 0,
			glyphTexture[0], c.GL_TEXTURE_2D, 0, 0, 0, 0,
			textureOffset, textureHeight, 1
		);
		shader.bind();
		c.glUniform2f(uniforms.fontSize, @floatFromInt(textureWidth), @floatFromInt(textureHeight));
	}

	fn uploadData(width: i32, height: i32, buffer: []const u8) void {
		if(textureOffset + width > textureWidth) {
			resizeTexture(textureWidth*2);
		}
		c.glPixelStorei(c.GL_UNPACK_ALIGNMENT, 1);
		c.glBindTexture(c.GL_TEXTURE_2D, glyphTexture[0]);
		c.glTexSubImage2D(c.GL_TEXTURE_2D, 0, textureOffset, 0, width, height, c.GL_RED, c.GL_UNSIGNED_BYTE, buffer.ptr);
		textureOffset += width;
	}

	fn getGlyph(index: u32) Glyph {
		if(index >= glyphMapping.items.len) {
			glyphMapping.appendNTimes(0, index - glyphMapping.items.len + 1);
		}
		if(glyphMapping.items[index] == 0) {// glyph was not initialized yet.
			for(fontData.items) |texture| {
				if(texture[0] == index) {
					const width: i32 = @intCast(texture[1].len/textureHeight);
					const height: i32 = textureHeight;
					glyphMapping.items[index] = @intCast(glyphData.items.len);
					glyphData.addOne().* = Glyph {
						.textureX = textureOffset,
						.size = Vec2i{width, height},
						.bearing = Vec2i{0, 0},
						.advance = @floatFromInt(width),
					};
					uploadData(width, height, texture[1]);
				}
			}
		}
		return glyphData.items[glyphMapping.items[index]];
	}

	fn drawGlyph(glyph: Glyph, _x: f32, _y: f32, fontEffects: u28) void {
		var x = _x;
		var y = _y;
		x *= draw.scale;
		y *= draw.scale;
		x += draw.translation[0];
		y += draw.translation[1];
		x = @floor(x);
		y = @ceil(y);
		c.glUniform1i(uniforms.fontEffects, fontEffects);
		if(fontEffects & 0x1000000 != 0) { // bold
			c.glUniform2f(uniforms.offset, @as(f32, @floatFromInt(glyph.bearing[0]))*draw.scale + x, @as(f32, @floatFromInt(glyph.bearing[1]))*draw.scale + y - 1);
			c.glUniform4f(uniforms.texture_rect, @floatFromInt(glyph.textureX), -1, @floatFromInt(glyph.size[0]), @floatFromInt(glyph.size[1] + 1));
			c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
			// Just draw another thing on top in x direction. The y-direction is handled in the shader.
			c.glUniform2f(uniforms.offset, @as(f32, @floatFromInt(glyph.bearing[0]))*draw.scale + x + 0.5, @as(f32, @floatFromInt(glyph.bearing[1]))*draw.scale + y - 1);
			c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
		} else {
			c.glUniform2f(uniforms.offset, @as(f32, @floatFromInt(glyph.bearing[0]))*draw.scale + x, @as(f32, @floatFromInt(glyph.bearing[1]))*draw.scale + y);
			c.glUniform4f(uniforms.texture_rect, @floatFromInt(glyph.textureX), 0, @floatFromInt(glyph.size[0]), @floatFromInt(glyph.size[1]));
			c.glDrawArrays(c.GL_TRIANGLE_STRIP, 0, 4);
		}
	}

	fn renderText(text: []const u8, x: f32, y: f32, fontSize: f32, initialFontEffect: TextBuffer.FontEffect, alignment: TextBuffer.Alignment) void {
		const buf = TextBuffer.init(main.stackAllocator, text, initialFontEffect, false, alignment);
		defer buf.deinit();

		buf.render(x, y, fontSize);
	}
};

pub fn init() void {
	draw.initCircle();
	draw.initDrawRect();
	draw.initImage();
	draw.initLine();
	draw.initRect();
	draw.initRectBorder();
	TextRendering.init() catch |err| {
		std.log.err("Error while initializing TextRendering: {s}", .{@errorName(err)});
	};
}

pub fn deinit() void {
	draw.deinitCircle();
	draw.deinitDrawRect();
	draw.deinitImage();
	draw.deinitLine();
	draw.deinitRect();
	draw.deinitRectBorder();
	TextRendering.deinit();
}

pub const Shader = struct {
	id: c_uint,

	fn addShaderSource(self: *const Shader, filename: []const u8, source: []const u8, shader_stage: c_uint) !void {
		const shader = c.glCreateShader(shader_stage);
		defer c.glDeleteShader(shader);
		
		const sourceLen: c_int = @intCast(source.len);
		c.glShaderSource(shader, 1, &source.ptr, &sourceLen);
		
		c.glCompileShader(shader);

		var success: c_int = undefined;
		c.glGetShaderiv(shader, c.GL_COMPILE_STATUS, &success);
		if(success != c.GL_TRUE) {
			var len: u32 = undefined;
			c.glGetShaderiv(shader, c.GL_INFO_LOG_LENGTH, @ptrCast(&len));
			var buf: [4096] u8 = undefined;
			c.glGetShaderInfoLog(shader, 4096, @ptrCast(&len), &buf);
			std.log.err("Error compiling shader {s}:\n{s}\n", .{filename, buf[0..len]});
			return error.FailedCompiling;
		}

		c.glAttachShader(self.id, shader);
	}
	
	fn addShader(self: *const Shader, comptime filename: []const u8, shader_stage: c_uint) !void {
		const source = @embedFile(filename);
		try self.addShaderSource(filename, source, shader_stage);
	}

	fn link(self: *const Shader) !void {
		c.glLinkProgram(self.id);

		var success: c_int = undefined;
		c.glGetProgramiv(self.id, c.GL_LINK_STATUS, &success);
		if(success != c.GL_TRUE) {
			var len: u32 = undefined;
			c.glGetProgramiv(self.id, c.GL_INFO_LOG_LENGTH, @ptrCast(&len));
			var buf: [4096] u8 = undefined;
			c.glGetProgramInfoLog(self.id, 4096, @ptrCast(&len), &buf);
			std.log.err("Error Linking Shader program:\n{s}\n", .{buf[0..len]});
			return error.FailedLinking;
		}
	}
	
	pub fn init(comptime vertex: []const u8, comptime fragment: []const u8) Shader {
		const shader = Shader{.id = c.glCreateProgram()};
		shader.addShader(vertex, c.GL_VERTEX_SHADER) catch return shader;
		shader.addShader(fragment, c.GL_FRAGMENT_SHADER) catch return shader;
		shader.link() catch return shader;
		return shader;
	}
	
	pub fn initAndGetUniforms(comptime vertex: []const u8, comptime fragment: []const u8, ptrToUniformStruct: anytype) Shader {
		const self = Shader.init(vertex, fragment);
		inline for(@typeInfo(@TypeOf(ptrToUniformStruct.*)).Struct.fields) |field| {
			if(field.type == c_int) {
				@field(ptrToUniformStruct, field.name) = c.glGetUniformLocation(self.id, field.name[0..]);
			}
		}
		return self;
	}

	pub fn initCompute(comptime compute: []const u8) Shader {
		const shader = Shader{.id = c.glCreateProgram()};
		shader.addShader(compute, c.GL_COMPUTE_SHADER) catch return shader;
		shader.link() catch return shader;
		return shader;
	}

	pub fn initComputeAndGetUniforms(comptime compute: []const u8, ptrToUniformStruct: anytype) Shader {
		const self = Shader.initCompute(compute);
		inline for(@typeInfo(@TypeOf(ptrToUniformStruct.*)).Struct.fields) |field| {
			if(field.type == c_int) {
				@field(ptrToUniformStruct, field.name) = c.glGetUniformLocation(self.id, field.name[0..]);
			}
		}
		return self;
	}

	pub fn bind(self: *const Shader) void {
		c.glUseProgram(self.id);
	}

	pub fn deinit(self: *const Shader) void {
		c.glDeleteProgram(self.id);
	}
};

pub const SSBO = struct {
	bufferID: c_uint,
	pub fn init() SSBO {
		var self = SSBO{.bufferID = undefined};
		c.glGenBuffers(1, &self.bufferID);
		return self;
	}

	pub fn initStatic(comptime T: type, data: []const T) SSBO {
		var self = SSBO{.bufferID = undefined};
		c.glGenBuffers(1, &self.bufferID);
		c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.bufferID);
		c.glBufferStorage(c.GL_SHADER_STORAGE_BUFFER, @intCast(data.len*@sizeOf(T)), data.ptr, 0);
		return self;
	}

	pub fn initStaticSize(comptime T: type, len: usize) SSBO {
		var self = SSBO{.bufferID = undefined};
		c.glGenBuffers(1, &self.bufferID);
		c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.bufferID);
		c.glBufferStorage(c.GL_SHADER_STORAGE_BUFFER, @intCast(len*@sizeOf(T)), null, 0);
		return self;
	}

	pub fn deinit(self: SSBO) void {
		c.glDeleteBuffers(1, &self.bufferID);
	}

	pub fn bind(self: SSBO, binding: c_uint) void {
		c.glBindBufferBase(c.GL_SHADER_STORAGE_BUFFER, binding, self.bufferID);
	}

	pub fn bufferData(self: SSBO, comptime T: type, data: []const T) void {
		c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.bufferID);
		c.glBufferData(c.GL_SHADER_STORAGE_BUFFER, @intCast(data.len*@sizeOf(T)), data.ptr, c.GL_STATIC_DRAW);
		c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, 0);
	}

	pub fn createDynamicBuffer(self: SSBO, size: usize) void {
		c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.bufferID);
		c.glBufferData(c.GL_SHADER_STORAGE_BUFFER, @intCast(size), null, c.GL_DYNAMIC_DRAW);
		c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, 0);
	}
};

pub const SubAllocation = struct {
	start: u31,
	len: u31,
};

/// A big SSBO that is able to allocate/free smaller regions.
pub fn LargeBuffer(comptime Entry: type) type {
	return struct {
		ssbo: SSBO,
		freeBlocks: main.List(SubAllocation),
		fences: [3]c.GLsync,
		fencedFreeLists: [3]main.List(SubAllocation),
		activeFence: u8,
		capacity: u31,
		used: u31,
		binding: c_uint,

		const Self = @This();

		fn createBuffer(self: *Self, size: u31) void {
			self.ssbo = SSBO.init();
			c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.ssbo.bufferID);
			const flags = c.GL_MAP_WRITE_BIT | c.GL_DYNAMIC_STORAGE_BIT;
			const bytes = @as(c.GLsizeiptr, size)*@sizeOf(Entry);
			c.glBufferStorage(c.GL_SHADER_STORAGE_BUFFER, bytes, null, flags);
			self.ssbo.bind(self.binding);
			self.capacity = size;
		}

		pub fn init(self: *Self, allocator: NeverFailingAllocator, size: u31, binding: c_uint) void {
			self.binding = binding;
			self.createBuffer(size);
			self.activeFence = 0;
			for(&self.fences) |*fence| {
				fence.* = c.glFenceSync(c.GL_SYNC_GPU_COMMANDS_COMPLETE, 0);
			}
			for(&self.fencedFreeLists) |*list| {
				list.* = main.List(SubAllocation).init(allocator);
			}

			self.freeBlocks = main.List(SubAllocation).init(allocator);
			self.freeBlocks.append(.{.start = 0, .len = size});
		}

		pub fn deinit(self: *Self) void {
			for(self.fences) |fence| {
				c.glDeleteSync(fence);
			}
			for(self.fencedFreeLists) |list| {
				list.deinit();
			}
			self.ssbo.deinit();
			self.freeBlocks.deinit();
		}

		pub fn beginRender(self: *Self) void {
			self.activeFence += 1;
			if(self.activeFence == self.fences.len) self.activeFence = 0;
			for(self.fencedFreeLists[self.activeFence].items) |allocation| {
				self.finalFree(allocation);
			}
			self.fencedFreeLists[self.activeFence].clearRetainingCapacity();
			_ = c.glClientWaitSync(self.fences[self.activeFence], 0, c.GL_TIMEOUT_IGNORED); // Make sure the render calls that accessed these parts of the buffer have finished.
		}

		pub fn endRender(self: *Self) void {
			c.glDeleteSync(self.fences[self.activeFence]);
			self.fences[self.activeFence] = c.glFenceSync(c.GL_SYNC_GPU_COMMANDS_COMPLETE, 0);
		}

		pub fn rawAlloc(self: *Self, size: u31) SubAllocation {
			var smallestBlock: ?*SubAllocation = null;
			for(self.freeBlocks.items, 0..) |*block, i| {
				if(size == block.len) {
					self.used += size;
					return self.freeBlocks.swapRemove(i);
				}
				if(size < block.len and if(smallestBlock) |_smallestBlock| block.len < _smallestBlock.len else true) {
					smallestBlock = block;
				}
			}
			if(smallestBlock) |block| {
				const result = SubAllocation {.start = block.start, .len = size};
				block.start += size;
				block.len -= size;
				self.used += size;
				return result;
			} else {
				std.log.info("Resizing internal mesh buffer from {} MiB to {} MiB", .{@as(usize, self.capacity)*@sizeOf(Entry) >> 20, (@as(usize, self.capacity)*@sizeOf(Entry) >> 20)*2});
				const oldBuffer = self.ssbo;
				defer oldBuffer.deinit();
				const oldCapacity = self.capacity;
				self.createBuffer(self.capacity*|2); // TODO: Is there a way to free the old buffer before creating the new one?
				if(self.capacity == oldCapacity) @panic("Not enough addressable GPU memory available.");
				self.used += self.capacity - oldCapacity;
				self.finalFree(.{.start = oldCapacity, .len = self.capacity - oldCapacity});

				c.glBindBuffer(c.GL_COPY_READ_BUFFER, oldBuffer.bufferID);
				c.glBindBuffer(c.GL_COPY_WRITE_BUFFER, self.ssbo.bufferID);
				c.glCopyBufferSubData(c.GL_COPY_READ_BUFFER, c.GL_COPY_WRITE_BUFFER, 0, 0, @as(c.GLsizeiptr, oldCapacity)*@sizeOf(Entry));
				return rawAlloc(self, size);
			}
		}

		fn finalFree(self: *Self, _allocation: SubAllocation) void {
			if(_allocation.len == 0) return;
			self.used -= _allocation.len;
			var allocation = _allocation;
			for(self.freeBlocks.items, 0..) |*block, i| {
				if(allocation.start + allocation.len == block.start) {
					allocation.len += block.len;
					_ = self.freeBlocks.swapRemove(i);
					break;
				}
			}
			for(self.freeBlocks.items) |*block| {
				if(allocation.start == block.start + block.len) {
					block.len += allocation.len;
					return;
				}
			}
			self.freeBlocks.append(allocation);
		}

		pub fn free(self: *Self, allocation: SubAllocation) void {
			if(allocation.len == 0) return;
			self.fencedFreeLists[self.activeFence].append(allocation);
		}

		/// Must unmap after use!
		pub fn allocateAndMapRange(self: *Self, len: usize, allocation: *SubAllocation) []Entry {
			self.free(allocation.*);
			if(len == 0) {
				allocation.len = 0;
				return &.{};
			}
			allocation.* = self.rawAlloc(@intCast(len));
			c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.ssbo.bufferID);
			const ptr: [*]Entry = @ptrCast(@alignCast(
				c.glMapBufferRange(c.GL_SHADER_STORAGE_BUFFER, @as(c.GLintptr, allocation.start)*@sizeOf(Entry), @as(c.GLsizeiptr, allocation.len)*@sizeOf(Entry), c.GL_MAP_WRITE_BIT | c.GL_MAP_INVALIDATE_RANGE_BIT)
			));
			return ptr[0..len];
		}

		pub fn unmapRange(self: *Self, range: []Entry) void {
			if(range.len == 0) return;
			c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.ssbo.bufferID);
			std.debug.assert(c.glUnmapBuffer(c.GL_SHADER_STORAGE_BUFFER) == c.GL_TRUE);
		}

		pub fn uploadData(self: *Self, data: []const Entry, allocation: *SubAllocation) void {
			self.free(allocation.*);
			if(data.len == 0) {
				allocation.len = 0;
				return;
			}
			allocation.* = self.rawAlloc(@intCast(data.len));
			c.glBindBuffer(c.GL_SHADER_STORAGE_BUFFER, self.ssbo.bufferID);
			const ptr: [*]Entry = @ptrCast(@alignCast(
				c.glMapBufferRange(c.GL_SHADER_STORAGE_BUFFER, @as(c.GLintptr, allocation.start)*@sizeOf(Entry), @as(c.GLsizeiptr, allocation.len)*@sizeOf(Entry), c.GL_MAP_WRITE_BIT | c.GL_MAP_INVALIDATE_RANGE_BIT)
			));
			@memcpy(ptr, data);
			std.debug.assert(c.glUnmapBuffer(c.GL_SHADER_STORAGE_BUFFER) == c.GL_TRUE);
		}
	};
}

pub const FrameBuffer = struct {
	frameBuffer: c_uint,
	texture: c_uint,
	hasDepthTexture: bool,
	depthTexture: c_uint,

	pub fn init(self: *FrameBuffer, hasDepthTexture: bool, textureFilter: c_int, textureWrap: c_int) void {
		self.* = FrameBuffer{
			.frameBuffer = undefined,
			.texture = undefined,
			.depthTexture = undefined,
			.hasDepthTexture = hasDepthTexture,
		};
		c.glGenFramebuffers(1, &self.frameBuffer);
		c.glBindFramebuffer(c.GL_FRAMEBUFFER, self.frameBuffer);
		if(hasDepthTexture) {
			c.glGenTextures(1, &self.depthTexture);
			c.glBindTexture(c.GL_TEXTURE_2D, self.depthTexture);
			c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MIN_FILTER, textureFilter);
			c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MAG_FILTER, textureFilter);
			c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_S, textureWrap);
			c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_T, textureWrap);
			c.glFramebufferTexture2D(c.GL_FRAMEBUFFER, c.GL_DEPTH_ATTACHMENT, c.GL_TEXTURE_2D, self.depthTexture, 0);
		}
		c.glGenTextures(1, &self.texture);
		c.glBindTexture(c.GL_TEXTURE_2D, self.texture);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MIN_FILTER, textureFilter);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MAG_FILTER, textureFilter);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_S, textureWrap);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_T, textureWrap);
		c.glFramebufferTexture2D(c.GL_FRAMEBUFFER, c.GL_COLOR_ATTACHMENT0, c.GL_TEXTURE_2D, self.texture, 0);

		c.glBindFramebuffer(c.GL_FRAMEBUFFER, 0);
	}

	pub fn deinit(self: *FrameBuffer) void {
		c.glDeleteFramebuffers(1, &self.frameBuffer);
		if(self.hasDepthTexture) {
			c.glDeleteRenderbuffers(1, &self.depthTexture);
		}
		c.glDeleteTextures(1, &self.texture);
	}

	pub fn updateSize(self: *FrameBuffer, _width: u31, _height: u31, internalFormat: c_int) void {
		const width = @max(_width, 1);
		const height = @max(_height, 1);
		c.glBindFramebuffer(c.GL_FRAMEBUFFER, self.frameBuffer);
		if(self.hasDepthTexture) {
			c.glBindTexture(c.GL_TEXTURE_2D, self.depthTexture);
			c.glTexImage2D(c.GL_TEXTURE_2D, 0, c.GL_DEPTH_COMPONENT32F, width, height, 0, c.GL_DEPTH_COMPONENT, c.GL_FLOAT, null);
		}

		c.glBindTexture(c.GL_TEXTURE_2D, self.texture);
		c.glTexImage2D(c.GL_TEXTURE_2D, 0, internalFormat, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
	}

	pub fn clear(_: FrameBuffer, clearColor: Vec4f) void {
		c.glClearColor(clearColor[0], clearColor[1], clearColor[2], clearColor[3]);
		c.glClear(c.GL_COLOR_BUFFER_BIT | c.GL_DEPTH_BUFFER_BIT);
	}

	pub fn validate(self: *const FrameBuffer) bool {
		c.glBindFramebuffer(c.GL_FRAMEBUFFER, self.frameBuffer);
		defer c.glBindFramebuffer(c.GL_FRAMEBUFFER, 0);
		if(c.glCheckFramebufferStatus(c.GL_FRAMEBUFFER) != c.GL_FRAMEBUFFER_COMPLETE) {
			std.log.err("Frame Buffer Object error: {}", .{c.glCheckFramebufferStatus(c.GL_FRAMEBUFFER)});
			return false;
		}
		return true;
	}

	pub fn bindTexture(self: *const FrameBuffer, target: c_uint) void {
		c.glActiveTexture(target);
		c.glBindTexture(c.GL_TEXTURE_2D, self.texture);
	}

	pub fn bindDepthTexture(self: *const FrameBuffer, target: c_uint) void {
		std.debug.assert(self.hasDepthTexture);
		c.glActiveTexture(target);
		c.glBindTexture(c.GL_TEXTURE_2D, self.depthTexture);
	}

	pub fn bind(self: *const FrameBuffer) void {
		c.glBindFramebuffer(c.GL_FRAMEBUFFER, self.frameBuffer);
	}

	pub fn unbind(_: *const FrameBuffer) void {
		c.glBindFramebuffer(c.GL_FRAMEBUFFER, 0);
	}
};

pub const TextureArray = struct {
	textureID: c_uint,

	pub fn init() TextureArray {
		var self: TextureArray = undefined;
		c.glGenTextures(1, &self.textureID);
		return self;
	}

	pub fn deinit(self: TextureArray) void {
		c.glDeleteTextures(1, &self.textureID);
	}

	pub fn bind(self: TextureArray) void {
		c.glBindTexture(c.GL_TEXTURE_2D_ARRAY, self.textureID);
	}

	fn lodColorInterpolation(colors: [4]Color, alphaCorrection: bool) Color {
		var r: [4]f32 = undefined;
		var g: [4]f32 = undefined;
		var b: [4]f32 = undefined;
		var a: [4]f32 = undefined;
		for(0..4) |i| {
			r[i] = @floatFromInt(colors[i].r);
			g[i] = @floatFromInt(colors[i].g);
			b[i] = @floatFromInt(colors[i].b);
			a[i] = @floatFromInt(colors[i].a);
		}
		// Use gamma corrected average(https://stackoverflow.com/a/832314/13082649):
		var aSum: f32 = 0;
		var rSum: f32 = 0;
		var gSum: f32 = 0;
		var bSum: f32 = 0;
		for(0..4) |i| {
			const w = if(alphaCorrection) a[i]*a[i] else 1;
			aSum += a[i]*a[i];
			rSum += w*r[i]*r[i];
			gSum += w*g[i]*g[i];
			bSum += w*b[i]*b[i];
		}
		aSum = @sqrt(aSum)/2;
		rSum = @sqrt(rSum)/2;
		gSum = @sqrt(gSum)/2;
		bSum = @sqrt(bSum)/2;
		if(alphaCorrection and aSum != 0) {
			rSum /= aSum;
			gSum /= aSum;
			bSum /= aSum;
		}
		return Color{.r=@intFromFloat(rSum), .g=@intFromFloat(gSum), .b=@intFromFloat(bSum), .a=@intFromFloat(aSum)};
	}

	/// (Re-)Generates the GPU buffer.
	pub fn generate(self: TextureArray, images: []Image, mipmapping: bool, alphaCorrectMipmapping: bool) void {
		var maxWidth: u31 = 0;
		var maxHeight: u31 = 0;
		for(images) |image| {
			maxWidth = @max(maxWidth, image.width);
			maxHeight = @max(maxHeight, image.height);
		}
		// Make sure the width and height use a power of 2:
		if(maxWidth-1 & maxWidth != 0) {
			maxWidth = @as(u31, 2) << std.math.log2_int(u31, maxWidth);
		}
		if(maxHeight-1 & maxHeight != 0) {
			maxHeight = @as(u31, 2) << std.math.log2_int(u31, maxHeight);
		}

		std.log.debug("Creating Texture Array of size {}×{} with {} layers.", .{maxWidth, maxHeight, images.len});

		self.bind();

		const maxLOD = if(mipmapping) 1 + std.math.log2_int(u31, @min(maxWidth, maxHeight)) else 1;
		for (0..maxLOD) |i| {
			c.glTexImage3D(c.GL_TEXTURE_2D_ARRAY, @intCast(i), c.GL_RGBA8, @max(0, maxWidth >> @intCast(i)), @max(0, maxHeight >> @intCast(i)), @intCast(images.len), 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		}
		var arena = main.utils.NeverFailingArenaAllocator.init(main.stackAllocator);
		defer arena.deinit();
		const lodBuffer: [][]Color = arena.allocator().alloc([]Color, maxLOD);
		for(lodBuffer, 0..) |*buffer, i| {
			buffer.* = arena.allocator().alloc(Color, (maxWidth >> @intCast(i))*(maxHeight >> @intCast(i)));
		}
		
		for(images, 0..) |image, i| {
			// Fill the buffer using nearest sampling. Probably not the best solutions for all textures, but that's what happens when someone doesn't use power of 2 textures...
			for(0..maxWidth) |x| {
				for(0..maxHeight) |y| {
					const index = x + y*maxWidth;
					const imageIndex = (x*image.width)/maxWidth + image.width*((y*image.height)/maxHeight);
					lodBuffer[0][index] = image.imageData[imageIndex];
				}
			}

			// Calculate the mipmap levels:
			for(lodBuffer, 0..) |_, _lod| {
				const lod: u5 = @intCast(_lod);
				const curWidth = maxWidth >> lod;
				const curHeight = maxHeight >> lod;
				if(lod != 0) {
					for(0..curWidth) |x| {
						for(0..curHeight) |y| {
							const index = x + y*curWidth;
							const index2 = 2*x + 2*y*2*curWidth;
							const colors = [4]Color {
								lodBuffer[lod-1][index2],
								lodBuffer[lod-1][index2 + 1],
								lodBuffer[lod-1][index2 + curWidth*2],
								lodBuffer[lod-1][index2 + curWidth*2 + 1],
							};
							lodBuffer[lod][index] = lodColorInterpolation(colors, alphaCorrectMipmapping);
						}
					}
				}
				c.glTexSubImage3D(c.GL_TEXTURE_2D_ARRAY, lod, 0, 0, @intCast(i), curWidth, curHeight, 1, c.GL_RGBA, c.GL_UNSIGNED_BYTE, lodBuffer[lod].ptr);
			}
		}
		c.glTexParameteri(c.GL_TEXTURE_2D_ARRAY, c.GL_TEXTURE_MAX_LOD, maxLOD);
		//glGenerateMipmap(GL_TEXTURE_2D_ARRAY);
		c.glTexParameteri(c.GL_TEXTURE_2D_ARRAY, c.GL_TEXTURE_MIN_FILTER, c.GL_NEAREST_MIPMAP_LINEAR);
		c.glTexParameteri(c.GL_TEXTURE_2D_ARRAY, c.GL_TEXTURE_MAG_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D_ARRAY, c.GL_TEXTURE_WRAP_S, c.GL_REPEAT);
		c.glTexParameteri(c.GL_TEXTURE_2D_ARRAY, c.GL_TEXTURE_WRAP_T, c.GL_REPEAT);
	}
};

pub const Texture = struct {
	textureID: c_uint,

	pub fn init() Texture {
		var self: Texture = undefined;
		c.glGenTextures(1, &self.textureID);
		return self;
	}

	pub fn initFromFile(comptime path: []const u8) Texture {
		const self = Texture.init();
		const image = Image.readFromFile(main.stackAllocator, path) catch |err| blk: {
			std.log.err("Couldn't read image from {s}: {s}", .{path, @errorName(err)});
			break :blk Image.defaultImage;
		};
		defer image.deinit(main.stackAllocator);
		self.generate(image);
		return self;
	}

	pub fn deinit(self: Texture) void {
		c.glDeleteTextures(1, &self.textureID);
	}

	pub fn bindTo(self: Texture, binding: u5) void {
		c.glActiveTexture(@intCast(c.GL_TEXTURE0 + binding));
		c.glBindTexture(c.GL_TEXTURE_2D, self.textureID);
	}

	pub fn bind(self: Texture) void {
		c.glBindTexture(c.GL_TEXTURE_2D, self.textureID);
	}

	/// (Re-)Generates the GPU buffer.
	pub fn generate(self: Texture, image: Image) void {
		self.bind();

		c.glTexImage2D(c.GL_TEXTURE_2D, 0, c.GL_RGBA8, image.width, image.height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, image.imageData.ptr);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MIN_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_MAG_FILTER, c.GL_NEAREST);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_S, c.GL_REPEAT);
		c.glTexParameteri(c.GL_TEXTURE_2D, c.GL_TEXTURE_WRAP_T, c.GL_REPEAT);
	}

	pub fn render(self: Texture, pos: Vec2f, dim: Vec2f) void {
		self.bindTo(0);
		draw.boundImage(pos, dim);
	}

	pub fn size(self: Texture) Vec2i {
		self.bind();
		var result: Vec2i = undefined;
		c.glGetTexLevelParameteriv(c.GL_TEXTURE_2D, 0, c.GL_TEXTURE_WIDTH, &result[0]);
		c.glGetTexLevelParameteriv(c.GL_TEXTURE_2D, 0, c.GL_TEXTURE_HEIGHT, &result[1]);
		return result;
	}
};

pub const CubeMapTexture = struct {
	textureID: c_uint,

	pub fn init() CubeMapTexture {
		var self: CubeMapTexture = undefined;
		c.glGenTextures(1, &self.textureID);
		return self;
	}

	pub fn deinit(self: CubeMapTexture) void {
		c.glDeleteTextures(1, &self.textureID);
	}

	pub fn bindTo(self: CubeMapTexture, binding: u5) void {
		c.glActiveTexture(@intCast(c.GL_TEXTURE0 + binding));
		c.glBindTexture(c.GL_TEXTURE_CUBE_MAP, self.textureID);
	}

	pub fn bind(self: CubeMapTexture) void {
		c.glBindTexture(c.GL_TEXTURE_CUBE_MAP, self.textureID);
	}

	/// (Re-)Generates the GPU buffer.
	pub fn generate(self: CubeMapTexture, width: u31, height: u31) void {
		self.bind();

		c.glTexImage2D(c.GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0, c.GL_RGBA8, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		c.glTexImage2D(c.GL_TEXTURE_CUBE_MAP_NEGATIVE_X, 0, c.GL_RGBA8, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		c.glTexImage2D(c.GL_TEXTURE_CUBE_MAP_POSITIVE_Y, 0, c.GL_RGBA8, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		c.glTexImage2D(c.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, 0, c.GL_RGBA8, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		c.glTexImage2D(c.GL_TEXTURE_CUBE_MAP_POSITIVE_Z, 0, c.GL_RGBA8, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		c.glTexImage2D(c.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, 0, c.GL_RGBA8, width, height, 0, c.GL_RGBA, c.GL_UNSIGNED_BYTE, null);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_MIN_FILTER, c.GL_LINEAR);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_MAG_FILTER, c.GL_LINEAR);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_WRAP_S, c.GL_CLAMP_TO_EDGE);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_WRAP_T, c.GL_CLAMP_TO_EDGE);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_WRAP_R, c.GL_CLAMP_TO_EDGE);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_BASE_LEVEL, 0);
		c.glTexParameteri(c.GL_TEXTURE_CUBE_MAP, c.GL_TEXTURE_MAX_LEVEL, 0);
	}

	pub fn faceNormal(face: usize) Vec3f {
		const normals = [_]Vec3f {
			.{ 1, 0, 0}, // +x
			.{-1, 0, 0}, // -x
			.{0,  1, 0}, // +y
			.{0, -1, 0}, // -y
			.{0, 0,  1}, // +z
			.{0, 0, -1}, // -z
		};
		return normals[face];
	}

	pub fn faceUp(face: usize) Vec3f {
		const ups = [_]Vec3f {
			.{0, -1, 0}, // +x
			.{0, -1, 0}, // -x
			.{0, 0,  1}, // +y
			.{0, 0, -1}, // -y
			.{0, -1, 0}, // +z
			.{0, -1, 0}, // -z
		};
		return ups[face];
	}

	pub fn faceRight(face: usize) Vec3f {
		comptime var rights: [6]Vec3f = undefined;
		inline for(0..6) |i| {
			rights[i] = comptime vec.cross(faceNormal(i), faceUp(i));
		}
		return rights[face];
	}

	pub fn bindToFramebuffer(self: CubeMapTexture, fb: FrameBuffer, face: c_uint) void {
		fb.bind();
		c.glFramebufferTexture2D(c.GL_FRAMEBUFFER, c.GL_COLOR_ATTACHMENT0, @as(c_uint, c.GL_TEXTURE_CUBE_MAP_POSITIVE_X) + face, self.textureID, 0);
	}
};

pub const Color = extern struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,

	pub fn toARBG(self: Color) u32 {
		return @as(u32, self.a)<<24 | @as(u32, self.r)<<16 | @as(u32, self.g)<<8 | @as(u32, self.b);
	}
};

pub const Image = struct {
	var defaultImageData = [4]Color {
		Color{.r=0, .g=0, .b=0, .a=255},
		Color{.r=255, .g=0, .b=255, .a=255},
		Color{.r=255, .g=0, .b=255, .a=255},
		Color{.r=0, .g=0, .b=0, .a=255},
	};
	pub const defaultImage = Image {
		.width = 2,
		.height = 2,
		.imageData = &defaultImageData,
	};
	var emptyImageData = [1]Color {
		Color{.r=0, .g=0, .b=0, .a=0},
	};
	pub const emptyImage = Image {
		.width = 1,
		.height = 1,
		.imageData = &emptyImageData,
	};
	var whiteImageData = [1]Color {
		Color{.r=255, .g=255, .b=255, .a=255},
	};
	pub const whiteEmptyImage = Image {
		.width = 1,
		.height = 1,
		.imageData = &whiteImageData,
	};
	width: u31,
	height: u31,
	imageData: []Color,
	pub fn init(allocator: NeverFailingAllocator, width: u31, height: u31) Image {
		return Image{
			.width = width,
			.height = height,
			.imageData = allocator.alloc(Color, width*height),
		};
	}
	pub fn deinit(self: Image, allocator: NeverFailingAllocator) void {
		if(self.imageData.ptr == &defaultImageData or self.imageData.ptr == &emptyImageData or self.imageData.ptr == &whiteImageData) return;
		allocator.free(self.imageData);
	}
	pub fn readFromFile(allocator: NeverFailingAllocator, comptime path: []const u8) !Image {
		return readFromFileRaw(allocator, @embedFile(path));
	}
	fn readFromFileRaw(allocator: NeverFailingAllocator, rawData: []const u8) !Image {
		var result: Image = undefined;
		var channel: c_int = undefined;
		stb_image.stbi_set_flip_vertically_on_load(1);
		const data = stb_image.stbi_load_from_memory(rawData.ptr, @intCast(rawData.len), @ptrCast(&result.width), @ptrCast(&result.height), &channel, 4) orelse {
			return error.FileNotFound;
		};
		result.imageData = allocator.dupe(Color, @as([*]Color, @ptrCast(data))[0..result.width*result.height]);
		stb_image.stbi_image_free(data);
		return result;
	}
	pub fn readUnflippedFromFile(allocator: NeverFailingAllocator, comptime path: []const u8) !Image {
		return readUnflippedFromFileRaw(allocator, @embedFile(path));
	}
	fn readUnflippedFromFileRaw(allocator: NeverFailingAllocator, rawData: []const u8) !Image {
		var result: Image = undefined;
		var channel: c_int = undefined;
		const data = stb_image.stbi_load_from_memory(rawData.ptr, @intCast(rawData.len), @ptrCast(&result.width), @ptrCast(&result.height), &channel, 4) orelse {
			return error.FileNotFound;
		};
		result.imageData = allocator.dupe(Color, @as([*]Color, @ptrCast(data))[0..result.width*result.height]);
		stb_image.stbi_image_free(data);
		return result;
	}
	pub fn exportToFile(self: Image, path: []const u8) !void {
		const nullTerminated = main.stackAllocator.dupeZ(u8, path);
		defer main.stackAllocator.free(nullTerminated);
		_ = stb_image.stbi_write_png(nullTerminated.ptr, self.width, self.height, 4, self.imageData.ptr, self.width*4); // TODO: Handle the return type.
	}
	pub fn getRGB(self: Image, x: usize, y: usize) Color {
		std.debug.assert(x < self.width);
		std.debug.assert(y < self.height);
		const index = x + y*self.width;
		return self.imageData[index];
	}
	pub fn setRGB(self: Image, x: usize, y: usize, rgb: Color) void {
		std.debug.assert(x < self.width);
		std.debug.assert(y < self.height);
		const index = x + y*self.width;
		self.imageData[index] = rgb;
	}
};