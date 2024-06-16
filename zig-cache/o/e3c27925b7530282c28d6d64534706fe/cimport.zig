pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct_gladGLversionStruct = extern struct {
    major: c_int = @import("std").mem.zeroes(c_int),
    minor: c_int = @import("std").mem.zeroes(c_int),
};
pub const GLADloadproc = ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque;
pub extern var GLVersion: struct_gladGLversionStruct;
pub extern fn gladLoadGL() c_int;
pub extern fn gladLoadGLLoader(GLADloadproc) c_int;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list; // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:584:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:581:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() void; // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:605:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:602:60: warning: unable to translate function, demoted to extern
pub extern fn __fastfail(arg_code: c_uint) noreturn;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_threadlocaleinfostruct = extern struct {
    _locale_pctype: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    _locale_mb_cur_max: c_int = @import("std").mem.zeroes(c_int),
    _locale_lc_codepage: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct___lc_time_data = opaque {};
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo = @import("std").mem.zeroes(pthreadlocinfo),
    mbcinfo: pthreadmbcinfo = @import("std").mem.zeroes(pthreadmbcinfo),
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCountry: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCodePage: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const LC_ID = struct_tagLC_ID;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = c_short;
pub const uint_least16_t = c_ushort;
pub const int_least32_t = c_int;
pub const uint_least32_t = c_uint;
pub const int_least64_t = c_longlong;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_longlong;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const khronos_int32_t = i32;
pub const khronos_uint32_t = u32;
pub const khronos_int64_t = i64;
pub const khronos_uint64_t = u64;
pub const khronos_int8_t = i8;
pub const khronos_uint8_t = u8;
pub const khronos_int16_t = c_short;
pub const khronos_uint16_t = c_ushort;
pub const khronos_intptr_t = isize;
pub const khronos_uintptr_t = usize;
pub const khronos_ssize_t = c_longlong;
pub const khronos_usize_t = c_ulonglong;
pub const khronos_float_t = f32;
pub const khronos_utime_nanoseconds_t = khronos_uint64_t;
pub const khronos_stime_nanoseconds_t = khronos_int64_t;
pub const KHRONOS_FALSE: c_int = 0;
pub const KHRONOS_TRUE: c_int = 1;
pub const KHRONOS_BOOLEAN_ENUM_FORCE_SIZE: c_int = 2147483647;
pub const khronos_boolean_enum_t = c_uint;
pub const GLenum = c_uint;
pub const GLboolean = u8;
pub const GLbitfield = c_uint;
pub const GLvoid = anyopaque;
pub const GLbyte = khronos_int8_t;
pub const GLubyte = khronos_uint8_t;
pub const GLshort = khronos_int16_t;
pub const GLushort = khronos_uint16_t;
pub const GLint = c_int;
pub const GLuint = c_uint;
pub const GLclampx = khronos_int32_t;
pub const GLsizei = c_int;
pub const GLfloat = khronos_float_t;
pub const GLclampf = khronos_float_t;
pub const GLdouble = f64;
pub const GLclampd = f64;
pub const GLeglClientBufferEXT = ?*anyopaque;
pub const GLeglImageOES = ?*anyopaque;
pub const GLchar = u8;
pub const GLcharARB = u8;
pub const GLhandleARB = c_uint;
pub const GLhalf = khronos_uint16_t;
pub const GLhalfARB = khronos_uint16_t;
pub const GLfixed = khronos_int32_t;
pub const GLintptr = khronos_intptr_t;
pub const GLintptrARB = khronos_intptr_t;
pub const GLsizeiptr = khronos_ssize_t;
pub const GLsizeiptrARB = khronos_ssize_t;
pub const GLint64 = khronos_int64_t;
pub const GLint64EXT = khronos_int64_t;
pub const GLuint64 = khronos_uint64_t;
pub const GLuint64EXT = khronos_uint64_t;
pub const struct___GLsync = opaque {};
pub const GLsync = ?*struct___GLsync;
pub const struct__cl_context = opaque {};
pub const struct__cl_event = opaque {};
pub const GLDEBUGPROC = ?*const fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar, ?*const anyopaque) callconv(.C) void;
pub const GLDEBUGPROCARB = ?*const fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar, ?*const anyopaque) callconv(.C) void;
pub const GLDEBUGPROCKHR = ?*const fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar, ?*const anyopaque) callconv(.C) void;
pub const GLDEBUGPROCAMD = ?*const fn (GLuint, GLenum, GLenum, GLsizei, [*c]const GLchar, ?*anyopaque) callconv(.C) void;
pub const GLhalfNV = c_ushort;
pub const GLvdpauSurfaceNV = GLintptr;
pub const GLVULKANPROCNV = ?*const fn () callconv(.C) void;
pub extern var GLAD_GL_VERSION_1_0: c_int;
pub const PFNGLCULLFACEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glCullFace: PFNGLCULLFACEPROC;
pub const PFNGLFRONTFACEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glFrontFace: PFNGLFRONTFACEPROC;
pub const PFNGLHINTPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glHint: PFNGLHINTPROC;
pub const PFNGLLINEWIDTHPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glLineWidth: PFNGLLINEWIDTHPROC;
pub const PFNGLPOINTSIZEPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glPointSize: PFNGLPOINTSIZEPROC;
pub const PFNGLPOLYGONMODEPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glPolygonMode: PFNGLPOLYGONMODEPROC;
pub const PFNGLSCISSORPROC = ?*const fn (GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glScissor: PFNGLSCISSORPROC;
pub const PFNGLTEXPARAMETERFPROC = ?*const fn (GLenum, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glTexParameterf: PFNGLTEXPARAMETERFPROC;
pub const PFNGLTEXPARAMETERFVPROC = ?*const fn (GLenum, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexParameterfv: PFNGLTEXPARAMETERFVPROC;
pub const PFNGLTEXPARAMETERIPROC = ?*const fn (GLenum, GLenum, GLint) callconv(.C) void;
pub extern var glad_glTexParameteri: PFNGLTEXPARAMETERIPROC;
pub const PFNGLTEXPARAMETERIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glTexParameteriv: PFNGLTEXPARAMETERIVPROC;
pub const PFNGLTEXIMAGE1DPROC = ?*const fn (GLenum, GLint, GLint, GLsizei, GLint, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexImage1D: PFNGLTEXIMAGE1DPROC;
pub const PFNGLTEXIMAGE2DPROC = ?*const fn (GLenum, GLint, GLint, GLsizei, GLsizei, GLint, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexImage2D: PFNGLTEXIMAGE2DPROC;
pub const PFNGLDRAWBUFFERPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glDrawBuffer: PFNGLDRAWBUFFERPROC;
pub const PFNGLCLEARPROC = ?*const fn (GLbitfield) callconv(.C) void;
pub extern var glad_glClear: PFNGLCLEARPROC;
pub const PFNGLCLEARCOLORPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glClearColor: PFNGLCLEARCOLORPROC;
pub const PFNGLCLEARSTENCILPROC = ?*const fn (GLint) callconv(.C) void;
pub extern var glad_glClearStencil: PFNGLCLEARSTENCILPROC;
pub const PFNGLCLEARDEPTHPROC = ?*const fn (GLdouble) callconv(.C) void;
pub extern var glad_glClearDepth: PFNGLCLEARDEPTHPROC;
pub const PFNGLSTENCILMASKPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glStencilMask: PFNGLSTENCILMASKPROC;
pub const PFNGLCOLORMASKPROC = ?*const fn (GLboolean, GLboolean, GLboolean, GLboolean) callconv(.C) void;
pub extern var glad_glColorMask: PFNGLCOLORMASKPROC;
pub const PFNGLDEPTHMASKPROC = ?*const fn (GLboolean) callconv(.C) void;
pub extern var glad_glDepthMask: PFNGLDEPTHMASKPROC;
pub const PFNGLDISABLEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glDisable: PFNGLDISABLEPROC;
pub const PFNGLENABLEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glEnable: PFNGLENABLEPROC;
pub const PFNGLFINISHPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glFinish: PFNGLFINISHPROC;
pub const PFNGLFLUSHPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glFlush: PFNGLFLUSHPROC;
pub const PFNGLBLENDFUNCPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBlendFunc: PFNGLBLENDFUNCPROC;
pub const PFNGLLOGICOPPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glLogicOp: PFNGLLOGICOPPROC;
pub const PFNGLSTENCILFUNCPROC = ?*const fn (GLenum, GLint, GLuint) callconv(.C) void;
pub extern var glad_glStencilFunc: PFNGLSTENCILFUNCPROC;
pub const PFNGLSTENCILOPPROC = ?*const fn (GLenum, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glStencilOp: PFNGLSTENCILOPPROC;
pub const PFNGLDEPTHFUNCPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glDepthFunc: PFNGLDEPTHFUNCPROC;
pub const PFNGLPIXELSTOREFPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glPixelStoref: PFNGLPIXELSTOREFPROC;
pub const PFNGLPIXELSTOREIPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glPixelStorei: PFNGLPIXELSTOREIPROC;
pub const PFNGLREADBUFFERPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glReadBuffer: PFNGLREADBUFFERPROC;
pub const PFNGLREADPIXELSPROC = ?*const fn (GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, ?*anyopaque) callconv(.C) void;
pub extern var glad_glReadPixels: PFNGLREADPIXELSPROC;
pub const PFNGLGETBOOLEANVPROC = ?*const fn (GLenum, [*c]GLboolean) callconv(.C) void;
pub extern var glad_glGetBooleanv: PFNGLGETBOOLEANVPROC;
pub const PFNGLGETDOUBLEVPROC = ?*const fn (GLenum, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetDoublev: PFNGLGETDOUBLEVPROC;
pub const PFNGLGETERRORPROC = ?*const fn () callconv(.C) GLenum;
pub extern var glad_glGetError: PFNGLGETERRORPROC;
pub const PFNGLGETFLOATVPROC = ?*const fn (GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetFloatv: PFNGLGETFLOATVPROC;
pub const PFNGLGETINTEGERVPROC = ?*const fn (GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetIntegerv: PFNGLGETINTEGERVPROC;
pub const PFNGLGETSTRINGPROC = ?*const fn (GLenum) callconv(.C) [*c]const GLubyte;
pub extern var glad_glGetString: PFNGLGETSTRINGPROC;
pub const PFNGLGETTEXIMAGEPROC = ?*const fn (GLenum, GLint, GLenum, GLenum, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetTexImage: PFNGLGETTEXIMAGEPROC;
pub const PFNGLGETTEXPARAMETERFVPROC = ?*const fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetTexParameterfv: PFNGLGETTEXPARAMETERFVPROC;
pub const PFNGLGETTEXPARAMETERIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTexParameteriv: PFNGLGETTEXPARAMETERIVPROC;
pub const PFNGLGETTEXLEVELPARAMETERFVPROC = ?*const fn (GLenum, GLint, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetTexLevelParameterfv: PFNGLGETTEXLEVELPARAMETERFVPROC;
pub const PFNGLGETTEXLEVELPARAMETERIVPROC = ?*const fn (GLenum, GLint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTexLevelParameteriv: PFNGLGETTEXLEVELPARAMETERIVPROC;
pub const PFNGLISENABLEDPROC = ?*const fn (GLenum) callconv(.C) GLboolean;
pub extern var glad_glIsEnabled: PFNGLISENABLEDPROC;
pub const PFNGLDEPTHRANGEPROC = ?*const fn (GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glDepthRange: PFNGLDEPTHRANGEPROC;
pub const PFNGLVIEWPORTPROC = ?*const fn (GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glViewport: PFNGLVIEWPORTPROC;
pub const PFNGLNEWLISTPROC = ?*const fn (GLuint, GLenum) callconv(.C) void;
pub extern var glad_glNewList: PFNGLNEWLISTPROC;
pub const PFNGLENDLISTPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glEndList: PFNGLENDLISTPROC;
pub const PFNGLCALLLISTPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glCallList: PFNGLCALLLISTPROC;
pub const PFNGLCALLLISTSPROC = ?*const fn (GLsizei, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCallLists: PFNGLCALLLISTSPROC;
pub const PFNGLDELETELISTSPROC = ?*const fn (GLuint, GLsizei) callconv(.C) void;
pub extern var glad_glDeleteLists: PFNGLDELETELISTSPROC;
pub const PFNGLGENLISTSPROC = ?*const fn (GLsizei) callconv(.C) GLuint;
pub extern var glad_glGenLists: PFNGLGENLISTSPROC;
pub const PFNGLLISTBASEPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glListBase: PFNGLLISTBASEPROC;
pub const PFNGLBEGINPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glBegin: PFNGLBEGINPROC;
pub const PFNGLBITMAPPROC = ?*const fn (GLsizei, GLsizei, GLfloat, GLfloat, GLfloat, GLfloat, [*c]const GLubyte) callconv(.C) void;
pub extern var glad_glBitmap: PFNGLBITMAPPROC;
pub const PFNGLCOLOR3BPROC = ?*const fn (GLbyte, GLbyte, GLbyte) callconv(.C) void;
pub extern var glad_glColor3b: PFNGLCOLOR3BPROC;
pub const PFNGLCOLOR3BVPROC = ?*const fn ([*c]const GLbyte) callconv(.C) void;
pub extern var glad_glColor3bv: PFNGLCOLOR3BVPROC;
pub const PFNGLCOLOR3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glColor3d: PFNGLCOLOR3DPROC;
pub const PFNGLCOLOR3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glColor3dv: PFNGLCOLOR3DVPROC;
pub const PFNGLCOLOR3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glColor3f: PFNGLCOLOR3FPROC;
pub const PFNGLCOLOR3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glColor3fv: PFNGLCOLOR3FVPROC;
pub const PFNGLCOLOR3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glColor3i: PFNGLCOLOR3IPROC;
pub const PFNGLCOLOR3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glColor3iv: PFNGLCOLOR3IVPROC;
pub const PFNGLCOLOR3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glColor3s: PFNGLCOLOR3SPROC;
pub const PFNGLCOLOR3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glColor3sv: PFNGLCOLOR3SVPROC;
pub const PFNGLCOLOR3UBPROC = ?*const fn (GLubyte, GLubyte, GLubyte) callconv(.C) void;
pub extern var glad_glColor3ub: PFNGLCOLOR3UBPROC;
pub const PFNGLCOLOR3UBVPROC = ?*const fn ([*c]const GLubyte) callconv(.C) void;
pub extern var glad_glColor3ubv: PFNGLCOLOR3UBVPROC;
pub const PFNGLCOLOR3UIPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glColor3ui: PFNGLCOLOR3UIPROC;
pub const PFNGLCOLOR3UIVPROC = ?*const fn ([*c]const GLuint) callconv(.C) void;
pub extern var glad_glColor3uiv: PFNGLCOLOR3UIVPROC;
pub const PFNGLCOLOR3USPROC = ?*const fn (GLushort, GLushort, GLushort) callconv(.C) void;
pub extern var glad_glColor3us: PFNGLCOLOR3USPROC;
pub const PFNGLCOLOR3USVPROC = ?*const fn ([*c]const GLushort) callconv(.C) void;
pub extern var glad_glColor3usv: PFNGLCOLOR3USVPROC;
pub const PFNGLCOLOR4BPROC = ?*const fn (GLbyte, GLbyte, GLbyte, GLbyte) callconv(.C) void;
pub extern var glad_glColor4b: PFNGLCOLOR4BPROC;
pub const PFNGLCOLOR4BVPROC = ?*const fn ([*c]const GLbyte) callconv(.C) void;
pub extern var glad_glColor4bv: PFNGLCOLOR4BVPROC;
pub const PFNGLCOLOR4DPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glColor4d: PFNGLCOLOR4DPROC;
pub const PFNGLCOLOR4DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glColor4dv: PFNGLCOLOR4DVPROC;
pub const PFNGLCOLOR4FPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glColor4f: PFNGLCOLOR4FPROC;
pub const PFNGLCOLOR4FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glColor4fv: PFNGLCOLOR4FVPROC;
pub const PFNGLCOLOR4IPROC = ?*const fn (GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glColor4i: PFNGLCOLOR4IPROC;
pub const PFNGLCOLOR4IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glColor4iv: PFNGLCOLOR4IVPROC;
pub const PFNGLCOLOR4SPROC = ?*const fn (GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glColor4s: PFNGLCOLOR4SPROC;
pub const PFNGLCOLOR4SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glColor4sv: PFNGLCOLOR4SVPROC;
pub const PFNGLCOLOR4UBPROC = ?*const fn (GLubyte, GLubyte, GLubyte, GLubyte) callconv(.C) void;
pub extern var glad_glColor4ub: PFNGLCOLOR4UBPROC;
pub const PFNGLCOLOR4UBVPROC = ?*const fn ([*c]const GLubyte) callconv(.C) void;
pub extern var glad_glColor4ubv: PFNGLCOLOR4UBVPROC;
pub const PFNGLCOLOR4UIPROC = ?*const fn (GLuint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glColor4ui: PFNGLCOLOR4UIPROC;
pub const PFNGLCOLOR4UIVPROC = ?*const fn ([*c]const GLuint) callconv(.C) void;
pub extern var glad_glColor4uiv: PFNGLCOLOR4UIVPROC;
pub const PFNGLCOLOR4USPROC = ?*const fn (GLushort, GLushort, GLushort, GLushort) callconv(.C) void;
pub extern var glad_glColor4us: PFNGLCOLOR4USPROC;
pub const PFNGLCOLOR4USVPROC = ?*const fn ([*c]const GLushort) callconv(.C) void;
pub extern var glad_glColor4usv: PFNGLCOLOR4USVPROC;
pub const PFNGLEDGEFLAGPROC = ?*const fn (GLboolean) callconv(.C) void;
pub extern var glad_glEdgeFlag: PFNGLEDGEFLAGPROC;
pub const PFNGLEDGEFLAGVPROC = ?*const fn ([*c]const GLboolean) callconv(.C) void;
pub extern var glad_glEdgeFlagv: PFNGLEDGEFLAGVPROC;
pub const PFNGLENDPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glEnd: PFNGLENDPROC;
pub const PFNGLINDEXDPROC = ?*const fn (GLdouble) callconv(.C) void;
pub extern var glad_glIndexd: PFNGLINDEXDPROC;
pub const PFNGLINDEXDVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glIndexdv: PFNGLINDEXDVPROC;
pub const PFNGLINDEXFPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glIndexf: PFNGLINDEXFPROC;
pub const PFNGLINDEXFVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glIndexfv: PFNGLINDEXFVPROC;
pub const PFNGLINDEXIPROC = ?*const fn (GLint) callconv(.C) void;
pub extern var glad_glIndexi: PFNGLINDEXIPROC;
pub const PFNGLINDEXIVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glIndexiv: PFNGLINDEXIVPROC;
pub const PFNGLINDEXSPROC = ?*const fn (GLshort) callconv(.C) void;
pub extern var glad_glIndexs: PFNGLINDEXSPROC;
pub const PFNGLINDEXSVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glIndexsv: PFNGLINDEXSVPROC;
pub const PFNGLNORMAL3BPROC = ?*const fn (GLbyte, GLbyte, GLbyte) callconv(.C) void;
pub extern var glad_glNormal3b: PFNGLNORMAL3BPROC;
pub const PFNGLNORMAL3BVPROC = ?*const fn ([*c]const GLbyte) callconv(.C) void;
pub extern var glad_glNormal3bv: PFNGLNORMAL3BVPROC;
pub const PFNGLNORMAL3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glNormal3d: PFNGLNORMAL3DPROC;
pub const PFNGLNORMAL3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glNormal3dv: PFNGLNORMAL3DVPROC;
pub const PFNGLNORMAL3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glNormal3f: PFNGLNORMAL3FPROC;
pub const PFNGLNORMAL3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glNormal3fv: PFNGLNORMAL3FVPROC;
pub const PFNGLNORMAL3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glNormal3i: PFNGLNORMAL3IPROC;
pub const PFNGLNORMAL3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glNormal3iv: PFNGLNORMAL3IVPROC;
pub const PFNGLNORMAL3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glNormal3s: PFNGLNORMAL3SPROC;
pub const PFNGLNORMAL3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glNormal3sv: PFNGLNORMAL3SVPROC;
pub const PFNGLRASTERPOS2DPROC = ?*const fn (GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glRasterPos2d: PFNGLRASTERPOS2DPROC;
pub const PFNGLRASTERPOS2DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glRasterPos2dv: PFNGLRASTERPOS2DVPROC;
pub const PFNGLRASTERPOS2FPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glRasterPos2f: PFNGLRASTERPOS2FPROC;
pub const PFNGLRASTERPOS2FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glRasterPos2fv: PFNGLRASTERPOS2FVPROC;
pub const PFNGLRASTERPOS2IPROC = ?*const fn (GLint, GLint) callconv(.C) void;
pub extern var glad_glRasterPos2i: PFNGLRASTERPOS2IPROC;
pub const PFNGLRASTERPOS2IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glRasterPos2iv: PFNGLRASTERPOS2IVPROC;
pub const PFNGLRASTERPOS2SPROC = ?*const fn (GLshort, GLshort) callconv(.C) void;
pub extern var glad_glRasterPos2s: PFNGLRASTERPOS2SPROC;
pub const PFNGLRASTERPOS2SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glRasterPos2sv: PFNGLRASTERPOS2SVPROC;
pub const PFNGLRASTERPOS3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glRasterPos3d: PFNGLRASTERPOS3DPROC;
pub const PFNGLRASTERPOS3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glRasterPos3dv: PFNGLRASTERPOS3DVPROC;
pub const PFNGLRASTERPOS3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glRasterPos3f: PFNGLRASTERPOS3FPROC;
pub const PFNGLRASTERPOS3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glRasterPos3fv: PFNGLRASTERPOS3FVPROC;
pub const PFNGLRASTERPOS3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glRasterPos3i: PFNGLRASTERPOS3IPROC;
pub const PFNGLRASTERPOS3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glRasterPos3iv: PFNGLRASTERPOS3IVPROC;
pub const PFNGLRASTERPOS3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glRasterPos3s: PFNGLRASTERPOS3SPROC;
pub const PFNGLRASTERPOS3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glRasterPos3sv: PFNGLRASTERPOS3SVPROC;
pub const PFNGLRASTERPOS4DPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glRasterPos4d: PFNGLRASTERPOS4DPROC;
pub const PFNGLRASTERPOS4DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glRasterPos4dv: PFNGLRASTERPOS4DVPROC;
pub const PFNGLRASTERPOS4FPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glRasterPos4f: PFNGLRASTERPOS4FPROC;
pub const PFNGLRASTERPOS4FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glRasterPos4fv: PFNGLRASTERPOS4FVPROC;
pub const PFNGLRASTERPOS4IPROC = ?*const fn (GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glRasterPos4i: PFNGLRASTERPOS4IPROC;
pub const PFNGLRASTERPOS4IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glRasterPos4iv: PFNGLRASTERPOS4IVPROC;
pub const PFNGLRASTERPOS4SPROC = ?*const fn (GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glRasterPos4s: PFNGLRASTERPOS4SPROC;
pub const PFNGLRASTERPOS4SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glRasterPos4sv: PFNGLRASTERPOS4SVPROC;
pub const PFNGLRECTDPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glRectd: PFNGLRECTDPROC;
pub const PFNGLRECTDVPROC = ?*const fn ([*c]const GLdouble, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glRectdv: PFNGLRECTDVPROC;
pub const PFNGLRECTFPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glRectf: PFNGLRECTFPROC;
pub const PFNGLRECTFVPROC = ?*const fn ([*c]const GLfloat, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glRectfv: PFNGLRECTFVPROC;
pub const PFNGLRECTIPROC = ?*const fn (GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glRecti: PFNGLRECTIPROC;
pub const PFNGLRECTIVPROC = ?*const fn ([*c]const GLint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glRectiv: PFNGLRECTIVPROC;
pub const PFNGLRECTSPROC = ?*const fn (GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glRects: PFNGLRECTSPROC;
pub const PFNGLRECTSVPROC = ?*const fn ([*c]const GLshort, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glRectsv: PFNGLRECTSVPROC;
pub const PFNGLTEXCOORD1DPROC = ?*const fn (GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord1d: PFNGLTEXCOORD1DPROC;
pub const PFNGLTEXCOORD1DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord1dv: PFNGLTEXCOORD1DVPROC;
pub const PFNGLTEXCOORD1FPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord1f: PFNGLTEXCOORD1FPROC;
pub const PFNGLTEXCOORD1FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord1fv: PFNGLTEXCOORD1FVPROC;
pub const PFNGLTEXCOORD1IPROC = ?*const fn (GLint) callconv(.C) void;
pub extern var glad_glTexCoord1i: PFNGLTEXCOORD1IPROC;
pub const PFNGLTEXCOORD1IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glTexCoord1iv: PFNGLTEXCOORD1IVPROC;
pub const PFNGLTEXCOORD1SPROC = ?*const fn (GLshort) callconv(.C) void;
pub extern var glad_glTexCoord1s: PFNGLTEXCOORD1SPROC;
pub const PFNGLTEXCOORD1SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glTexCoord1sv: PFNGLTEXCOORD1SVPROC;
pub const PFNGLTEXCOORD2DPROC = ?*const fn (GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord2d: PFNGLTEXCOORD2DPROC;
pub const PFNGLTEXCOORD2DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord2dv: PFNGLTEXCOORD2DVPROC;
pub const PFNGLTEXCOORD2FPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord2f: PFNGLTEXCOORD2FPROC;
pub const PFNGLTEXCOORD2FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord2fv: PFNGLTEXCOORD2FVPROC;
pub const PFNGLTEXCOORD2IPROC = ?*const fn (GLint, GLint) callconv(.C) void;
pub extern var glad_glTexCoord2i: PFNGLTEXCOORD2IPROC;
pub const PFNGLTEXCOORD2IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glTexCoord2iv: PFNGLTEXCOORD2IVPROC;
pub const PFNGLTEXCOORD2SPROC = ?*const fn (GLshort, GLshort) callconv(.C) void;
pub extern var glad_glTexCoord2s: PFNGLTEXCOORD2SPROC;
pub const PFNGLTEXCOORD2SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glTexCoord2sv: PFNGLTEXCOORD2SVPROC;
pub const PFNGLTEXCOORD3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord3d: PFNGLTEXCOORD3DPROC;
pub const PFNGLTEXCOORD3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord3dv: PFNGLTEXCOORD3DVPROC;
pub const PFNGLTEXCOORD3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord3f: PFNGLTEXCOORD3FPROC;
pub const PFNGLTEXCOORD3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord3fv: PFNGLTEXCOORD3FVPROC;
pub const PFNGLTEXCOORD3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glTexCoord3i: PFNGLTEXCOORD3IPROC;
pub const PFNGLTEXCOORD3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glTexCoord3iv: PFNGLTEXCOORD3IVPROC;
pub const PFNGLTEXCOORD3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glTexCoord3s: PFNGLTEXCOORD3SPROC;
pub const PFNGLTEXCOORD3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glTexCoord3sv: PFNGLTEXCOORD3SVPROC;
pub const PFNGLTEXCOORD4DPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord4d: PFNGLTEXCOORD4DPROC;
pub const PFNGLTEXCOORD4DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glTexCoord4dv: PFNGLTEXCOORD4DVPROC;
pub const PFNGLTEXCOORD4FPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord4f: PFNGLTEXCOORD4FPROC;
pub const PFNGLTEXCOORD4FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexCoord4fv: PFNGLTEXCOORD4FVPROC;
pub const PFNGLTEXCOORD4IPROC = ?*const fn (GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glTexCoord4i: PFNGLTEXCOORD4IPROC;
pub const PFNGLTEXCOORD4IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glTexCoord4iv: PFNGLTEXCOORD4IVPROC;
pub const PFNGLTEXCOORD4SPROC = ?*const fn (GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glTexCoord4s: PFNGLTEXCOORD4SPROC;
pub const PFNGLTEXCOORD4SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glTexCoord4sv: PFNGLTEXCOORD4SVPROC;
pub const PFNGLVERTEX2DPROC = ?*const fn (GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertex2d: PFNGLVERTEX2DPROC;
pub const PFNGLVERTEX2DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertex2dv: PFNGLVERTEX2DVPROC;
pub const PFNGLVERTEX2FPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glVertex2f: PFNGLVERTEX2FPROC;
pub const PFNGLVERTEX2FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertex2fv: PFNGLVERTEX2FVPROC;
pub const PFNGLVERTEX2IPROC = ?*const fn (GLint, GLint) callconv(.C) void;
pub extern var glad_glVertex2i: PFNGLVERTEX2IPROC;
pub const PFNGLVERTEX2IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glVertex2iv: PFNGLVERTEX2IVPROC;
pub const PFNGLVERTEX2SPROC = ?*const fn (GLshort, GLshort) callconv(.C) void;
pub extern var glad_glVertex2s: PFNGLVERTEX2SPROC;
pub const PFNGLVERTEX2SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertex2sv: PFNGLVERTEX2SVPROC;
pub const PFNGLVERTEX3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertex3d: PFNGLVERTEX3DPROC;
pub const PFNGLVERTEX3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertex3dv: PFNGLVERTEX3DVPROC;
pub const PFNGLVERTEX3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glVertex3f: PFNGLVERTEX3FPROC;
pub const PFNGLVERTEX3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertex3fv: PFNGLVERTEX3FVPROC;
pub const PFNGLVERTEX3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glVertex3i: PFNGLVERTEX3IPROC;
pub const PFNGLVERTEX3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glVertex3iv: PFNGLVERTEX3IVPROC;
pub const PFNGLVERTEX3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glVertex3s: PFNGLVERTEX3SPROC;
pub const PFNGLVERTEX3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertex3sv: PFNGLVERTEX3SVPROC;
pub const PFNGLVERTEX4DPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertex4d: PFNGLVERTEX4DPROC;
pub const PFNGLVERTEX4DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertex4dv: PFNGLVERTEX4DVPROC;
pub const PFNGLVERTEX4FPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glVertex4f: PFNGLVERTEX4FPROC;
pub const PFNGLVERTEX4FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertex4fv: PFNGLVERTEX4FVPROC;
pub const PFNGLVERTEX4IPROC = ?*const fn (GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glVertex4i: PFNGLVERTEX4IPROC;
pub const PFNGLVERTEX4IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glVertex4iv: PFNGLVERTEX4IVPROC;
pub const PFNGLVERTEX4SPROC = ?*const fn (GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glVertex4s: PFNGLVERTEX4SPROC;
pub const PFNGLVERTEX4SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertex4sv: PFNGLVERTEX4SVPROC;
pub const PFNGLCLIPPLANEPROC = ?*const fn (GLenum, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glClipPlane: PFNGLCLIPPLANEPROC;
pub const PFNGLCOLORMATERIALPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glColorMaterial: PFNGLCOLORMATERIALPROC;
pub const PFNGLFOGFPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glFogf: PFNGLFOGFPROC;
pub const PFNGLFOGFVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glFogfv: PFNGLFOGFVPROC;
pub const PFNGLFOGIPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glFogi: PFNGLFOGIPROC;
pub const PFNGLFOGIVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glFogiv: PFNGLFOGIVPROC;
pub const PFNGLLIGHTFPROC = ?*const fn (GLenum, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glLightf: PFNGLLIGHTFPROC;
pub const PFNGLLIGHTFVPROC = ?*const fn (GLenum, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glLightfv: PFNGLLIGHTFVPROC;
pub const PFNGLLIGHTIPROC = ?*const fn (GLenum, GLenum, GLint) callconv(.C) void;
pub extern var glad_glLighti: PFNGLLIGHTIPROC;
pub const PFNGLLIGHTIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glLightiv: PFNGLLIGHTIVPROC;
pub const PFNGLLIGHTMODELFPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glLightModelf: PFNGLLIGHTMODELFPROC;
pub const PFNGLLIGHTMODELFVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glLightModelfv: PFNGLLIGHTMODELFVPROC;
pub const PFNGLLIGHTMODELIPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glLightModeli: PFNGLLIGHTMODELIPROC;
pub const PFNGLLIGHTMODELIVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glLightModeliv: PFNGLLIGHTMODELIVPROC;
pub const PFNGLLINESTIPPLEPROC = ?*const fn (GLint, GLushort) callconv(.C) void;
pub extern var glad_glLineStipple: PFNGLLINESTIPPLEPROC;
pub const PFNGLMATERIALFPROC = ?*const fn (GLenum, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glMaterialf: PFNGLMATERIALFPROC;
pub const PFNGLMATERIALFVPROC = ?*const fn (GLenum, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMaterialfv: PFNGLMATERIALFVPROC;
pub const PFNGLMATERIALIPROC = ?*const fn (GLenum, GLenum, GLint) callconv(.C) void;
pub extern var glad_glMateriali: PFNGLMATERIALIPROC;
pub const PFNGLMATERIALIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glMaterialiv: PFNGLMATERIALIVPROC;
pub const PFNGLPOLYGONSTIPPLEPROC = ?*const fn ([*c]const GLubyte) callconv(.C) void;
pub extern var glad_glPolygonStipple: PFNGLPOLYGONSTIPPLEPROC;
pub const PFNGLSHADEMODELPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glShadeModel: PFNGLSHADEMODELPROC;
pub const PFNGLTEXENVFPROC = ?*const fn (GLenum, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glTexEnvf: PFNGLTEXENVFPROC;
pub const PFNGLTEXENVFVPROC = ?*const fn (GLenum, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexEnvfv: PFNGLTEXENVFVPROC;
pub const PFNGLTEXENVIPROC = ?*const fn (GLenum, GLenum, GLint) callconv(.C) void;
pub extern var glad_glTexEnvi: PFNGLTEXENVIPROC;
pub const PFNGLTEXENVIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glTexEnviv: PFNGLTEXENVIVPROC;
pub const PFNGLTEXGENDPROC = ?*const fn (GLenum, GLenum, GLdouble) callconv(.C) void;
pub extern var glad_glTexGend: PFNGLTEXGENDPROC;
pub const PFNGLTEXGENDVPROC = ?*const fn (GLenum, GLenum, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glTexGendv: PFNGLTEXGENDVPROC;
pub const PFNGLTEXGENFPROC = ?*const fn (GLenum, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glTexGenf: PFNGLTEXGENFPROC;
pub const PFNGLTEXGENFVPROC = ?*const fn (GLenum, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTexGenfv: PFNGLTEXGENFVPROC;
pub const PFNGLTEXGENIPROC = ?*const fn (GLenum, GLenum, GLint) callconv(.C) void;
pub extern var glad_glTexGeni: PFNGLTEXGENIPROC;
pub const PFNGLTEXGENIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glTexGeniv: PFNGLTEXGENIVPROC;
pub const PFNGLFEEDBACKBUFFERPROC = ?*const fn (GLsizei, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glFeedbackBuffer: PFNGLFEEDBACKBUFFERPROC;
pub const PFNGLSELECTBUFFERPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glSelectBuffer: PFNGLSELECTBUFFERPROC;
pub const PFNGLRENDERMODEPROC = ?*const fn (GLenum) callconv(.C) GLint;
pub extern var glad_glRenderMode: PFNGLRENDERMODEPROC;
pub const PFNGLINITNAMESPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glInitNames: PFNGLINITNAMESPROC;
pub const PFNGLLOADNAMEPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glLoadName: PFNGLLOADNAMEPROC;
pub const PFNGLPASSTHROUGHPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glPassThrough: PFNGLPASSTHROUGHPROC;
pub const PFNGLPOPNAMEPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPopName: PFNGLPOPNAMEPROC;
pub const PFNGLPUSHNAMEPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glPushName: PFNGLPUSHNAMEPROC;
pub const PFNGLCLEARACCUMPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glClearAccum: PFNGLCLEARACCUMPROC;
pub const PFNGLCLEARINDEXPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glClearIndex: PFNGLCLEARINDEXPROC;
pub const PFNGLINDEXMASKPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glIndexMask: PFNGLINDEXMASKPROC;
pub const PFNGLACCUMPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glAccum: PFNGLACCUMPROC;
pub const PFNGLPOPATTRIBPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPopAttrib: PFNGLPOPATTRIBPROC;
pub const PFNGLPUSHATTRIBPROC = ?*const fn (GLbitfield) callconv(.C) void;
pub extern var glad_glPushAttrib: PFNGLPUSHATTRIBPROC;
pub const PFNGLMAP1DPROC = ?*const fn (GLenum, GLdouble, GLdouble, GLint, GLint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMap1d: PFNGLMAP1DPROC;
pub const PFNGLMAP1FPROC = ?*const fn (GLenum, GLfloat, GLfloat, GLint, GLint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMap1f: PFNGLMAP1FPROC;
pub const PFNGLMAP2DPROC = ?*const fn (GLenum, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMap2d: PFNGLMAP2DPROC;
pub const PFNGLMAP2FPROC = ?*const fn (GLenum, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMap2f: PFNGLMAP2FPROC;
pub const PFNGLMAPGRID1DPROC = ?*const fn (GLint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glMapGrid1d: PFNGLMAPGRID1DPROC;
pub const PFNGLMAPGRID1FPROC = ?*const fn (GLint, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glMapGrid1f: PFNGLMAPGRID1FPROC;
pub const PFNGLMAPGRID2DPROC = ?*const fn (GLint, GLdouble, GLdouble, GLint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glMapGrid2d: PFNGLMAPGRID2DPROC;
pub const PFNGLMAPGRID2FPROC = ?*const fn (GLint, GLfloat, GLfloat, GLint, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glMapGrid2f: PFNGLMAPGRID2FPROC;
pub const PFNGLEVALCOORD1DPROC = ?*const fn (GLdouble) callconv(.C) void;
pub extern var glad_glEvalCoord1d: PFNGLEVALCOORD1DPROC;
pub const PFNGLEVALCOORD1DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glEvalCoord1dv: PFNGLEVALCOORD1DVPROC;
pub const PFNGLEVALCOORD1FPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glEvalCoord1f: PFNGLEVALCOORD1FPROC;
pub const PFNGLEVALCOORD1FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glEvalCoord1fv: PFNGLEVALCOORD1FVPROC;
pub const PFNGLEVALCOORD2DPROC = ?*const fn (GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glEvalCoord2d: PFNGLEVALCOORD2DPROC;
pub const PFNGLEVALCOORD2DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glEvalCoord2dv: PFNGLEVALCOORD2DVPROC;
pub const PFNGLEVALCOORD2FPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glEvalCoord2f: PFNGLEVALCOORD2FPROC;
pub const PFNGLEVALCOORD2FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glEvalCoord2fv: PFNGLEVALCOORD2FVPROC;
pub const PFNGLEVALMESH1PROC = ?*const fn (GLenum, GLint, GLint) callconv(.C) void;
pub extern var glad_glEvalMesh1: PFNGLEVALMESH1PROC;
pub const PFNGLEVALPOINT1PROC = ?*const fn (GLint) callconv(.C) void;
pub extern var glad_glEvalPoint1: PFNGLEVALPOINT1PROC;
pub const PFNGLEVALMESH2PROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glEvalMesh2: PFNGLEVALMESH2PROC;
pub const PFNGLEVALPOINT2PROC = ?*const fn (GLint, GLint) callconv(.C) void;
pub extern var glad_glEvalPoint2: PFNGLEVALPOINT2PROC;
pub const PFNGLALPHAFUNCPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glAlphaFunc: PFNGLALPHAFUNCPROC;
pub const PFNGLPIXELZOOMPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glPixelZoom: PFNGLPIXELZOOMPROC;
pub const PFNGLPIXELTRANSFERFPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glPixelTransferf: PFNGLPIXELTRANSFERFPROC;
pub const PFNGLPIXELTRANSFERIPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glPixelTransferi: PFNGLPIXELTRANSFERIPROC;
pub const PFNGLPIXELMAPFVPROC = ?*const fn (GLenum, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glPixelMapfv: PFNGLPIXELMAPFVPROC;
pub const PFNGLPIXELMAPUIVPROC = ?*const fn (GLenum, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glPixelMapuiv: PFNGLPIXELMAPUIVPROC;
pub const PFNGLPIXELMAPUSVPROC = ?*const fn (GLenum, GLsizei, [*c]const GLushort) callconv(.C) void;
pub extern var glad_glPixelMapusv: PFNGLPIXELMAPUSVPROC;
pub const PFNGLCOPYPIXELSPROC = ?*const fn (GLint, GLint, GLsizei, GLsizei, GLenum) callconv(.C) void;
pub extern var glad_glCopyPixels: PFNGLCOPYPIXELSPROC;
pub const PFNGLDRAWPIXELSPROC = ?*const fn (GLsizei, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glDrawPixels: PFNGLDRAWPIXELSPROC;
pub const PFNGLGETCLIPPLANEPROC = ?*const fn (GLenum, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetClipPlane: PFNGLGETCLIPPLANEPROC;
pub const PFNGLGETLIGHTFVPROC = ?*const fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetLightfv: PFNGLGETLIGHTFVPROC;
pub const PFNGLGETLIGHTIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetLightiv: PFNGLGETLIGHTIVPROC;
pub const PFNGLGETMAPDVPROC = ?*const fn (GLenum, GLenum, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetMapdv: PFNGLGETMAPDVPROC;
pub const PFNGLGETMAPFVPROC = ?*const fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetMapfv: PFNGLGETMAPFVPROC;
pub const PFNGLGETMAPIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetMapiv: PFNGLGETMAPIVPROC;
pub const PFNGLGETMATERIALFVPROC = ?*const fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetMaterialfv: PFNGLGETMATERIALFVPROC;
pub const PFNGLGETMATERIALIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetMaterialiv: PFNGLGETMATERIALIVPROC;
pub const PFNGLGETPIXELMAPFVPROC = ?*const fn (GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetPixelMapfv: PFNGLGETPIXELMAPFVPROC;
pub const PFNGLGETPIXELMAPUIVPROC = ?*const fn (GLenum, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetPixelMapuiv: PFNGLGETPIXELMAPUIVPROC;
pub const PFNGLGETPIXELMAPUSVPROC = ?*const fn (GLenum, [*c]GLushort) callconv(.C) void;
pub extern var glad_glGetPixelMapusv: PFNGLGETPIXELMAPUSVPROC;
pub const PFNGLGETPOLYGONSTIPPLEPROC = ?*const fn ([*c]GLubyte) callconv(.C) void;
pub extern var glad_glGetPolygonStipple: PFNGLGETPOLYGONSTIPPLEPROC;
pub const PFNGLGETTEXENVFVPROC = ?*const fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetTexEnvfv: PFNGLGETTEXENVFVPROC;
pub const PFNGLGETTEXENVIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTexEnviv: PFNGLGETTEXENVIVPROC;
pub const PFNGLGETTEXGENDVPROC = ?*const fn (GLenum, GLenum, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetTexGendv: PFNGLGETTEXGENDVPROC;
pub const PFNGLGETTEXGENFVPROC = ?*const fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetTexGenfv: PFNGLGETTEXGENFVPROC;
pub const PFNGLGETTEXGENIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTexGeniv: PFNGLGETTEXGENIVPROC;
pub const PFNGLISLISTPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsList: PFNGLISLISTPROC;
pub const PFNGLFRUSTUMPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glFrustum: PFNGLFRUSTUMPROC;
pub const PFNGLLOADIDENTITYPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glLoadIdentity: PFNGLLOADIDENTITYPROC;
pub const PFNGLLOADMATRIXFPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glLoadMatrixf: PFNGLLOADMATRIXFPROC;
pub const PFNGLLOADMATRIXDPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glLoadMatrixd: PFNGLLOADMATRIXDPROC;
pub const PFNGLMATRIXMODEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glMatrixMode: PFNGLMATRIXMODEPROC;
pub const PFNGLMULTMATRIXFPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMultMatrixf: PFNGLMULTMATRIXFPROC;
pub const PFNGLMULTMATRIXDPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMultMatrixd: PFNGLMULTMATRIXDPROC;
pub const PFNGLORTHOPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glOrtho: PFNGLORTHOPROC;
pub const PFNGLPOPMATRIXPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPopMatrix: PFNGLPOPMATRIXPROC;
pub const PFNGLPUSHMATRIXPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPushMatrix: PFNGLPUSHMATRIXPROC;
pub const PFNGLROTATEDPROC = ?*const fn (GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glRotated: PFNGLROTATEDPROC;
pub const PFNGLROTATEFPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glRotatef: PFNGLROTATEFPROC;
pub const PFNGLSCALEDPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glScaled: PFNGLSCALEDPROC;
pub const PFNGLSCALEFPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glScalef: PFNGLSCALEFPROC;
pub const PFNGLTRANSLATEDPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glTranslated: PFNGLTRANSLATEDPROC;
pub const PFNGLTRANSLATEFPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glTranslatef: PFNGLTRANSLATEFPROC;
pub extern var GLAD_GL_VERSION_1_1: c_int;
pub const PFNGLDRAWARRAYSPROC = ?*const fn (GLenum, GLint, GLsizei) callconv(.C) void;
pub extern var glad_glDrawArrays: PFNGLDRAWARRAYSPROC;
pub const PFNGLDRAWELEMENTSPROC = ?*const fn (GLenum, GLsizei, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glDrawElements: PFNGLDRAWELEMENTSPROC;
pub const PFNGLGETPOINTERVPROC = ?*const fn (GLenum, [*c]?*anyopaque) callconv(.C) void;
pub extern var glad_glGetPointerv: PFNGLGETPOINTERVPROC;
pub const PFNGLPOLYGONOFFSETPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glPolygonOffset: PFNGLPOLYGONOFFSETPROC;
pub const PFNGLCOPYTEXIMAGE1DPROC = ?*const fn (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLint) callconv(.C) void;
pub extern var glad_glCopyTexImage1D: PFNGLCOPYTEXIMAGE1DPROC;
pub const PFNGLCOPYTEXIMAGE2DPROC = ?*const fn (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLsizei, GLint) callconv(.C) void;
pub extern var glad_glCopyTexImage2D: PFNGLCOPYTEXIMAGE2DPROC;
pub const PFNGLCOPYTEXSUBIMAGE1DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint, GLsizei) callconv(.C) void;
pub extern var glad_glCopyTexSubImage1D: PFNGLCOPYTEXSUBIMAGE1DPROC;
pub const PFNGLCOPYTEXSUBIMAGE2DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glCopyTexSubImage2D: PFNGLCOPYTEXSUBIMAGE2DPROC;
pub const PFNGLTEXSUBIMAGE1DPROC = ?*const fn (GLenum, GLint, GLint, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexSubImage1D: PFNGLTEXSUBIMAGE1DPROC;
pub const PFNGLTEXSUBIMAGE2DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexSubImage2D: PFNGLTEXSUBIMAGE2DPROC;
pub const PFNGLBINDTEXTUREPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glBindTexture: PFNGLBINDTEXTUREPROC;
pub const PFNGLDELETETEXTURESPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteTextures: PFNGLDELETETEXTURESPROC;
pub const PFNGLGENTEXTURESPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenTextures: PFNGLGENTEXTURESPROC;
pub const PFNGLISTEXTUREPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsTexture: PFNGLISTEXTUREPROC;
pub const PFNGLARRAYELEMENTPROC = ?*const fn (GLint) callconv(.C) void;
pub extern var glad_glArrayElement: PFNGLARRAYELEMENTPROC;
pub const PFNGLCOLORPOINTERPROC = ?*const fn (GLint, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glColorPointer: PFNGLCOLORPOINTERPROC;
pub const PFNGLDISABLECLIENTSTATEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glDisableClientState: PFNGLDISABLECLIENTSTATEPROC;
pub const PFNGLEDGEFLAGPOINTERPROC = ?*const fn (GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glEdgeFlagPointer: PFNGLEDGEFLAGPOINTERPROC;
pub const PFNGLENABLECLIENTSTATEPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glEnableClientState: PFNGLENABLECLIENTSTATEPROC;
pub const PFNGLINDEXPOINTERPROC = ?*const fn (GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glIndexPointer: PFNGLINDEXPOINTERPROC;
pub const PFNGLINTERLEAVEDARRAYSPROC = ?*const fn (GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glInterleavedArrays: PFNGLINTERLEAVEDARRAYSPROC;
pub const PFNGLNORMALPOINTERPROC = ?*const fn (GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glNormalPointer: PFNGLNORMALPOINTERPROC;
pub const PFNGLTEXCOORDPOINTERPROC = ?*const fn (GLint, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexCoordPointer: PFNGLTEXCOORDPOINTERPROC;
pub const PFNGLVERTEXPOINTERPROC = ?*const fn (GLint, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glVertexPointer: PFNGLVERTEXPOINTERPROC;
pub const PFNGLARETEXTURESRESIDENTPROC = ?*const fn (GLsizei, [*c]const GLuint, [*c]GLboolean) callconv(.C) GLboolean;
pub extern var glad_glAreTexturesResident: PFNGLARETEXTURESRESIDENTPROC;
pub const PFNGLPRIORITIZETEXTURESPROC = ?*const fn (GLsizei, [*c]const GLuint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glPrioritizeTextures: PFNGLPRIORITIZETEXTURESPROC;
pub const PFNGLINDEXUBPROC = ?*const fn (GLubyte) callconv(.C) void;
pub extern var glad_glIndexub: PFNGLINDEXUBPROC;
pub const PFNGLINDEXUBVPROC = ?*const fn ([*c]const GLubyte) callconv(.C) void;
pub extern var glad_glIndexubv: PFNGLINDEXUBVPROC;
pub const PFNGLPOPCLIENTATTRIBPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPopClientAttrib: PFNGLPOPCLIENTATTRIBPROC;
pub const PFNGLPUSHCLIENTATTRIBPROC = ?*const fn (GLbitfield) callconv(.C) void;
pub extern var glad_glPushClientAttrib: PFNGLPUSHCLIENTATTRIBPROC;
pub extern var GLAD_GL_VERSION_1_2: c_int;
pub const PFNGLDRAWRANGEELEMENTSPROC = ?*const fn (GLenum, GLuint, GLuint, GLsizei, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glDrawRangeElements: PFNGLDRAWRANGEELEMENTSPROC;
pub const PFNGLTEXIMAGE3DPROC = ?*const fn (GLenum, GLint, GLint, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexImage3D: PFNGLTEXIMAGE3DPROC;
pub const PFNGLTEXSUBIMAGE3DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTexSubImage3D: PFNGLTEXSUBIMAGE3DPROC;
pub const PFNGLCOPYTEXSUBIMAGE3DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glCopyTexSubImage3D: PFNGLCOPYTEXSUBIMAGE3DPROC;
pub extern var GLAD_GL_VERSION_1_3: c_int;
pub const PFNGLACTIVETEXTUREPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glActiveTexture: PFNGLACTIVETEXTUREPROC;
pub const PFNGLSAMPLECOVERAGEPROC = ?*const fn (GLfloat, GLboolean) callconv(.C) void;
pub extern var glad_glSampleCoverage: PFNGLSAMPLECOVERAGEPROC;
pub const PFNGLCOMPRESSEDTEXIMAGE3DPROC = ?*const fn (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTexImage3D: PFNGLCOMPRESSEDTEXIMAGE3DPROC;
pub const PFNGLCOMPRESSEDTEXIMAGE2DPROC = ?*const fn (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTexImage2D: PFNGLCOMPRESSEDTEXIMAGE2DPROC;
pub const PFNGLCOMPRESSEDTEXIMAGE1DPROC = ?*const fn (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTexImage1D: PFNGLCOMPRESSEDTEXIMAGE1DPROC;
pub const PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTexSubImage3D: PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC;
pub const PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTexSubImage2D: PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC;
pub const PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC = ?*const fn (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTexSubImage1D: PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC;
pub const PFNGLGETCOMPRESSEDTEXIMAGEPROC = ?*const fn (GLenum, GLint, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetCompressedTexImage: PFNGLGETCOMPRESSEDTEXIMAGEPROC;
pub const PFNGLCLIENTACTIVETEXTUREPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glClientActiveTexture: PFNGLCLIENTACTIVETEXTUREPROC;
pub const PFNGLMULTITEXCOORD1DPROC = ?*const fn (GLenum, GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord1d: PFNGLMULTITEXCOORD1DPROC;
pub const PFNGLMULTITEXCOORD1DVPROC = ?*const fn (GLenum, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord1dv: PFNGLMULTITEXCOORD1DVPROC;
pub const PFNGLMULTITEXCOORD1FPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord1f: PFNGLMULTITEXCOORD1FPROC;
pub const PFNGLMULTITEXCOORD1FVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord1fv: PFNGLMULTITEXCOORD1FVPROC;
pub const PFNGLMULTITEXCOORD1IPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord1i: PFNGLMULTITEXCOORD1IPROC;
pub const PFNGLMULTITEXCOORD1IVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord1iv: PFNGLMULTITEXCOORD1IVPROC;
pub const PFNGLMULTITEXCOORD1SPROC = ?*const fn (GLenum, GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord1s: PFNGLMULTITEXCOORD1SPROC;
pub const PFNGLMULTITEXCOORD1SVPROC = ?*const fn (GLenum, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord1sv: PFNGLMULTITEXCOORD1SVPROC;
pub const PFNGLMULTITEXCOORD2DPROC = ?*const fn (GLenum, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord2d: PFNGLMULTITEXCOORD2DPROC;
pub const PFNGLMULTITEXCOORD2DVPROC = ?*const fn (GLenum, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord2dv: PFNGLMULTITEXCOORD2DVPROC;
pub const PFNGLMULTITEXCOORD2FPROC = ?*const fn (GLenum, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord2f: PFNGLMULTITEXCOORD2FPROC;
pub const PFNGLMULTITEXCOORD2FVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord2fv: PFNGLMULTITEXCOORD2FVPROC;
pub const PFNGLMULTITEXCOORD2IPROC = ?*const fn (GLenum, GLint, GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord2i: PFNGLMULTITEXCOORD2IPROC;
pub const PFNGLMULTITEXCOORD2IVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord2iv: PFNGLMULTITEXCOORD2IVPROC;
pub const PFNGLMULTITEXCOORD2SPROC = ?*const fn (GLenum, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord2s: PFNGLMULTITEXCOORD2SPROC;
pub const PFNGLMULTITEXCOORD2SVPROC = ?*const fn (GLenum, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord2sv: PFNGLMULTITEXCOORD2SVPROC;
pub const PFNGLMULTITEXCOORD3DPROC = ?*const fn (GLenum, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord3d: PFNGLMULTITEXCOORD3DPROC;
pub const PFNGLMULTITEXCOORD3DVPROC = ?*const fn (GLenum, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord3dv: PFNGLMULTITEXCOORD3DVPROC;
pub const PFNGLMULTITEXCOORD3FPROC = ?*const fn (GLenum, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord3f: PFNGLMULTITEXCOORD3FPROC;
pub const PFNGLMULTITEXCOORD3FVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord3fv: PFNGLMULTITEXCOORD3FVPROC;
pub const PFNGLMULTITEXCOORD3IPROC = ?*const fn (GLenum, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord3i: PFNGLMULTITEXCOORD3IPROC;
pub const PFNGLMULTITEXCOORD3IVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord3iv: PFNGLMULTITEXCOORD3IVPROC;
pub const PFNGLMULTITEXCOORD3SPROC = ?*const fn (GLenum, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord3s: PFNGLMULTITEXCOORD3SPROC;
pub const PFNGLMULTITEXCOORD3SVPROC = ?*const fn (GLenum, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord3sv: PFNGLMULTITEXCOORD3SVPROC;
pub const PFNGLMULTITEXCOORD4DPROC = ?*const fn (GLenum, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord4d: PFNGLMULTITEXCOORD4DPROC;
pub const PFNGLMULTITEXCOORD4DVPROC = ?*const fn (GLenum, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMultiTexCoord4dv: PFNGLMULTITEXCOORD4DVPROC;
pub const PFNGLMULTITEXCOORD4FPROC = ?*const fn (GLenum, GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord4f: PFNGLMULTITEXCOORD4FPROC;
pub const PFNGLMULTITEXCOORD4FVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMultiTexCoord4fv: PFNGLMULTITEXCOORD4FVPROC;
pub const PFNGLMULTITEXCOORD4IPROC = ?*const fn (GLenum, GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord4i: PFNGLMULTITEXCOORD4IPROC;
pub const PFNGLMULTITEXCOORD4IVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glMultiTexCoord4iv: PFNGLMULTITEXCOORD4IVPROC;
pub const PFNGLMULTITEXCOORD4SPROC = ?*const fn (GLenum, GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord4s: PFNGLMULTITEXCOORD4SPROC;
pub const PFNGLMULTITEXCOORD4SVPROC = ?*const fn (GLenum, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glMultiTexCoord4sv: PFNGLMULTITEXCOORD4SVPROC;
pub const PFNGLLOADTRANSPOSEMATRIXFPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glLoadTransposeMatrixf: PFNGLLOADTRANSPOSEMATRIXFPROC;
pub const PFNGLLOADTRANSPOSEMATRIXDPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glLoadTransposeMatrixd: PFNGLLOADTRANSPOSEMATRIXDPROC;
pub const PFNGLMULTTRANSPOSEMATRIXFPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glMultTransposeMatrixf: PFNGLMULTTRANSPOSEMATRIXFPROC;
pub const PFNGLMULTTRANSPOSEMATRIXDPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glMultTransposeMatrixd: PFNGLMULTTRANSPOSEMATRIXDPROC;
pub extern var GLAD_GL_VERSION_1_4: c_int;
pub const PFNGLBLENDFUNCSEPARATEPROC = ?*const fn (GLenum, GLenum, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBlendFuncSeparate: PFNGLBLENDFUNCSEPARATEPROC;
pub const PFNGLMULTIDRAWARRAYSPROC = ?*const fn (GLenum, [*c]const GLint, [*c]const GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glMultiDrawArrays: PFNGLMULTIDRAWARRAYSPROC;
pub const PFNGLMULTIDRAWELEMENTSPROC = ?*const fn (GLenum, [*c]const GLsizei, GLenum, [*c]const ?*const anyopaque, GLsizei) callconv(.C) void;
pub extern var glad_glMultiDrawElements: PFNGLMULTIDRAWELEMENTSPROC;
pub const PFNGLPOINTPARAMETERFPROC = ?*const fn (GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glPointParameterf: PFNGLPOINTPARAMETERFPROC;
pub const PFNGLPOINTPARAMETERFVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glPointParameterfv: PFNGLPOINTPARAMETERFVPROC;
pub const PFNGLPOINTPARAMETERIPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glPointParameteri: PFNGLPOINTPARAMETERIPROC;
pub const PFNGLPOINTPARAMETERIVPROC = ?*const fn (GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glPointParameteriv: PFNGLPOINTPARAMETERIVPROC;
pub const PFNGLFOGCOORDFPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glFogCoordf: PFNGLFOGCOORDFPROC;
pub const PFNGLFOGCOORDFVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glFogCoordfv: PFNGLFOGCOORDFVPROC;
pub const PFNGLFOGCOORDDPROC = ?*const fn (GLdouble) callconv(.C) void;
pub extern var glad_glFogCoordd: PFNGLFOGCOORDDPROC;
pub const PFNGLFOGCOORDDVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glFogCoorddv: PFNGLFOGCOORDDVPROC;
pub const PFNGLFOGCOORDPOINTERPROC = ?*const fn (GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glFogCoordPointer: PFNGLFOGCOORDPOINTERPROC;
pub const PFNGLSECONDARYCOLOR3BPROC = ?*const fn (GLbyte, GLbyte, GLbyte) callconv(.C) void;
pub extern var glad_glSecondaryColor3b: PFNGLSECONDARYCOLOR3BPROC;
pub const PFNGLSECONDARYCOLOR3BVPROC = ?*const fn ([*c]const GLbyte) callconv(.C) void;
pub extern var glad_glSecondaryColor3bv: PFNGLSECONDARYCOLOR3BVPROC;
pub const PFNGLSECONDARYCOLOR3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glSecondaryColor3d: PFNGLSECONDARYCOLOR3DPROC;
pub const PFNGLSECONDARYCOLOR3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glSecondaryColor3dv: PFNGLSECONDARYCOLOR3DVPROC;
pub const PFNGLSECONDARYCOLOR3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glSecondaryColor3f: PFNGLSECONDARYCOLOR3FPROC;
pub const PFNGLSECONDARYCOLOR3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glSecondaryColor3fv: PFNGLSECONDARYCOLOR3FVPROC;
pub const PFNGLSECONDARYCOLOR3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glSecondaryColor3i: PFNGLSECONDARYCOLOR3IPROC;
pub const PFNGLSECONDARYCOLOR3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glSecondaryColor3iv: PFNGLSECONDARYCOLOR3IVPROC;
pub const PFNGLSECONDARYCOLOR3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glSecondaryColor3s: PFNGLSECONDARYCOLOR3SPROC;
pub const PFNGLSECONDARYCOLOR3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glSecondaryColor3sv: PFNGLSECONDARYCOLOR3SVPROC;
pub const PFNGLSECONDARYCOLOR3UBPROC = ?*const fn (GLubyte, GLubyte, GLubyte) callconv(.C) void;
pub extern var glad_glSecondaryColor3ub: PFNGLSECONDARYCOLOR3UBPROC;
pub const PFNGLSECONDARYCOLOR3UBVPROC = ?*const fn ([*c]const GLubyte) callconv(.C) void;
pub extern var glad_glSecondaryColor3ubv: PFNGLSECONDARYCOLOR3UBVPROC;
pub const PFNGLSECONDARYCOLOR3UIPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glSecondaryColor3ui: PFNGLSECONDARYCOLOR3UIPROC;
pub const PFNGLSECONDARYCOLOR3UIVPROC = ?*const fn ([*c]const GLuint) callconv(.C) void;
pub extern var glad_glSecondaryColor3uiv: PFNGLSECONDARYCOLOR3UIVPROC;
pub const PFNGLSECONDARYCOLOR3USPROC = ?*const fn (GLushort, GLushort, GLushort) callconv(.C) void;
pub extern var glad_glSecondaryColor3us: PFNGLSECONDARYCOLOR3USPROC;
pub const PFNGLSECONDARYCOLOR3USVPROC = ?*const fn ([*c]const GLushort) callconv(.C) void;
pub extern var glad_glSecondaryColor3usv: PFNGLSECONDARYCOLOR3USVPROC;
pub const PFNGLSECONDARYCOLORPOINTERPROC = ?*const fn (GLint, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glSecondaryColorPointer: PFNGLSECONDARYCOLORPOINTERPROC;
pub const PFNGLWINDOWPOS2DPROC = ?*const fn (GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glWindowPos2d: PFNGLWINDOWPOS2DPROC;
pub const PFNGLWINDOWPOS2DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glWindowPos2dv: PFNGLWINDOWPOS2DVPROC;
pub const PFNGLWINDOWPOS2FPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glWindowPos2f: PFNGLWINDOWPOS2FPROC;
pub const PFNGLWINDOWPOS2FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glWindowPos2fv: PFNGLWINDOWPOS2FVPROC;
pub const PFNGLWINDOWPOS2IPROC = ?*const fn (GLint, GLint) callconv(.C) void;
pub extern var glad_glWindowPos2i: PFNGLWINDOWPOS2IPROC;
pub const PFNGLWINDOWPOS2IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glWindowPos2iv: PFNGLWINDOWPOS2IVPROC;
pub const PFNGLWINDOWPOS2SPROC = ?*const fn (GLshort, GLshort) callconv(.C) void;
pub extern var glad_glWindowPos2s: PFNGLWINDOWPOS2SPROC;
pub const PFNGLWINDOWPOS2SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glWindowPos2sv: PFNGLWINDOWPOS2SVPROC;
pub const PFNGLWINDOWPOS3DPROC = ?*const fn (GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glWindowPos3d: PFNGLWINDOWPOS3DPROC;
pub const PFNGLWINDOWPOS3DVPROC = ?*const fn ([*c]const GLdouble) callconv(.C) void;
pub extern var glad_glWindowPos3dv: PFNGLWINDOWPOS3DVPROC;
pub const PFNGLWINDOWPOS3FPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glWindowPos3f: PFNGLWINDOWPOS3FPROC;
pub const PFNGLWINDOWPOS3FVPROC = ?*const fn ([*c]const GLfloat) callconv(.C) void;
pub extern var glad_glWindowPos3fv: PFNGLWINDOWPOS3FVPROC;
pub const PFNGLWINDOWPOS3IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glWindowPos3i: PFNGLWINDOWPOS3IPROC;
pub const PFNGLWINDOWPOS3IVPROC = ?*const fn ([*c]const GLint) callconv(.C) void;
pub extern var glad_glWindowPos3iv: PFNGLWINDOWPOS3IVPROC;
pub const PFNGLWINDOWPOS3SPROC = ?*const fn (GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glWindowPos3s: PFNGLWINDOWPOS3SPROC;
pub const PFNGLWINDOWPOS3SVPROC = ?*const fn ([*c]const GLshort) callconv(.C) void;
pub extern var glad_glWindowPos3sv: PFNGLWINDOWPOS3SVPROC;
pub const PFNGLBLENDCOLORPROC = ?*const fn (GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glBlendColor: PFNGLBLENDCOLORPROC;
pub const PFNGLBLENDEQUATIONPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glBlendEquation: PFNGLBLENDEQUATIONPROC;
pub extern var GLAD_GL_VERSION_1_5: c_int;
pub const PFNGLGENQUERIESPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenQueries: PFNGLGENQUERIESPROC;
pub const PFNGLDELETEQUERIESPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteQueries: PFNGLDELETEQUERIESPROC;
pub const PFNGLISQUERYPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsQuery: PFNGLISQUERYPROC;
pub const PFNGLBEGINQUERYPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glBeginQuery: PFNGLBEGINQUERYPROC;
pub const PFNGLENDQUERYPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glEndQuery: PFNGLENDQUERYPROC;
pub const PFNGLGETQUERYIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetQueryiv: PFNGLGETQUERYIVPROC;
pub const PFNGLGETQUERYOBJECTIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetQueryObjectiv: PFNGLGETQUERYOBJECTIVPROC;
pub const PFNGLGETQUERYOBJECTUIVPROC = ?*const fn (GLuint, GLenum, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetQueryObjectuiv: PFNGLGETQUERYOBJECTUIVPROC;
pub const PFNGLBINDBUFFERPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glBindBuffer: PFNGLBINDBUFFERPROC;
pub const PFNGLDELETEBUFFERSPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteBuffers: PFNGLDELETEBUFFERSPROC;
pub const PFNGLGENBUFFERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenBuffers: PFNGLGENBUFFERSPROC;
pub const PFNGLISBUFFERPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsBuffer: PFNGLISBUFFERPROC;
pub const PFNGLBUFFERDATAPROC = ?*const fn (GLenum, GLsizeiptr, ?*const anyopaque, GLenum) callconv(.C) void;
pub extern var glad_glBufferData: PFNGLBUFFERDATAPROC;
pub const PFNGLBUFFERSUBDATAPROC = ?*const fn (GLenum, GLintptr, GLsizeiptr, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glBufferSubData: PFNGLBUFFERSUBDATAPROC;
pub const PFNGLGETBUFFERSUBDATAPROC = ?*const fn (GLenum, GLintptr, GLsizeiptr, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetBufferSubData: PFNGLGETBUFFERSUBDATAPROC;
pub const PFNGLMAPBUFFERPROC = ?*const fn (GLenum, GLenum) callconv(.C) ?*anyopaque;
pub extern var glad_glMapBuffer: PFNGLMAPBUFFERPROC;
pub const PFNGLUNMAPBUFFERPROC = ?*const fn (GLenum) callconv(.C) GLboolean;
pub extern var glad_glUnmapBuffer: PFNGLUNMAPBUFFERPROC;
pub const PFNGLGETBUFFERPARAMETERIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetBufferParameteriv: PFNGLGETBUFFERPARAMETERIVPROC;
pub const PFNGLGETBUFFERPOINTERVPROC = ?*const fn (GLenum, GLenum, [*c]?*anyopaque) callconv(.C) void;
pub extern var glad_glGetBufferPointerv: PFNGLGETBUFFERPOINTERVPROC;
pub extern var GLAD_GL_VERSION_2_0: c_int;
pub const PFNGLBLENDEQUATIONSEPARATEPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBlendEquationSeparate: PFNGLBLENDEQUATIONSEPARATEPROC;
pub const PFNGLDRAWBUFFERSPROC = ?*const fn (GLsizei, [*c]const GLenum) callconv(.C) void;
pub extern var glad_glDrawBuffers: PFNGLDRAWBUFFERSPROC;
pub const PFNGLSTENCILOPSEPARATEPROC = ?*const fn (GLenum, GLenum, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glStencilOpSeparate: PFNGLSTENCILOPSEPARATEPROC;
pub const PFNGLSTENCILFUNCSEPARATEPROC = ?*const fn (GLenum, GLenum, GLint, GLuint) callconv(.C) void;
pub extern var glad_glStencilFuncSeparate: PFNGLSTENCILFUNCSEPARATEPROC;
pub const PFNGLSTENCILMASKSEPARATEPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glStencilMaskSeparate: PFNGLSTENCILMASKSEPARATEPROC;
pub const PFNGLATTACHSHADERPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glAttachShader: PFNGLATTACHSHADERPROC;
pub const PFNGLBINDATTRIBLOCATIONPROC = ?*const fn (GLuint, GLuint, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glBindAttribLocation: PFNGLBINDATTRIBLOCATIONPROC;
pub const PFNGLCOMPILESHADERPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glCompileShader: PFNGLCOMPILESHADERPROC;
pub const PFNGLCREATEPROGRAMPROC = ?*const fn () callconv(.C) GLuint;
pub extern var glad_glCreateProgram: PFNGLCREATEPROGRAMPROC;
pub const PFNGLCREATESHADERPROC = ?*const fn (GLenum) callconv(.C) GLuint;
pub extern var glad_glCreateShader: PFNGLCREATESHADERPROC;
pub const PFNGLDELETEPROGRAMPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glDeleteProgram: PFNGLDELETEPROGRAMPROC;
pub const PFNGLDELETESHADERPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glDeleteShader: PFNGLDELETESHADERPROC;
pub const PFNGLDETACHSHADERPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glDetachShader: PFNGLDETACHSHADERPROC;
pub const PFNGLDISABLEVERTEXATTRIBARRAYPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glDisableVertexAttribArray: PFNGLDISABLEVERTEXATTRIBARRAYPROC;
pub const PFNGLENABLEVERTEXATTRIBARRAYPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glEnableVertexAttribArray: PFNGLENABLEVERTEXATTRIBARRAYPROC;
pub const PFNGLGETACTIVEATTRIBPROC = ?*const fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLint, [*c]GLenum, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetActiveAttrib: PFNGLGETACTIVEATTRIBPROC;
pub const PFNGLGETACTIVEUNIFORMPROC = ?*const fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLint, [*c]GLenum, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetActiveUniform: PFNGLGETACTIVEUNIFORMPROC;
pub const PFNGLGETATTACHEDSHADERSPROC = ?*const fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetAttachedShaders: PFNGLGETATTACHEDSHADERSPROC;
pub const PFNGLGETATTRIBLOCATIONPROC = ?*const fn (GLuint, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetAttribLocation: PFNGLGETATTRIBLOCATIONPROC;
pub const PFNGLGETPROGRAMIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetProgramiv: PFNGLGETPROGRAMIVPROC;
pub const PFNGLGETPROGRAMINFOLOGPROC = ?*const fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetProgramInfoLog: PFNGLGETPROGRAMINFOLOGPROC;
pub const PFNGLGETSHADERIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetShaderiv: PFNGLGETSHADERIVPROC;
pub const PFNGLGETSHADERINFOLOGPROC = ?*const fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetShaderInfoLog: PFNGLGETSHADERINFOLOGPROC;
pub const PFNGLGETSHADERSOURCEPROC = ?*const fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetShaderSource: PFNGLGETSHADERSOURCEPROC;
pub const PFNGLGETUNIFORMLOCATIONPROC = ?*const fn (GLuint, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetUniformLocation: PFNGLGETUNIFORMLOCATIONPROC;
pub const PFNGLGETUNIFORMFVPROC = ?*const fn (GLuint, GLint, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetUniformfv: PFNGLGETUNIFORMFVPROC;
pub const PFNGLGETUNIFORMIVPROC = ?*const fn (GLuint, GLint, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetUniformiv: PFNGLGETUNIFORMIVPROC;
pub const PFNGLGETVERTEXATTRIBDVPROC = ?*const fn (GLuint, GLenum, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetVertexAttribdv: PFNGLGETVERTEXATTRIBDVPROC;
pub const PFNGLGETVERTEXATTRIBFVPROC = ?*const fn (GLuint, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetVertexAttribfv: PFNGLGETVERTEXATTRIBFVPROC;
pub const PFNGLGETVERTEXATTRIBIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetVertexAttribiv: PFNGLGETVERTEXATTRIBIVPROC;
pub const PFNGLGETVERTEXATTRIBPOINTERVPROC = ?*const fn (GLuint, GLenum, [*c]?*anyopaque) callconv(.C) void;
pub extern var glad_glGetVertexAttribPointerv: PFNGLGETVERTEXATTRIBPOINTERVPROC;
pub const PFNGLISPROGRAMPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsProgram: PFNGLISPROGRAMPROC;
pub const PFNGLISSHADERPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsShader: PFNGLISSHADERPROC;
pub const PFNGLLINKPROGRAMPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glLinkProgram: PFNGLLINKPROGRAMPROC;
pub const PFNGLSHADERSOURCEPROC = ?*const fn (GLuint, GLsizei, [*c]const [*c]const GLchar, [*c]const GLint) callconv(.C) void;
pub extern var glad_glShaderSource: PFNGLSHADERSOURCEPROC;
pub const PFNGLUSEPROGRAMPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glUseProgram: PFNGLUSEPROGRAMPROC;
pub const PFNGLUNIFORM1FPROC = ?*const fn (GLint, GLfloat) callconv(.C) void;
pub extern var glad_glUniform1f: PFNGLUNIFORM1FPROC;
pub const PFNGLUNIFORM2FPROC = ?*const fn (GLint, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glUniform2f: PFNGLUNIFORM2FPROC;
pub const PFNGLUNIFORM3FPROC = ?*const fn (GLint, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glUniform3f: PFNGLUNIFORM3FPROC;
pub const PFNGLUNIFORM4FPROC = ?*const fn (GLint, GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glUniform4f: PFNGLUNIFORM4FPROC;
pub const PFNGLUNIFORM1IPROC = ?*const fn (GLint, GLint) callconv(.C) void;
pub extern var glad_glUniform1i: PFNGLUNIFORM1IPROC;
pub const PFNGLUNIFORM2IPROC = ?*const fn (GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glUniform2i: PFNGLUNIFORM2IPROC;
pub const PFNGLUNIFORM3IPROC = ?*const fn (GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glUniform3i: PFNGLUNIFORM3IPROC;
pub const PFNGLUNIFORM4IPROC = ?*const fn (GLint, GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glUniform4i: PFNGLUNIFORM4IPROC;
pub const PFNGLUNIFORM1FVPROC = ?*const fn (GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniform1fv: PFNGLUNIFORM1FVPROC;
pub const PFNGLUNIFORM2FVPROC = ?*const fn (GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniform2fv: PFNGLUNIFORM2FVPROC;
pub const PFNGLUNIFORM3FVPROC = ?*const fn (GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniform3fv: PFNGLUNIFORM3FVPROC;
pub const PFNGLUNIFORM4FVPROC = ?*const fn (GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniform4fv: PFNGLUNIFORM4FVPROC;
pub const PFNGLUNIFORM1IVPROC = ?*const fn (GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glUniform1iv: PFNGLUNIFORM1IVPROC;
pub const PFNGLUNIFORM2IVPROC = ?*const fn (GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glUniform2iv: PFNGLUNIFORM2IVPROC;
pub const PFNGLUNIFORM3IVPROC = ?*const fn (GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glUniform3iv: PFNGLUNIFORM3IVPROC;
pub const PFNGLUNIFORM4IVPROC = ?*const fn (GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glUniform4iv: PFNGLUNIFORM4IVPROC;
pub const PFNGLUNIFORMMATRIX2FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix2fv: PFNGLUNIFORMMATRIX2FVPROC;
pub const PFNGLUNIFORMMATRIX3FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix3fv: PFNGLUNIFORMMATRIX3FVPROC;
pub const PFNGLUNIFORMMATRIX4FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix4fv: PFNGLUNIFORMMATRIX4FVPROC;
pub const PFNGLVALIDATEPROGRAMPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glValidateProgram: PFNGLVALIDATEPROGRAMPROC;
pub const PFNGLVERTEXATTRIB1DPROC = ?*const fn (GLuint, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib1d: PFNGLVERTEXATTRIB1DPROC;
pub const PFNGLVERTEXATTRIB1DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib1dv: PFNGLVERTEXATTRIB1DVPROC;
pub const PFNGLVERTEXATTRIB1FPROC = ?*const fn (GLuint, GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib1f: PFNGLVERTEXATTRIB1FPROC;
pub const PFNGLVERTEXATTRIB1FVPROC = ?*const fn (GLuint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib1fv: PFNGLVERTEXATTRIB1FVPROC;
pub const PFNGLVERTEXATTRIB1SPROC = ?*const fn (GLuint, GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib1s: PFNGLVERTEXATTRIB1SPROC;
pub const PFNGLVERTEXATTRIB1SVPROC = ?*const fn (GLuint, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib1sv: PFNGLVERTEXATTRIB1SVPROC;
pub const PFNGLVERTEXATTRIB2DPROC = ?*const fn (GLuint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib2d: PFNGLVERTEXATTRIB2DPROC;
pub const PFNGLVERTEXATTRIB2DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib2dv: PFNGLVERTEXATTRIB2DVPROC;
pub const PFNGLVERTEXATTRIB2FPROC = ?*const fn (GLuint, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib2f: PFNGLVERTEXATTRIB2FPROC;
pub const PFNGLVERTEXATTRIB2FVPROC = ?*const fn (GLuint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib2fv: PFNGLVERTEXATTRIB2FVPROC;
pub const PFNGLVERTEXATTRIB2SPROC = ?*const fn (GLuint, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib2s: PFNGLVERTEXATTRIB2SPROC;
pub const PFNGLVERTEXATTRIB2SVPROC = ?*const fn (GLuint, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib2sv: PFNGLVERTEXATTRIB2SVPROC;
pub const PFNGLVERTEXATTRIB3DPROC = ?*const fn (GLuint, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib3d: PFNGLVERTEXATTRIB3DPROC;
pub const PFNGLVERTEXATTRIB3DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib3dv: PFNGLVERTEXATTRIB3DVPROC;
pub const PFNGLVERTEXATTRIB3FPROC = ?*const fn (GLuint, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib3f: PFNGLVERTEXATTRIB3FPROC;
pub const PFNGLVERTEXATTRIB3FVPROC = ?*const fn (GLuint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib3fv: PFNGLVERTEXATTRIB3FVPROC;
pub const PFNGLVERTEXATTRIB3SPROC = ?*const fn (GLuint, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib3s: PFNGLVERTEXATTRIB3SPROC;
pub const PFNGLVERTEXATTRIB3SVPROC = ?*const fn (GLuint, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib3sv: PFNGLVERTEXATTRIB3SVPROC;
pub const PFNGLVERTEXATTRIB4NBVPROC = ?*const fn (GLuint, [*c]const GLbyte) callconv(.C) void;
pub extern var glad_glVertexAttrib4Nbv: PFNGLVERTEXATTRIB4NBVPROC;
pub const PFNGLVERTEXATTRIB4NIVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glVertexAttrib4Niv: PFNGLVERTEXATTRIB4NIVPROC;
pub const PFNGLVERTEXATTRIB4NSVPROC = ?*const fn (GLuint, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib4Nsv: PFNGLVERTEXATTRIB4NSVPROC;
pub const PFNGLVERTEXATTRIB4NUBPROC = ?*const fn (GLuint, GLubyte, GLubyte, GLubyte, GLubyte) callconv(.C) void;
pub extern var glad_glVertexAttrib4Nub: PFNGLVERTEXATTRIB4NUBPROC;
pub const PFNGLVERTEXATTRIB4NUBVPROC = ?*const fn (GLuint, [*c]const GLubyte) callconv(.C) void;
pub extern var glad_glVertexAttrib4Nubv: PFNGLVERTEXATTRIB4NUBVPROC;
pub const PFNGLVERTEXATTRIB4NUIVPROC = ?*const fn (GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttrib4Nuiv: PFNGLVERTEXATTRIB4NUIVPROC;
pub const PFNGLVERTEXATTRIB4NUSVPROC = ?*const fn (GLuint, [*c]const GLushort) callconv(.C) void;
pub extern var glad_glVertexAttrib4Nusv: PFNGLVERTEXATTRIB4NUSVPROC;
pub const PFNGLVERTEXATTRIB4BVPROC = ?*const fn (GLuint, [*c]const GLbyte) callconv(.C) void;
pub extern var glad_glVertexAttrib4bv: PFNGLVERTEXATTRIB4BVPROC;
pub const PFNGLVERTEXATTRIB4DPROC = ?*const fn (GLuint, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib4d: PFNGLVERTEXATTRIB4DPROC;
pub const PFNGLVERTEXATTRIB4DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttrib4dv: PFNGLVERTEXATTRIB4DVPROC;
pub const PFNGLVERTEXATTRIB4FPROC = ?*const fn (GLuint, GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib4f: PFNGLVERTEXATTRIB4FPROC;
pub const PFNGLVERTEXATTRIB4FVPROC = ?*const fn (GLuint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glVertexAttrib4fv: PFNGLVERTEXATTRIB4FVPROC;
pub const PFNGLVERTEXATTRIB4IVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glVertexAttrib4iv: PFNGLVERTEXATTRIB4IVPROC;
pub const PFNGLVERTEXATTRIB4SPROC = ?*const fn (GLuint, GLshort, GLshort, GLshort, GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib4s: PFNGLVERTEXATTRIB4SPROC;
pub const PFNGLVERTEXATTRIB4SVPROC = ?*const fn (GLuint, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertexAttrib4sv: PFNGLVERTEXATTRIB4SVPROC;
pub const PFNGLVERTEXATTRIB4UBVPROC = ?*const fn (GLuint, [*c]const GLubyte) callconv(.C) void;
pub extern var glad_glVertexAttrib4ubv: PFNGLVERTEXATTRIB4UBVPROC;
pub const PFNGLVERTEXATTRIB4UIVPROC = ?*const fn (GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttrib4uiv: PFNGLVERTEXATTRIB4UIVPROC;
pub const PFNGLVERTEXATTRIB4USVPROC = ?*const fn (GLuint, [*c]const GLushort) callconv(.C) void;
pub extern var glad_glVertexAttrib4usv: PFNGLVERTEXATTRIB4USVPROC;
pub const PFNGLVERTEXATTRIBPOINTERPROC = ?*const fn (GLuint, GLint, GLenum, GLboolean, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glVertexAttribPointer: PFNGLVERTEXATTRIBPOINTERPROC;
pub extern var GLAD_GL_VERSION_2_1: c_int;
pub const PFNGLUNIFORMMATRIX2X3FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix2x3fv: PFNGLUNIFORMMATRIX2X3FVPROC;
pub const PFNGLUNIFORMMATRIX3X2FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix3x2fv: PFNGLUNIFORMMATRIX3X2FVPROC;
pub const PFNGLUNIFORMMATRIX2X4FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix2x4fv: PFNGLUNIFORMMATRIX2X4FVPROC;
pub const PFNGLUNIFORMMATRIX4X2FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix4x2fv: PFNGLUNIFORMMATRIX4X2FVPROC;
pub const PFNGLUNIFORMMATRIX3X4FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix3x4fv: PFNGLUNIFORMMATRIX3X4FVPROC;
pub const PFNGLUNIFORMMATRIX4X3FVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glUniformMatrix4x3fv: PFNGLUNIFORMMATRIX4X3FVPROC;
pub extern var GLAD_GL_VERSION_3_0: c_int;
pub const PFNGLCOLORMASKIPROC = ?*const fn (GLuint, GLboolean, GLboolean, GLboolean, GLboolean) callconv(.C) void;
pub extern var glad_glColorMaski: PFNGLCOLORMASKIPROC;
pub const PFNGLGETBOOLEANI_VPROC = ?*const fn (GLenum, GLuint, [*c]GLboolean) callconv(.C) void;
pub extern var glad_glGetBooleani_v: PFNGLGETBOOLEANI_VPROC;
pub const PFNGLGETINTEGERI_VPROC = ?*const fn (GLenum, GLuint, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetIntegeri_v: PFNGLGETINTEGERI_VPROC;
pub const PFNGLENABLEIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glEnablei: PFNGLENABLEIPROC;
pub const PFNGLDISABLEIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glDisablei: PFNGLDISABLEIPROC;
pub const PFNGLISENABLEDIPROC = ?*const fn (GLenum, GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsEnabledi: PFNGLISENABLEDIPROC;
pub const PFNGLBEGINTRANSFORMFEEDBACKPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glBeginTransformFeedback: PFNGLBEGINTRANSFORMFEEDBACKPROC;
pub const PFNGLENDTRANSFORMFEEDBACKPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glEndTransformFeedback: PFNGLENDTRANSFORMFEEDBACKPROC;
pub const PFNGLBINDBUFFERRANGEPROC = ?*const fn (GLenum, GLuint, GLuint, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glBindBufferRange: PFNGLBINDBUFFERRANGEPROC;
pub const PFNGLBINDBUFFERBASEPROC = ?*const fn (GLenum, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glBindBufferBase: PFNGLBINDBUFFERBASEPROC;
pub const PFNGLTRANSFORMFEEDBACKVARYINGSPROC = ?*const fn (GLuint, GLsizei, [*c]const [*c]const GLchar, GLenum) callconv(.C) void;
pub extern var glad_glTransformFeedbackVaryings: PFNGLTRANSFORMFEEDBACKVARYINGSPROC;
pub const PFNGLGETTRANSFORMFEEDBACKVARYINGPROC = ?*const fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLsizei, [*c]GLenum, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetTransformFeedbackVarying: PFNGLGETTRANSFORMFEEDBACKVARYINGPROC;
pub const PFNGLCLAMPCOLORPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glClampColor: PFNGLCLAMPCOLORPROC;
pub const PFNGLBEGINCONDITIONALRENDERPROC = ?*const fn (GLuint, GLenum) callconv(.C) void;
pub extern var glad_glBeginConditionalRender: PFNGLBEGINCONDITIONALRENDERPROC;
pub const PFNGLENDCONDITIONALRENDERPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glEndConditionalRender: PFNGLENDCONDITIONALRENDERPROC;
pub const PFNGLVERTEXATTRIBIPOINTERPROC = ?*const fn (GLuint, GLint, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glVertexAttribIPointer: PFNGLVERTEXATTRIBIPOINTERPROC;
pub const PFNGLGETVERTEXATTRIBIIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetVertexAttribIiv: PFNGLGETVERTEXATTRIBIIVPROC;
pub const PFNGLGETVERTEXATTRIBIUIVPROC = ?*const fn (GLuint, GLenum, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetVertexAttribIuiv: PFNGLGETVERTEXATTRIBIUIVPROC;
pub const PFNGLVERTEXATTRIBI1IPROC = ?*const fn (GLuint, GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI1i: PFNGLVERTEXATTRIBI1IPROC;
pub const PFNGLVERTEXATTRIBI2IPROC = ?*const fn (GLuint, GLint, GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI2i: PFNGLVERTEXATTRIBI2IPROC;
pub const PFNGLVERTEXATTRIBI3IPROC = ?*const fn (GLuint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI3i: PFNGLVERTEXATTRIBI3IPROC;
pub const PFNGLVERTEXATTRIBI4IPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI4i: PFNGLVERTEXATTRIBI4IPROC;
pub const PFNGLVERTEXATTRIBI1UIPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI1ui: PFNGLVERTEXATTRIBI1UIPROC;
pub const PFNGLVERTEXATTRIBI2UIPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI2ui: PFNGLVERTEXATTRIBI2UIPROC;
pub const PFNGLVERTEXATTRIBI3UIPROC = ?*const fn (GLuint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI3ui: PFNGLVERTEXATTRIBI3UIPROC;
pub const PFNGLVERTEXATTRIBI4UIPROC = ?*const fn (GLuint, GLuint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI4ui: PFNGLVERTEXATTRIBI4UIPROC;
pub const PFNGLVERTEXATTRIBI1IVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI1iv: PFNGLVERTEXATTRIBI1IVPROC;
pub const PFNGLVERTEXATTRIBI2IVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI2iv: PFNGLVERTEXATTRIBI2IVPROC;
pub const PFNGLVERTEXATTRIBI3IVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI3iv: PFNGLVERTEXATTRIBI3IVPROC;
pub const PFNGLVERTEXATTRIBI4IVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glVertexAttribI4iv: PFNGLVERTEXATTRIBI4IVPROC;
pub const PFNGLVERTEXATTRIBI1UIVPROC = ?*const fn (GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI1uiv: PFNGLVERTEXATTRIBI1UIVPROC;
pub const PFNGLVERTEXATTRIBI2UIVPROC = ?*const fn (GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI2uiv: PFNGLVERTEXATTRIBI2UIVPROC;
pub const PFNGLVERTEXATTRIBI3UIVPROC = ?*const fn (GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI3uiv: PFNGLVERTEXATTRIBI3UIVPROC;
pub const PFNGLVERTEXATTRIBI4UIVPROC = ?*const fn (GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribI4uiv: PFNGLVERTEXATTRIBI4UIVPROC;
pub const PFNGLVERTEXATTRIBI4BVPROC = ?*const fn (GLuint, [*c]const GLbyte) callconv(.C) void;
pub extern var glad_glVertexAttribI4bv: PFNGLVERTEXATTRIBI4BVPROC;
pub const PFNGLVERTEXATTRIBI4SVPROC = ?*const fn (GLuint, [*c]const GLshort) callconv(.C) void;
pub extern var glad_glVertexAttribI4sv: PFNGLVERTEXATTRIBI4SVPROC;
pub const PFNGLVERTEXATTRIBI4UBVPROC = ?*const fn (GLuint, [*c]const GLubyte) callconv(.C) void;
pub extern var glad_glVertexAttribI4ubv: PFNGLVERTEXATTRIBI4UBVPROC;
pub const PFNGLVERTEXATTRIBI4USVPROC = ?*const fn (GLuint, [*c]const GLushort) callconv(.C) void;
pub extern var glad_glVertexAttribI4usv: PFNGLVERTEXATTRIBI4USVPROC;
pub const PFNGLGETUNIFORMUIVPROC = ?*const fn (GLuint, GLint, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetUniformuiv: PFNGLGETUNIFORMUIVPROC;
pub const PFNGLBINDFRAGDATALOCATIONPROC = ?*const fn (GLuint, GLuint, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glBindFragDataLocation: PFNGLBINDFRAGDATALOCATIONPROC;
pub const PFNGLGETFRAGDATALOCATIONPROC = ?*const fn (GLuint, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetFragDataLocation: PFNGLGETFRAGDATALOCATIONPROC;
pub const PFNGLUNIFORM1UIPROC = ?*const fn (GLint, GLuint) callconv(.C) void;
pub extern var glad_glUniform1ui: PFNGLUNIFORM1UIPROC;
pub const PFNGLUNIFORM2UIPROC = ?*const fn (GLint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glUniform2ui: PFNGLUNIFORM2UIPROC;
pub const PFNGLUNIFORM3UIPROC = ?*const fn (GLint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glUniform3ui: PFNGLUNIFORM3UIPROC;
pub const PFNGLUNIFORM4UIPROC = ?*const fn (GLint, GLuint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glUniform4ui: PFNGLUNIFORM4UIPROC;
pub const PFNGLUNIFORM1UIVPROC = ?*const fn (GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glUniform1uiv: PFNGLUNIFORM1UIVPROC;
pub const PFNGLUNIFORM2UIVPROC = ?*const fn (GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glUniform2uiv: PFNGLUNIFORM2UIVPROC;
pub const PFNGLUNIFORM3UIVPROC = ?*const fn (GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glUniform3uiv: PFNGLUNIFORM3UIVPROC;
pub const PFNGLUNIFORM4UIVPROC = ?*const fn (GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glUniform4uiv: PFNGLUNIFORM4UIVPROC;
pub const PFNGLTEXPARAMETERIIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glTexParameterIiv: PFNGLTEXPARAMETERIIVPROC;
pub const PFNGLTEXPARAMETERIUIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glTexParameterIuiv: PFNGLTEXPARAMETERIUIVPROC;
pub const PFNGLGETTEXPARAMETERIIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTexParameterIiv: PFNGLGETTEXPARAMETERIIVPROC;
pub const PFNGLGETTEXPARAMETERIUIVPROC = ?*const fn (GLenum, GLenum, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetTexParameterIuiv: PFNGLGETTEXPARAMETERIUIVPROC;
pub const PFNGLCLEARBUFFERIVPROC = ?*const fn (GLenum, GLint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glClearBufferiv: PFNGLCLEARBUFFERIVPROC;
pub const PFNGLCLEARBUFFERUIVPROC = ?*const fn (GLenum, GLint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glClearBufferuiv: PFNGLCLEARBUFFERUIVPROC;
pub const PFNGLCLEARBUFFERFVPROC = ?*const fn (GLenum, GLint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glClearBufferfv: PFNGLCLEARBUFFERFVPROC;
pub const PFNGLCLEARBUFFERFIPROC = ?*const fn (GLenum, GLint, GLfloat, GLint) callconv(.C) void;
pub extern var glad_glClearBufferfi: PFNGLCLEARBUFFERFIPROC;
pub const PFNGLGETSTRINGIPROC = ?*const fn (GLenum, GLuint) callconv(.C) [*c]const GLubyte;
pub extern var glad_glGetStringi: PFNGLGETSTRINGIPROC;
pub const PFNGLISRENDERBUFFERPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsRenderbuffer: PFNGLISRENDERBUFFERPROC;
pub const PFNGLBINDRENDERBUFFERPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glBindRenderbuffer: PFNGLBINDRENDERBUFFERPROC;
pub const PFNGLDELETERENDERBUFFERSPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteRenderbuffers: PFNGLDELETERENDERBUFFERSPROC;
pub const PFNGLGENRENDERBUFFERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenRenderbuffers: PFNGLGENRENDERBUFFERSPROC;
pub const PFNGLRENDERBUFFERSTORAGEPROC = ?*const fn (GLenum, GLenum, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glRenderbufferStorage: PFNGLRENDERBUFFERSTORAGEPROC;
pub const PFNGLGETRENDERBUFFERPARAMETERIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetRenderbufferParameteriv: PFNGLGETRENDERBUFFERPARAMETERIVPROC;
pub const PFNGLISFRAMEBUFFERPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsFramebuffer: PFNGLISFRAMEBUFFERPROC;
pub const PFNGLBINDFRAMEBUFFERPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glBindFramebuffer: PFNGLBINDFRAMEBUFFERPROC;
pub const PFNGLDELETEFRAMEBUFFERSPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteFramebuffers: PFNGLDELETEFRAMEBUFFERSPROC;
pub const PFNGLGENFRAMEBUFFERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenFramebuffers: PFNGLGENFRAMEBUFFERSPROC;
pub const PFNGLCHECKFRAMEBUFFERSTATUSPROC = ?*const fn (GLenum) callconv(.C) GLenum;
pub extern var glad_glCheckFramebufferStatus: PFNGLCHECKFRAMEBUFFERSTATUSPROC;
pub const PFNGLFRAMEBUFFERTEXTURE1DPROC = ?*const fn (GLenum, GLenum, GLenum, GLuint, GLint) callconv(.C) void;
pub extern var glad_glFramebufferTexture1D: PFNGLFRAMEBUFFERTEXTURE1DPROC;
pub const PFNGLFRAMEBUFFERTEXTURE2DPROC = ?*const fn (GLenum, GLenum, GLenum, GLuint, GLint) callconv(.C) void;
pub extern var glad_glFramebufferTexture2D: PFNGLFRAMEBUFFERTEXTURE2DPROC;
pub const PFNGLFRAMEBUFFERTEXTURE3DPROC = ?*const fn (GLenum, GLenum, GLenum, GLuint, GLint, GLint) callconv(.C) void;
pub extern var glad_glFramebufferTexture3D: PFNGLFRAMEBUFFERTEXTURE3DPROC;
pub const PFNGLFRAMEBUFFERRENDERBUFFERPROC = ?*const fn (GLenum, GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glFramebufferRenderbuffer: PFNGLFRAMEBUFFERRENDERBUFFERPROC;
pub const PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC = ?*const fn (GLenum, GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetFramebufferAttachmentParameteriv: PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC;
pub const PFNGLGENERATEMIPMAPPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glGenerateMipmap: PFNGLGENERATEMIPMAPPROC;
pub const PFNGLBLITFRAMEBUFFERPROC = ?*const fn (GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLbitfield, GLenum) callconv(.C) void;
pub extern var glad_glBlitFramebuffer: PFNGLBLITFRAMEBUFFERPROC;
pub const PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glRenderbufferStorageMultisample: PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC;
pub const PFNGLFRAMEBUFFERTEXTURELAYERPROC = ?*const fn (GLenum, GLenum, GLuint, GLint, GLint) callconv(.C) void;
pub extern var glad_glFramebufferTextureLayer: PFNGLFRAMEBUFFERTEXTURELAYERPROC;
pub const PFNGLMAPBUFFERRANGEPROC = ?*const fn (GLenum, GLintptr, GLsizeiptr, GLbitfield) callconv(.C) ?*anyopaque;
pub extern var glad_glMapBufferRange: PFNGLMAPBUFFERRANGEPROC;
pub const PFNGLFLUSHMAPPEDBUFFERRANGEPROC = ?*const fn (GLenum, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glFlushMappedBufferRange: PFNGLFLUSHMAPPEDBUFFERRANGEPROC;
pub const PFNGLBINDVERTEXARRAYPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glBindVertexArray: PFNGLBINDVERTEXARRAYPROC;
pub const PFNGLDELETEVERTEXARRAYSPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteVertexArrays: PFNGLDELETEVERTEXARRAYSPROC;
pub const PFNGLGENVERTEXARRAYSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenVertexArrays: PFNGLGENVERTEXARRAYSPROC;
pub const PFNGLISVERTEXARRAYPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsVertexArray: PFNGLISVERTEXARRAYPROC;
pub extern var GLAD_GL_VERSION_3_1: c_int;
pub const PFNGLDRAWARRAYSINSTANCEDPROC = ?*const fn (GLenum, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glDrawArraysInstanced: PFNGLDRAWARRAYSINSTANCEDPROC;
pub const PFNGLDRAWELEMENTSINSTANCEDPROC = ?*const fn (GLenum, GLsizei, GLenum, ?*const anyopaque, GLsizei) callconv(.C) void;
pub extern var glad_glDrawElementsInstanced: PFNGLDRAWELEMENTSINSTANCEDPROC;
pub const PFNGLTEXBUFFERPROC = ?*const fn (GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glTexBuffer: PFNGLTEXBUFFERPROC;
pub const PFNGLPRIMITIVERESTARTINDEXPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glPrimitiveRestartIndex: PFNGLPRIMITIVERESTARTINDEXPROC;
pub const PFNGLCOPYBUFFERSUBDATAPROC = ?*const fn (GLenum, GLenum, GLintptr, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glCopyBufferSubData: PFNGLCOPYBUFFERSUBDATAPROC;
pub const PFNGLGETUNIFORMINDICESPROC = ?*const fn (GLuint, GLsizei, [*c]const [*c]const GLchar, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetUniformIndices: PFNGLGETUNIFORMINDICESPROC;
pub const PFNGLGETACTIVEUNIFORMSIVPROC = ?*const fn (GLuint, GLsizei, [*c]const GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetActiveUniformsiv: PFNGLGETACTIVEUNIFORMSIVPROC;
pub const PFNGLGETACTIVEUNIFORMNAMEPROC = ?*const fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetActiveUniformName: PFNGLGETACTIVEUNIFORMNAMEPROC;
pub const PFNGLGETUNIFORMBLOCKINDEXPROC = ?*const fn (GLuint, [*c]const GLchar) callconv(.C) GLuint;
pub extern var glad_glGetUniformBlockIndex: PFNGLGETUNIFORMBLOCKINDEXPROC;
pub const PFNGLGETACTIVEUNIFORMBLOCKIVPROC = ?*const fn (GLuint, GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetActiveUniformBlockiv: PFNGLGETACTIVEUNIFORMBLOCKIVPROC;
pub const PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC = ?*const fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetActiveUniformBlockName: PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC;
pub const PFNGLUNIFORMBLOCKBINDINGPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glUniformBlockBinding: PFNGLUNIFORMBLOCKBINDINGPROC;
pub extern var GLAD_GL_VERSION_3_2: c_int;
pub const PFNGLDRAWELEMENTSBASEVERTEXPROC = ?*const fn (GLenum, GLsizei, GLenum, ?*const anyopaque, GLint) callconv(.C) void;
pub extern var glad_glDrawElementsBaseVertex: PFNGLDRAWELEMENTSBASEVERTEXPROC;
pub const PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC = ?*const fn (GLenum, GLuint, GLuint, GLsizei, GLenum, ?*const anyopaque, GLint) callconv(.C) void;
pub extern var glad_glDrawRangeElementsBaseVertex: PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC;
pub const PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC = ?*const fn (GLenum, GLsizei, GLenum, ?*const anyopaque, GLsizei, GLint) callconv(.C) void;
pub extern var glad_glDrawElementsInstancedBaseVertex: PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC;
pub const PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC = ?*const fn (GLenum, [*c]const GLsizei, GLenum, [*c]const ?*const anyopaque, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glMultiDrawElementsBaseVertex: PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC;
pub const PFNGLPROVOKINGVERTEXPROC = ?*const fn (GLenum) callconv(.C) void;
pub extern var glad_glProvokingVertex: PFNGLPROVOKINGVERTEXPROC;
pub const PFNGLFENCESYNCPROC = ?*const fn (GLenum, GLbitfield) callconv(.C) GLsync;
pub extern var glad_glFenceSync: PFNGLFENCESYNCPROC;
pub const PFNGLISSYNCPROC = ?*const fn (GLsync) callconv(.C) GLboolean;
pub extern var glad_glIsSync: PFNGLISSYNCPROC;
pub const PFNGLDELETESYNCPROC = ?*const fn (GLsync) callconv(.C) void;
pub extern var glad_glDeleteSync: PFNGLDELETESYNCPROC;
pub const PFNGLCLIENTWAITSYNCPROC = ?*const fn (GLsync, GLbitfield, GLuint64) callconv(.C) GLenum;
pub extern var glad_glClientWaitSync: PFNGLCLIENTWAITSYNCPROC;
pub const PFNGLWAITSYNCPROC = ?*const fn (GLsync, GLbitfield, GLuint64) callconv(.C) void;
pub extern var glad_glWaitSync: PFNGLWAITSYNCPROC;
pub const PFNGLGETINTEGER64VPROC = ?*const fn (GLenum, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetInteger64v: PFNGLGETINTEGER64VPROC;
pub const PFNGLGETSYNCIVPROC = ?*const fn (GLsync, GLenum, GLsizei, [*c]GLsizei, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetSynciv: PFNGLGETSYNCIVPROC;
pub const PFNGLGETINTEGER64I_VPROC = ?*const fn (GLenum, GLuint, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetInteger64i_v: PFNGLGETINTEGER64I_VPROC;
pub const PFNGLGETBUFFERPARAMETERI64VPROC = ?*const fn (GLenum, GLenum, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetBufferParameteri64v: PFNGLGETBUFFERPARAMETERI64VPROC;
pub const PFNGLFRAMEBUFFERTEXTUREPROC = ?*const fn (GLenum, GLenum, GLuint, GLint) callconv(.C) void;
pub extern var glad_glFramebufferTexture: PFNGLFRAMEBUFFERTEXTUREPROC;
pub const PFNGLTEXIMAGE2DMULTISAMPLEPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLboolean) callconv(.C) void;
pub extern var glad_glTexImage2DMultisample: PFNGLTEXIMAGE2DMULTISAMPLEPROC;
pub const PFNGLTEXIMAGE3DMULTISAMPLEPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLsizei, GLboolean) callconv(.C) void;
pub extern var glad_glTexImage3DMultisample: PFNGLTEXIMAGE3DMULTISAMPLEPROC;
pub const PFNGLGETMULTISAMPLEFVPROC = ?*const fn (GLenum, GLuint, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetMultisamplefv: PFNGLGETMULTISAMPLEFVPROC;
pub const PFNGLSAMPLEMASKIPROC = ?*const fn (GLuint, GLbitfield) callconv(.C) void;
pub extern var glad_glSampleMaski: PFNGLSAMPLEMASKIPROC;
pub extern var GLAD_GL_VERSION_3_3: c_int;
pub const PFNGLBINDFRAGDATALOCATIONINDEXEDPROC = ?*const fn (GLuint, GLuint, GLuint, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glBindFragDataLocationIndexed: PFNGLBINDFRAGDATALOCATIONINDEXEDPROC;
pub const PFNGLGETFRAGDATAINDEXPROC = ?*const fn (GLuint, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetFragDataIndex: PFNGLGETFRAGDATAINDEXPROC;
pub const PFNGLGENSAMPLERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenSamplers: PFNGLGENSAMPLERSPROC;
pub const PFNGLDELETESAMPLERSPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteSamplers: PFNGLDELETESAMPLERSPROC;
pub const PFNGLISSAMPLERPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsSampler: PFNGLISSAMPLERPROC;
pub const PFNGLBINDSAMPLERPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glBindSampler: PFNGLBINDSAMPLERPROC;
pub const PFNGLSAMPLERPARAMETERIPROC = ?*const fn (GLuint, GLenum, GLint) callconv(.C) void;
pub extern var glad_glSamplerParameteri: PFNGLSAMPLERPARAMETERIPROC;
pub const PFNGLSAMPLERPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glSamplerParameteriv: PFNGLSAMPLERPARAMETERIVPROC;
pub const PFNGLSAMPLERPARAMETERFPROC = ?*const fn (GLuint, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glSamplerParameterf: PFNGLSAMPLERPARAMETERFPROC;
pub const PFNGLSAMPLERPARAMETERFVPROC = ?*const fn (GLuint, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glSamplerParameterfv: PFNGLSAMPLERPARAMETERFVPROC;
pub const PFNGLSAMPLERPARAMETERIIVPROC = ?*const fn (GLuint, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glSamplerParameterIiv: PFNGLSAMPLERPARAMETERIIVPROC;
pub const PFNGLSAMPLERPARAMETERIUIVPROC = ?*const fn (GLuint, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glSamplerParameterIuiv: PFNGLSAMPLERPARAMETERIUIVPROC;
pub const PFNGLGETSAMPLERPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetSamplerParameteriv: PFNGLGETSAMPLERPARAMETERIVPROC;
pub const PFNGLGETSAMPLERPARAMETERIIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetSamplerParameterIiv: PFNGLGETSAMPLERPARAMETERIIVPROC;
pub const PFNGLGETSAMPLERPARAMETERFVPROC = ?*const fn (GLuint, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetSamplerParameterfv: PFNGLGETSAMPLERPARAMETERFVPROC;
pub const PFNGLGETSAMPLERPARAMETERIUIVPROC = ?*const fn (GLuint, GLenum, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetSamplerParameterIuiv: PFNGLGETSAMPLERPARAMETERIUIVPROC;
pub const PFNGLQUERYCOUNTERPROC = ?*const fn (GLuint, GLenum) callconv(.C) void;
pub extern var glad_glQueryCounter: PFNGLQUERYCOUNTERPROC;
pub const PFNGLGETQUERYOBJECTI64VPROC = ?*const fn (GLuint, GLenum, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetQueryObjecti64v: PFNGLGETQUERYOBJECTI64VPROC;
pub const PFNGLGETQUERYOBJECTUI64VPROC = ?*const fn (GLuint, GLenum, [*c]GLuint64) callconv(.C) void;
pub extern var glad_glGetQueryObjectui64v: PFNGLGETQUERYOBJECTUI64VPROC;
pub const PFNGLVERTEXATTRIBDIVISORPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribDivisor: PFNGLVERTEXATTRIBDIVISORPROC;
pub const PFNGLVERTEXATTRIBP1UIPROC = ?*const fn (GLuint, GLenum, GLboolean, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP1ui: PFNGLVERTEXATTRIBP1UIPROC;
pub const PFNGLVERTEXATTRIBP1UIVPROC = ?*const fn (GLuint, GLenum, GLboolean, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP1uiv: PFNGLVERTEXATTRIBP1UIVPROC;
pub const PFNGLVERTEXATTRIBP2UIPROC = ?*const fn (GLuint, GLenum, GLboolean, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP2ui: PFNGLVERTEXATTRIBP2UIPROC;
pub const PFNGLVERTEXATTRIBP2UIVPROC = ?*const fn (GLuint, GLenum, GLboolean, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP2uiv: PFNGLVERTEXATTRIBP2UIVPROC;
pub const PFNGLVERTEXATTRIBP3UIPROC = ?*const fn (GLuint, GLenum, GLboolean, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP3ui: PFNGLVERTEXATTRIBP3UIPROC;
pub const PFNGLVERTEXATTRIBP3UIVPROC = ?*const fn (GLuint, GLenum, GLboolean, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP3uiv: PFNGLVERTEXATTRIBP3UIVPROC;
pub const PFNGLVERTEXATTRIBP4UIPROC = ?*const fn (GLuint, GLenum, GLboolean, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP4ui: PFNGLVERTEXATTRIBP4UIPROC;
pub const PFNGLVERTEXATTRIBP4UIVPROC = ?*const fn (GLuint, GLenum, GLboolean, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribP4uiv: PFNGLVERTEXATTRIBP4UIVPROC;
pub const PFNGLVERTEXP2UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexP2ui: PFNGLVERTEXP2UIPROC;
pub const PFNGLVERTEXP2UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexP2uiv: PFNGLVERTEXP2UIVPROC;
pub const PFNGLVERTEXP3UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexP3ui: PFNGLVERTEXP3UIPROC;
pub const PFNGLVERTEXP3UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexP3uiv: PFNGLVERTEXP3UIVPROC;
pub const PFNGLVERTEXP4UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexP4ui: PFNGLVERTEXP4UIPROC;
pub const PFNGLVERTEXP4UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glVertexP4uiv: PFNGLVERTEXP4UIVPROC;
pub const PFNGLTEXCOORDP1UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP1ui: PFNGLTEXCOORDP1UIPROC;
pub const PFNGLTEXCOORDP1UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP1uiv: PFNGLTEXCOORDP1UIVPROC;
pub const PFNGLTEXCOORDP2UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP2ui: PFNGLTEXCOORDP2UIPROC;
pub const PFNGLTEXCOORDP2UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP2uiv: PFNGLTEXCOORDP2UIVPROC;
pub const PFNGLTEXCOORDP3UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP3ui: PFNGLTEXCOORDP3UIPROC;
pub const PFNGLTEXCOORDP3UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP3uiv: PFNGLTEXCOORDP3UIVPROC;
pub const PFNGLTEXCOORDP4UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP4ui: PFNGLTEXCOORDP4UIPROC;
pub const PFNGLTEXCOORDP4UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glTexCoordP4uiv: PFNGLTEXCOORDP4UIVPROC;
pub const PFNGLMULTITEXCOORDP1UIPROC = ?*const fn (GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP1ui: PFNGLMULTITEXCOORDP1UIPROC;
pub const PFNGLMULTITEXCOORDP1UIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP1uiv: PFNGLMULTITEXCOORDP1UIVPROC;
pub const PFNGLMULTITEXCOORDP2UIPROC = ?*const fn (GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP2ui: PFNGLMULTITEXCOORDP2UIPROC;
pub const PFNGLMULTITEXCOORDP2UIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP2uiv: PFNGLMULTITEXCOORDP2UIVPROC;
pub const PFNGLMULTITEXCOORDP3UIPROC = ?*const fn (GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP3ui: PFNGLMULTITEXCOORDP3UIPROC;
pub const PFNGLMULTITEXCOORDP3UIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP3uiv: PFNGLMULTITEXCOORDP3UIVPROC;
pub const PFNGLMULTITEXCOORDP4UIPROC = ?*const fn (GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP4ui: PFNGLMULTITEXCOORDP4UIPROC;
pub const PFNGLMULTITEXCOORDP4UIVPROC = ?*const fn (GLenum, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glMultiTexCoordP4uiv: PFNGLMULTITEXCOORDP4UIVPROC;
pub const PFNGLNORMALP3UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glNormalP3ui: PFNGLNORMALP3UIPROC;
pub const PFNGLNORMALP3UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glNormalP3uiv: PFNGLNORMALP3UIVPROC;
pub const PFNGLCOLORP3UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glColorP3ui: PFNGLCOLORP3UIPROC;
pub const PFNGLCOLORP3UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glColorP3uiv: PFNGLCOLORP3UIVPROC;
pub const PFNGLCOLORP4UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glColorP4ui: PFNGLCOLORP4UIPROC;
pub const PFNGLCOLORP4UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glColorP4uiv: PFNGLCOLORP4UIVPROC;
pub const PFNGLSECONDARYCOLORP3UIPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glSecondaryColorP3ui: PFNGLSECONDARYCOLORP3UIPROC;
pub const PFNGLSECONDARYCOLORP3UIVPROC = ?*const fn (GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glSecondaryColorP3uiv: PFNGLSECONDARYCOLORP3UIVPROC;
pub extern var GLAD_GL_VERSION_4_0: c_int;
pub const PFNGLMINSAMPLESHADINGPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glMinSampleShading: PFNGLMINSAMPLESHADINGPROC;
pub const PFNGLBLENDEQUATIONIPROC = ?*const fn (GLuint, GLenum) callconv(.C) void;
pub extern var glad_glBlendEquationi: PFNGLBLENDEQUATIONIPROC;
pub const PFNGLBLENDEQUATIONSEPARATEIPROC = ?*const fn (GLuint, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBlendEquationSeparatei: PFNGLBLENDEQUATIONSEPARATEIPROC;
pub const PFNGLBLENDFUNCIPROC = ?*const fn (GLuint, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBlendFunci: PFNGLBLENDFUNCIPROC;
pub const PFNGLBLENDFUNCSEPARATEIPROC = ?*const fn (GLuint, GLenum, GLenum, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBlendFuncSeparatei: PFNGLBLENDFUNCSEPARATEIPROC;
pub const PFNGLDRAWARRAYSINDIRECTPROC = ?*const fn (GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glDrawArraysIndirect: PFNGLDRAWARRAYSINDIRECTPROC;
pub const PFNGLDRAWELEMENTSINDIRECTPROC = ?*const fn (GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glDrawElementsIndirect: PFNGLDRAWELEMENTSINDIRECTPROC;
pub const PFNGLUNIFORM1DPROC = ?*const fn (GLint, GLdouble) callconv(.C) void;
pub extern var glad_glUniform1d: PFNGLUNIFORM1DPROC;
pub const PFNGLUNIFORM2DPROC = ?*const fn (GLint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glUniform2d: PFNGLUNIFORM2DPROC;
pub const PFNGLUNIFORM3DPROC = ?*const fn (GLint, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glUniform3d: PFNGLUNIFORM3DPROC;
pub const PFNGLUNIFORM4DPROC = ?*const fn (GLint, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glUniform4d: PFNGLUNIFORM4DPROC;
pub const PFNGLUNIFORM1DVPROC = ?*const fn (GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniform1dv: PFNGLUNIFORM1DVPROC;
pub const PFNGLUNIFORM2DVPROC = ?*const fn (GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniform2dv: PFNGLUNIFORM2DVPROC;
pub const PFNGLUNIFORM3DVPROC = ?*const fn (GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniform3dv: PFNGLUNIFORM3DVPROC;
pub const PFNGLUNIFORM4DVPROC = ?*const fn (GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniform4dv: PFNGLUNIFORM4DVPROC;
pub const PFNGLUNIFORMMATRIX2DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix2dv: PFNGLUNIFORMMATRIX2DVPROC;
pub const PFNGLUNIFORMMATRIX3DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix3dv: PFNGLUNIFORMMATRIX3DVPROC;
pub const PFNGLUNIFORMMATRIX4DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix4dv: PFNGLUNIFORMMATRIX4DVPROC;
pub const PFNGLUNIFORMMATRIX2X3DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix2x3dv: PFNGLUNIFORMMATRIX2X3DVPROC;
pub const PFNGLUNIFORMMATRIX2X4DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix2x4dv: PFNGLUNIFORMMATRIX2X4DVPROC;
pub const PFNGLUNIFORMMATRIX3X2DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix3x2dv: PFNGLUNIFORMMATRIX3X2DVPROC;
pub const PFNGLUNIFORMMATRIX3X4DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix3x4dv: PFNGLUNIFORMMATRIX3X4DVPROC;
pub const PFNGLUNIFORMMATRIX4X2DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix4x2dv: PFNGLUNIFORMMATRIX4X2DVPROC;
pub const PFNGLUNIFORMMATRIX4X3DVPROC = ?*const fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glUniformMatrix4x3dv: PFNGLUNIFORMMATRIX4X3DVPROC;
pub const PFNGLGETUNIFORMDVPROC = ?*const fn (GLuint, GLint, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetUniformdv: PFNGLGETUNIFORMDVPROC;
pub const PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC = ?*const fn (GLuint, GLenum, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetSubroutineUniformLocation: PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC;
pub const PFNGLGETSUBROUTINEINDEXPROC = ?*const fn (GLuint, GLenum, [*c]const GLchar) callconv(.C) GLuint;
pub extern var glad_glGetSubroutineIndex: PFNGLGETSUBROUTINEINDEXPROC;
pub const PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC = ?*const fn (GLuint, GLenum, GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetActiveSubroutineUniformiv: PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC;
pub const PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC = ?*const fn (GLuint, GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetActiveSubroutineUniformName: PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC;
pub const PFNGLGETACTIVESUBROUTINENAMEPROC = ?*const fn (GLuint, GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetActiveSubroutineName: PFNGLGETACTIVESUBROUTINENAMEPROC;
pub const PFNGLUNIFORMSUBROUTINESUIVPROC = ?*const fn (GLenum, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glUniformSubroutinesuiv: PFNGLUNIFORMSUBROUTINESUIVPROC;
pub const PFNGLGETUNIFORMSUBROUTINEUIVPROC = ?*const fn (GLenum, GLint, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetUniformSubroutineuiv: PFNGLGETUNIFORMSUBROUTINEUIVPROC;
pub const PFNGLGETPROGRAMSTAGEIVPROC = ?*const fn (GLuint, GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetProgramStageiv: PFNGLGETPROGRAMSTAGEIVPROC;
pub const PFNGLPATCHPARAMETERIPROC = ?*const fn (GLenum, GLint) callconv(.C) void;
pub extern var glad_glPatchParameteri: PFNGLPATCHPARAMETERIPROC;
pub const PFNGLPATCHPARAMETERFVPROC = ?*const fn (GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glPatchParameterfv: PFNGLPATCHPARAMETERFVPROC;
pub const PFNGLBINDTRANSFORMFEEDBACKPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glBindTransformFeedback: PFNGLBINDTRANSFORMFEEDBACKPROC;
pub const PFNGLDELETETRANSFORMFEEDBACKSPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteTransformFeedbacks: PFNGLDELETETRANSFORMFEEDBACKSPROC;
pub const PFNGLGENTRANSFORMFEEDBACKSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenTransformFeedbacks: PFNGLGENTRANSFORMFEEDBACKSPROC;
pub const PFNGLISTRANSFORMFEEDBACKPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsTransformFeedback: PFNGLISTRANSFORMFEEDBACKPROC;
pub const PFNGLPAUSETRANSFORMFEEDBACKPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPauseTransformFeedback: PFNGLPAUSETRANSFORMFEEDBACKPROC;
pub const PFNGLRESUMETRANSFORMFEEDBACKPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glResumeTransformFeedback: PFNGLRESUMETRANSFORMFEEDBACKPROC;
pub const PFNGLDRAWTRANSFORMFEEDBACKPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glDrawTransformFeedback: PFNGLDRAWTRANSFORMFEEDBACKPROC;
pub const PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC = ?*const fn (GLenum, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glDrawTransformFeedbackStream: PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC;
pub const PFNGLBEGINQUERYINDEXEDPROC = ?*const fn (GLenum, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glBeginQueryIndexed: PFNGLBEGINQUERYINDEXEDPROC;
pub const PFNGLENDQUERYINDEXEDPROC = ?*const fn (GLenum, GLuint) callconv(.C) void;
pub extern var glad_glEndQueryIndexed: PFNGLENDQUERYINDEXEDPROC;
pub const PFNGLGETQUERYINDEXEDIVPROC = ?*const fn (GLenum, GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetQueryIndexediv: PFNGLGETQUERYINDEXEDIVPROC;
pub extern var GLAD_GL_VERSION_4_1: c_int;
pub const PFNGLRELEASESHADERCOMPILERPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glReleaseShaderCompiler: PFNGLRELEASESHADERCOMPILERPROC;
pub const PFNGLSHADERBINARYPROC = ?*const fn (GLsizei, [*c]const GLuint, GLenum, ?*const anyopaque, GLsizei) callconv(.C) void;
pub extern var glad_glShaderBinary: PFNGLSHADERBINARYPROC;
pub const PFNGLGETSHADERPRECISIONFORMATPROC = ?*const fn (GLenum, GLenum, [*c]GLint, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetShaderPrecisionFormat: PFNGLGETSHADERPRECISIONFORMATPROC;
pub const PFNGLDEPTHRANGEFPROC = ?*const fn (GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glDepthRangef: PFNGLDEPTHRANGEFPROC;
pub const PFNGLCLEARDEPTHFPROC = ?*const fn (GLfloat) callconv(.C) void;
pub extern var glad_glClearDepthf: PFNGLCLEARDEPTHFPROC;
pub const PFNGLGETPROGRAMBINARYPROC = ?*const fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLenum, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetProgramBinary: PFNGLGETPROGRAMBINARYPROC;
pub const PFNGLPROGRAMBINARYPROC = ?*const fn (GLuint, GLenum, ?*const anyopaque, GLsizei) callconv(.C) void;
pub extern var glad_glProgramBinary: PFNGLPROGRAMBINARYPROC;
pub const PFNGLPROGRAMPARAMETERIPROC = ?*const fn (GLuint, GLenum, GLint) callconv(.C) void;
pub extern var glad_glProgramParameteri: PFNGLPROGRAMPARAMETERIPROC;
pub const PFNGLUSEPROGRAMSTAGESPROC = ?*const fn (GLuint, GLbitfield, GLuint) callconv(.C) void;
pub extern var glad_glUseProgramStages: PFNGLUSEPROGRAMSTAGESPROC;
pub const PFNGLACTIVESHADERPROGRAMPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glActiveShaderProgram: PFNGLACTIVESHADERPROGRAMPROC;
pub const PFNGLCREATESHADERPROGRAMVPROC = ?*const fn (GLenum, GLsizei, [*c]const [*c]const GLchar) callconv(.C) GLuint;
pub extern var glad_glCreateShaderProgramv: PFNGLCREATESHADERPROGRAMVPROC;
pub const PFNGLBINDPROGRAMPIPELINEPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glBindProgramPipeline: PFNGLBINDPROGRAMPIPELINEPROC;
pub const PFNGLDELETEPROGRAMPIPELINESPROC = ?*const fn (GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glDeleteProgramPipelines: PFNGLDELETEPROGRAMPIPELINESPROC;
pub const PFNGLGENPROGRAMPIPELINESPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGenProgramPipelines: PFNGLGENPROGRAMPIPELINESPROC;
pub const PFNGLISPROGRAMPIPELINEPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glIsProgramPipeline: PFNGLISPROGRAMPIPELINEPROC;
pub const PFNGLGETPROGRAMPIPELINEIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetProgramPipelineiv: PFNGLGETPROGRAMPIPELINEIVPROC;
pub const PFNGLPROGRAMUNIFORM1IPROC = ?*const fn (GLuint, GLint, GLint) callconv(.C) void;
pub extern var glad_glProgramUniform1i: PFNGLPROGRAMUNIFORM1IPROC;
pub const PFNGLPROGRAMUNIFORM1IVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glProgramUniform1iv: PFNGLPROGRAMUNIFORM1IVPROC;
pub const PFNGLPROGRAMUNIFORM1FPROC = ?*const fn (GLuint, GLint, GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform1f: PFNGLPROGRAMUNIFORM1FPROC;
pub const PFNGLPROGRAMUNIFORM1FVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform1fv: PFNGLPROGRAMUNIFORM1FVPROC;
pub const PFNGLPROGRAMUNIFORM1DPROC = ?*const fn (GLuint, GLint, GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform1d: PFNGLPROGRAMUNIFORM1DPROC;
pub const PFNGLPROGRAMUNIFORM1DVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform1dv: PFNGLPROGRAMUNIFORM1DVPROC;
pub const PFNGLPROGRAMUNIFORM1UIPROC = ?*const fn (GLuint, GLint, GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform1ui: PFNGLPROGRAMUNIFORM1UIPROC;
pub const PFNGLPROGRAMUNIFORM1UIVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform1uiv: PFNGLPROGRAMUNIFORM1UIVPROC;
pub const PFNGLPROGRAMUNIFORM2IPROC = ?*const fn (GLuint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glProgramUniform2i: PFNGLPROGRAMUNIFORM2IPROC;
pub const PFNGLPROGRAMUNIFORM2IVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glProgramUniform2iv: PFNGLPROGRAMUNIFORM2IVPROC;
pub const PFNGLPROGRAMUNIFORM2FPROC = ?*const fn (GLuint, GLint, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform2f: PFNGLPROGRAMUNIFORM2FPROC;
pub const PFNGLPROGRAMUNIFORM2FVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform2fv: PFNGLPROGRAMUNIFORM2FVPROC;
pub const PFNGLPROGRAMUNIFORM2DPROC = ?*const fn (GLuint, GLint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform2d: PFNGLPROGRAMUNIFORM2DPROC;
pub const PFNGLPROGRAMUNIFORM2DVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform2dv: PFNGLPROGRAMUNIFORM2DVPROC;
pub const PFNGLPROGRAMUNIFORM2UIPROC = ?*const fn (GLuint, GLint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform2ui: PFNGLPROGRAMUNIFORM2UIPROC;
pub const PFNGLPROGRAMUNIFORM2UIVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform2uiv: PFNGLPROGRAMUNIFORM2UIVPROC;
pub const PFNGLPROGRAMUNIFORM3IPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glProgramUniform3i: PFNGLPROGRAMUNIFORM3IPROC;
pub const PFNGLPROGRAMUNIFORM3IVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glProgramUniform3iv: PFNGLPROGRAMUNIFORM3IVPROC;
pub const PFNGLPROGRAMUNIFORM3FPROC = ?*const fn (GLuint, GLint, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform3f: PFNGLPROGRAMUNIFORM3FPROC;
pub const PFNGLPROGRAMUNIFORM3FVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform3fv: PFNGLPROGRAMUNIFORM3FVPROC;
pub const PFNGLPROGRAMUNIFORM3DPROC = ?*const fn (GLuint, GLint, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform3d: PFNGLPROGRAMUNIFORM3DPROC;
pub const PFNGLPROGRAMUNIFORM3DVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform3dv: PFNGLPROGRAMUNIFORM3DVPROC;
pub const PFNGLPROGRAMUNIFORM3UIPROC = ?*const fn (GLuint, GLint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform3ui: PFNGLPROGRAMUNIFORM3UIPROC;
pub const PFNGLPROGRAMUNIFORM3UIVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform3uiv: PFNGLPROGRAMUNIFORM3UIVPROC;
pub const PFNGLPROGRAMUNIFORM4IPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLint) callconv(.C) void;
pub extern var glad_glProgramUniform4i: PFNGLPROGRAMUNIFORM4IPROC;
pub const PFNGLPROGRAMUNIFORM4IVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glProgramUniform4iv: PFNGLPROGRAMUNIFORM4IVPROC;
pub const PFNGLPROGRAMUNIFORM4FPROC = ?*const fn (GLuint, GLint, GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform4f: PFNGLPROGRAMUNIFORM4FPROC;
pub const PFNGLPROGRAMUNIFORM4FVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniform4fv: PFNGLPROGRAMUNIFORM4FVPROC;
pub const PFNGLPROGRAMUNIFORM4DPROC = ?*const fn (GLuint, GLint, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform4d: PFNGLPROGRAMUNIFORM4DPROC;
pub const PFNGLPROGRAMUNIFORM4DVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniform4dv: PFNGLPROGRAMUNIFORM4DVPROC;
pub const PFNGLPROGRAMUNIFORM4UIPROC = ?*const fn (GLuint, GLint, GLuint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform4ui: PFNGLPROGRAMUNIFORM4UIPROC;
pub const PFNGLPROGRAMUNIFORM4UIVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glProgramUniform4uiv: PFNGLPROGRAMUNIFORM4UIVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX2FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix2fv: PFNGLPROGRAMUNIFORMMATRIX2FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX3FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix3fv: PFNGLPROGRAMUNIFORMMATRIX3FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX4FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix4fv: PFNGLPROGRAMUNIFORMMATRIX4FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX2DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix2dv: PFNGLPROGRAMUNIFORMMATRIX2DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX3DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix3dv: PFNGLPROGRAMUNIFORMMATRIX3DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX4DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix4dv: PFNGLPROGRAMUNIFORMMATRIX4DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix2x3fv: PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix3x2fv: PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix2x4fv: PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix4x2fv: PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix3x4fv: PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix4x3fv: PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix2x3dv: PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix3x2dv: PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix2x4dv: PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix4x2dv: PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix3x4dv: PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC;
pub const PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC = ?*const fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glProgramUniformMatrix4x3dv: PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC;
pub const PFNGLVALIDATEPROGRAMPIPELINEPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glValidateProgramPipeline: PFNGLVALIDATEPROGRAMPIPELINEPROC;
pub const PFNGLGETPROGRAMPIPELINEINFOLOGPROC = ?*const fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetProgramPipelineInfoLog: PFNGLGETPROGRAMPIPELINEINFOLOGPROC;
pub const PFNGLVERTEXATTRIBL1DPROC = ?*const fn (GLuint, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL1d: PFNGLVERTEXATTRIBL1DPROC;
pub const PFNGLVERTEXATTRIBL2DPROC = ?*const fn (GLuint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL2d: PFNGLVERTEXATTRIBL2DPROC;
pub const PFNGLVERTEXATTRIBL3DPROC = ?*const fn (GLuint, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL3d: PFNGLVERTEXATTRIBL3DPROC;
pub const PFNGLVERTEXATTRIBL4DPROC = ?*const fn (GLuint, GLdouble, GLdouble, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL4d: PFNGLVERTEXATTRIBL4DPROC;
pub const PFNGLVERTEXATTRIBL1DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL1dv: PFNGLVERTEXATTRIBL1DVPROC;
pub const PFNGLVERTEXATTRIBL2DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL2dv: PFNGLVERTEXATTRIBL2DVPROC;
pub const PFNGLVERTEXATTRIBL3DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL3dv: PFNGLVERTEXATTRIBL3DVPROC;
pub const PFNGLVERTEXATTRIBL4DVPROC = ?*const fn (GLuint, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glVertexAttribL4dv: PFNGLVERTEXATTRIBL4DVPROC;
pub const PFNGLVERTEXATTRIBLPOINTERPROC = ?*const fn (GLuint, GLint, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glVertexAttribLPointer: PFNGLVERTEXATTRIBLPOINTERPROC;
pub const PFNGLGETVERTEXATTRIBLDVPROC = ?*const fn (GLuint, GLenum, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetVertexAttribLdv: PFNGLGETVERTEXATTRIBLDVPROC;
pub const PFNGLVIEWPORTARRAYVPROC = ?*const fn (GLuint, GLsizei, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glViewportArrayv: PFNGLVIEWPORTARRAYVPROC;
pub const PFNGLVIEWPORTINDEXEDFPROC = ?*const fn (GLuint, GLfloat, GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glViewportIndexedf: PFNGLVIEWPORTINDEXEDFPROC;
pub const PFNGLVIEWPORTINDEXEDFVPROC = ?*const fn (GLuint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glViewportIndexedfv: PFNGLVIEWPORTINDEXEDFVPROC;
pub const PFNGLSCISSORARRAYVPROC = ?*const fn (GLuint, GLsizei, [*c]const GLint) callconv(.C) void;
pub extern var glad_glScissorArrayv: PFNGLSCISSORARRAYVPROC;
pub const PFNGLSCISSORINDEXEDPROC = ?*const fn (GLuint, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glScissorIndexed: PFNGLSCISSORINDEXEDPROC;
pub const PFNGLSCISSORINDEXEDVPROC = ?*const fn (GLuint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glScissorIndexedv: PFNGLSCISSORINDEXEDVPROC;
pub const PFNGLDEPTHRANGEARRAYVPROC = ?*const fn (GLuint, GLsizei, [*c]const GLdouble) callconv(.C) void;
pub extern var glad_glDepthRangeArrayv: PFNGLDEPTHRANGEARRAYVPROC;
pub const PFNGLDEPTHRANGEINDEXEDPROC = ?*const fn (GLuint, GLdouble, GLdouble) callconv(.C) void;
pub extern var glad_glDepthRangeIndexed: PFNGLDEPTHRANGEINDEXEDPROC;
pub const PFNGLGETFLOATI_VPROC = ?*const fn (GLenum, GLuint, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetFloati_v: PFNGLGETFLOATI_VPROC;
pub const PFNGLGETDOUBLEI_VPROC = ?*const fn (GLenum, GLuint, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetDoublei_v: PFNGLGETDOUBLEI_VPROC;
pub extern var GLAD_GL_VERSION_4_2: c_int;
pub const PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC = ?*const fn (GLenum, GLint, GLsizei, GLsizei, GLuint) callconv(.C) void;
pub extern var glad_glDrawArraysInstancedBaseInstance: PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC;
pub const PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC = ?*const fn (GLenum, GLsizei, GLenum, ?*const anyopaque, GLsizei, GLuint) callconv(.C) void;
pub extern var glad_glDrawElementsInstancedBaseInstance: PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC;
pub const PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC = ?*const fn (GLenum, GLsizei, GLenum, ?*const anyopaque, GLsizei, GLint, GLuint) callconv(.C) void;
pub extern var glad_glDrawElementsInstancedBaseVertexBaseInstance: PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC;
pub const PFNGLGETINTERNALFORMATIVPROC = ?*const fn (GLenum, GLenum, GLenum, GLsizei, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetInternalformativ: PFNGLGETINTERNALFORMATIVPROC;
pub const PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC = ?*const fn (GLuint, GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetActiveAtomicCounterBufferiv: PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC;
pub const PFNGLBINDIMAGETEXTUREPROC = ?*const fn (GLuint, GLuint, GLint, GLboolean, GLint, GLenum, GLenum) callconv(.C) void;
pub extern var glad_glBindImageTexture: PFNGLBINDIMAGETEXTUREPROC;
pub const PFNGLMEMORYBARRIERPROC = ?*const fn (GLbitfield) callconv(.C) void;
pub extern var glad_glMemoryBarrier: PFNGLMEMORYBARRIERPROC;
pub const PFNGLTEXSTORAGE1DPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei) callconv(.C) void;
pub extern var glad_glTexStorage1D: PFNGLTEXSTORAGE1DPROC;
pub const PFNGLTEXSTORAGE2DPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glTexStorage2D: PFNGLTEXSTORAGE2DPROC;
pub const PFNGLTEXSTORAGE3DPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glTexStorage3D: PFNGLTEXSTORAGE3DPROC;
pub const PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC = ?*const fn (GLenum, GLuint, GLsizei) callconv(.C) void;
pub extern var glad_glDrawTransformFeedbackInstanced: PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC;
pub const PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC = ?*const fn (GLenum, GLuint, GLuint, GLsizei) callconv(.C) void;
pub extern var glad_glDrawTransformFeedbackStreamInstanced: PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC;
pub extern var GLAD_GL_VERSION_4_3: c_int;
pub const PFNGLCLEARBUFFERDATAPROC = ?*const fn (GLenum, GLenum, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glClearBufferData: PFNGLCLEARBUFFERDATAPROC;
pub const PFNGLCLEARBUFFERSUBDATAPROC = ?*const fn (GLenum, GLenum, GLintptr, GLsizeiptr, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glClearBufferSubData: PFNGLCLEARBUFFERSUBDATAPROC;
pub const PFNGLDISPATCHCOMPUTEPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glDispatchCompute: PFNGLDISPATCHCOMPUTEPROC;
pub const PFNGLDISPATCHCOMPUTEINDIRECTPROC = ?*const fn (GLintptr) callconv(.C) void;
pub extern var glad_glDispatchComputeIndirect: PFNGLDISPATCHCOMPUTEINDIRECTPROC;
pub const PFNGLCOPYIMAGESUBDATAPROC = ?*const fn (GLuint, GLenum, GLint, GLint, GLint, GLint, GLuint, GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glCopyImageSubData: PFNGLCOPYIMAGESUBDATAPROC;
pub const PFNGLFRAMEBUFFERPARAMETERIPROC = ?*const fn (GLenum, GLenum, GLint) callconv(.C) void;
pub extern var glad_glFramebufferParameteri: PFNGLFRAMEBUFFERPARAMETERIPROC;
pub const PFNGLGETFRAMEBUFFERPARAMETERIVPROC = ?*const fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetFramebufferParameteriv: PFNGLGETFRAMEBUFFERPARAMETERIVPROC;
pub const PFNGLGETINTERNALFORMATI64VPROC = ?*const fn (GLenum, GLenum, GLenum, GLsizei, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetInternalformati64v: PFNGLGETINTERNALFORMATI64VPROC;
pub const PFNGLINVALIDATETEXSUBIMAGEPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glInvalidateTexSubImage: PFNGLINVALIDATETEXSUBIMAGEPROC;
pub const PFNGLINVALIDATETEXIMAGEPROC = ?*const fn (GLuint, GLint) callconv(.C) void;
pub extern var glad_glInvalidateTexImage: PFNGLINVALIDATETEXIMAGEPROC;
pub const PFNGLINVALIDATEBUFFERSUBDATAPROC = ?*const fn (GLuint, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glInvalidateBufferSubData: PFNGLINVALIDATEBUFFERSUBDATAPROC;
pub const PFNGLINVALIDATEBUFFERDATAPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glInvalidateBufferData: PFNGLINVALIDATEBUFFERDATAPROC;
pub const PFNGLINVALIDATEFRAMEBUFFERPROC = ?*const fn (GLenum, GLsizei, [*c]const GLenum) callconv(.C) void;
pub extern var glad_glInvalidateFramebuffer: PFNGLINVALIDATEFRAMEBUFFERPROC;
pub const PFNGLINVALIDATESUBFRAMEBUFFERPROC = ?*const fn (GLenum, GLsizei, [*c]const GLenum, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glInvalidateSubFramebuffer: PFNGLINVALIDATESUBFRAMEBUFFERPROC;
pub const PFNGLMULTIDRAWARRAYSINDIRECTPROC = ?*const fn (GLenum, ?*const anyopaque, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glMultiDrawArraysIndirect: PFNGLMULTIDRAWARRAYSINDIRECTPROC;
pub const PFNGLMULTIDRAWELEMENTSINDIRECTPROC = ?*const fn (GLenum, GLenum, ?*const anyopaque, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glMultiDrawElementsIndirect: PFNGLMULTIDRAWELEMENTSINDIRECTPROC;
pub const PFNGLGETPROGRAMINTERFACEIVPROC = ?*const fn (GLuint, GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetProgramInterfaceiv: PFNGLGETPROGRAMINTERFACEIVPROC;
pub const PFNGLGETPROGRAMRESOURCEINDEXPROC = ?*const fn (GLuint, GLenum, [*c]const GLchar) callconv(.C) GLuint;
pub extern var glad_glGetProgramResourceIndex: PFNGLGETPROGRAMRESOURCEINDEXPROC;
pub const PFNGLGETPROGRAMRESOURCENAMEPROC = ?*const fn (GLuint, GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetProgramResourceName: PFNGLGETPROGRAMRESOURCENAMEPROC;
pub const PFNGLGETPROGRAMRESOURCEIVPROC = ?*const fn (GLuint, GLenum, GLuint, GLsizei, [*c]const GLenum, GLsizei, [*c]GLsizei, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetProgramResourceiv: PFNGLGETPROGRAMRESOURCEIVPROC;
pub const PFNGLGETPROGRAMRESOURCELOCATIONPROC = ?*const fn (GLuint, GLenum, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetProgramResourceLocation: PFNGLGETPROGRAMRESOURCELOCATIONPROC;
pub const PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC = ?*const fn (GLuint, GLenum, [*c]const GLchar) callconv(.C) GLint;
pub extern var glad_glGetProgramResourceLocationIndex: PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC;
pub const PFNGLSHADERSTORAGEBLOCKBINDINGPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glShaderStorageBlockBinding: PFNGLSHADERSTORAGEBLOCKBINDINGPROC;
pub const PFNGLTEXBUFFERRANGEPROC = ?*const fn (GLenum, GLenum, GLuint, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glTexBufferRange: PFNGLTEXBUFFERRANGEPROC;
pub const PFNGLTEXSTORAGE2DMULTISAMPLEPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLboolean) callconv(.C) void;
pub extern var glad_glTexStorage2DMultisample: PFNGLTEXSTORAGE2DMULTISAMPLEPROC;
pub const PFNGLTEXSTORAGE3DMULTISAMPLEPROC = ?*const fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLsizei, GLboolean) callconv(.C) void;
pub extern var glad_glTexStorage3DMultisample: PFNGLTEXSTORAGE3DMULTISAMPLEPROC;
pub const PFNGLTEXTUREVIEWPROC = ?*const fn (GLuint, GLenum, GLuint, GLenum, GLuint, GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glTextureView: PFNGLTEXTUREVIEWPROC;
pub const PFNGLBINDVERTEXBUFFERPROC = ?*const fn (GLuint, GLuint, GLintptr, GLsizei) callconv(.C) void;
pub extern var glad_glBindVertexBuffer: PFNGLBINDVERTEXBUFFERPROC;
pub const PFNGLVERTEXATTRIBFORMATPROC = ?*const fn (GLuint, GLint, GLenum, GLboolean, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribFormat: PFNGLVERTEXATTRIBFORMATPROC;
pub const PFNGLVERTEXATTRIBIFORMATPROC = ?*const fn (GLuint, GLint, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribIFormat: PFNGLVERTEXATTRIBIFORMATPROC;
pub const PFNGLVERTEXATTRIBLFORMATPROC = ?*const fn (GLuint, GLint, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribLFormat: PFNGLVERTEXATTRIBLFORMATPROC;
pub const PFNGLVERTEXATTRIBBINDINGPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexAttribBinding: PFNGLVERTEXATTRIBBINDINGPROC;
pub const PFNGLVERTEXBINDINGDIVISORPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexBindingDivisor: PFNGLVERTEXBINDINGDIVISORPROC;
pub const PFNGLDEBUGMESSAGECONTROLPROC = ?*const fn (GLenum, GLenum, GLenum, GLsizei, [*c]const GLuint, GLboolean) callconv(.C) void;
pub extern var glad_glDebugMessageControl: PFNGLDEBUGMESSAGECONTROLPROC;
pub const PFNGLDEBUGMESSAGEINSERTPROC = ?*const fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glDebugMessageInsert: PFNGLDEBUGMESSAGEINSERTPROC;
pub const PFNGLDEBUGMESSAGECALLBACKPROC = ?*const fn (GLDEBUGPROC, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glDebugMessageCallback: PFNGLDEBUGMESSAGECALLBACKPROC;
pub const PFNGLGETDEBUGMESSAGELOGPROC = ?*const fn (GLuint, GLsizei, [*c]GLenum, [*c]GLenum, [*c]GLuint, [*c]GLenum, [*c]GLsizei, [*c]GLchar) callconv(.C) GLuint;
pub extern var glad_glGetDebugMessageLog: PFNGLGETDEBUGMESSAGELOGPROC;
pub const PFNGLPUSHDEBUGGROUPPROC = ?*const fn (GLenum, GLuint, GLsizei, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glPushDebugGroup: PFNGLPUSHDEBUGGROUPPROC;
pub const PFNGLPOPDEBUGGROUPPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glPopDebugGroup: PFNGLPOPDEBUGGROUPPROC;
pub const PFNGLOBJECTLABELPROC = ?*const fn (GLenum, GLuint, GLsizei, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glObjectLabel: PFNGLOBJECTLABELPROC;
pub const PFNGLGETOBJECTLABELPROC = ?*const fn (GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetObjectLabel: PFNGLGETOBJECTLABELPROC;
pub const PFNGLOBJECTPTRLABELPROC = ?*const fn (?*const anyopaque, GLsizei, [*c]const GLchar) callconv(.C) void;
pub extern var glad_glObjectPtrLabel: PFNGLOBJECTPTRLABELPROC;
pub const PFNGLGETOBJECTPTRLABELPROC = ?*const fn (?*const anyopaque, GLsizei, [*c]GLsizei, [*c]GLchar) callconv(.C) void;
pub extern var glad_glGetObjectPtrLabel: PFNGLGETOBJECTPTRLABELPROC;
pub extern var GLAD_GL_VERSION_4_4: c_int;
pub const PFNGLBUFFERSTORAGEPROC = ?*const fn (GLenum, GLsizeiptr, ?*const anyopaque, GLbitfield) callconv(.C) void;
pub extern var glad_glBufferStorage: PFNGLBUFFERSTORAGEPROC;
pub const PFNGLCLEARTEXIMAGEPROC = ?*const fn (GLuint, GLint, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glClearTexImage: PFNGLCLEARTEXIMAGEPROC;
pub const PFNGLCLEARTEXSUBIMAGEPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glClearTexSubImage: PFNGLCLEARTEXSUBIMAGEPROC;
pub const PFNGLBINDBUFFERSBASEPROC = ?*const fn (GLenum, GLuint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glBindBuffersBase: PFNGLBINDBUFFERSBASEPROC;
pub const PFNGLBINDBUFFERSRANGEPROC = ?*const fn (GLenum, GLuint, GLsizei, [*c]const GLuint, [*c]const GLintptr, [*c]const GLsizeiptr) callconv(.C) void;
pub extern var glad_glBindBuffersRange: PFNGLBINDBUFFERSRANGEPROC;
pub const PFNGLBINDTEXTURESPROC = ?*const fn (GLuint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glBindTextures: PFNGLBINDTEXTURESPROC;
pub const PFNGLBINDSAMPLERSPROC = ?*const fn (GLuint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glBindSamplers: PFNGLBINDSAMPLERSPROC;
pub const PFNGLBINDIMAGETEXTURESPROC = ?*const fn (GLuint, GLsizei, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glBindImageTextures: PFNGLBINDIMAGETEXTURESPROC;
pub const PFNGLBINDVERTEXBUFFERSPROC = ?*const fn (GLuint, GLsizei, [*c]const GLuint, [*c]const GLintptr, [*c]const GLsizei) callconv(.C) void;
pub extern var glad_glBindVertexBuffers: PFNGLBINDVERTEXBUFFERSPROC;
pub extern var GLAD_GL_VERSION_4_5: c_int;
pub const PFNGLCLIPCONTROLPROC = ?*const fn (GLenum, GLenum) callconv(.C) void;
pub extern var glad_glClipControl: PFNGLCLIPCONTROLPROC;
pub const PFNGLCREATETRANSFORMFEEDBACKSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateTransformFeedbacks: PFNGLCREATETRANSFORMFEEDBACKSPROC;
pub const PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glTransformFeedbackBufferBase: PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC;
pub const PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC = ?*const fn (GLuint, GLuint, GLuint, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glTransformFeedbackBufferRange: PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC;
pub const PFNGLGETTRANSFORMFEEDBACKIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTransformFeedbackiv: PFNGLGETTRANSFORMFEEDBACKIVPROC;
pub const PFNGLGETTRANSFORMFEEDBACKI_VPROC = ?*const fn (GLuint, GLenum, GLuint, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTransformFeedbacki_v: PFNGLGETTRANSFORMFEEDBACKI_VPROC;
pub const PFNGLGETTRANSFORMFEEDBACKI64_VPROC = ?*const fn (GLuint, GLenum, GLuint, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetTransformFeedbacki64_v: PFNGLGETTRANSFORMFEEDBACKI64_VPROC;
pub const PFNGLCREATEBUFFERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateBuffers: PFNGLCREATEBUFFERSPROC;
pub const PFNGLNAMEDBUFFERSTORAGEPROC = ?*const fn (GLuint, GLsizeiptr, ?*const anyopaque, GLbitfield) callconv(.C) void;
pub extern var glad_glNamedBufferStorage: PFNGLNAMEDBUFFERSTORAGEPROC;
pub const PFNGLNAMEDBUFFERDATAPROC = ?*const fn (GLuint, GLsizeiptr, ?*const anyopaque, GLenum) callconv(.C) void;
pub extern var glad_glNamedBufferData: PFNGLNAMEDBUFFERDATAPROC;
pub const PFNGLNAMEDBUFFERSUBDATAPROC = ?*const fn (GLuint, GLintptr, GLsizeiptr, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glNamedBufferSubData: PFNGLNAMEDBUFFERSUBDATAPROC;
pub const PFNGLCOPYNAMEDBUFFERSUBDATAPROC = ?*const fn (GLuint, GLuint, GLintptr, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glCopyNamedBufferSubData: PFNGLCOPYNAMEDBUFFERSUBDATAPROC;
pub const PFNGLCLEARNAMEDBUFFERDATAPROC = ?*const fn (GLuint, GLenum, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glClearNamedBufferData: PFNGLCLEARNAMEDBUFFERDATAPROC;
pub const PFNGLCLEARNAMEDBUFFERSUBDATAPROC = ?*const fn (GLuint, GLenum, GLintptr, GLsizeiptr, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glClearNamedBufferSubData: PFNGLCLEARNAMEDBUFFERSUBDATAPROC;
pub const PFNGLMAPNAMEDBUFFERPROC = ?*const fn (GLuint, GLenum) callconv(.C) ?*anyopaque;
pub extern var glad_glMapNamedBuffer: PFNGLMAPNAMEDBUFFERPROC;
pub const PFNGLMAPNAMEDBUFFERRANGEPROC = ?*const fn (GLuint, GLintptr, GLsizeiptr, GLbitfield) callconv(.C) ?*anyopaque;
pub extern var glad_glMapNamedBufferRange: PFNGLMAPNAMEDBUFFERRANGEPROC;
pub const PFNGLUNMAPNAMEDBUFFERPROC = ?*const fn (GLuint) callconv(.C) GLboolean;
pub extern var glad_glUnmapNamedBuffer: PFNGLUNMAPNAMEDBUFFERPROC;
pub const PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC = ?*const fn (GLuint, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glFlushMappedNamedBufferRange: PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC;
pub const PFNGLGETNAMEDBUFFERPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetNamedBufferParameteriv: PFNGLGETNAMEDBUFFERPARAMETERIVPROC;
pub const PFNGLGETNAMEDBUFFERPARAMETERI64VPROC = ?*const fn (GLuint, GLenum, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetNamedBufferParameteri64v: PFNGLGETNAMEDBUFFERPARAMETERI64VPROC;
pub const PFNGLGETNAMEDBUFFERPOINTERVPROC = ?*const fn (GLuint, GLenum, [*c]?*anyopaque) callconv(.C) void;
pub extern var glad_glGetNamedBufferPointerv: PFNGLGETNAMEDBUFFERPOINTERVPROC;
pub const PFNGLGETNAMEDBUFFERSUBDATAPROC = ?*const fn (GLuint, GLintptr, GLsizeiptr, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetNamedBufferSubData: PFNGLGETNAMEDBUFFERSUBDATAPROC;
pub const PFNGLCREATEFRAMEBUFFERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateFramebuffers: PFNGLCREATEFRAMEBUFFERSPROC;
pub const PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC = ?*const fn (GLuint, GLenum, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glNamedFramebufferRenderbuffer: PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC;
pub const PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC = ?*const fn (GLuint, GLenum, GLint) callconv(.C) void;
pub extern var glad_glNamedFramebufferParameteri: PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC;
pub const PFNGLNAMEDFRAMEBUFFERTEXTUREPROC = ?*const fn (GLuint, GLenum, GLuint, GLint) callconv(.C) void;
pub extern var glad_glNamedFramebufferTexture: PFNGLNAMEDFRAMEBUFFERTEXTUREPROC;
pub const PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC = ?*const fn (GLuint, GLenum, GLuint, GLint, GLint) callconv(.C) void;
pub extern var glad_glNamedFramebufferTextureLayer: PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC;
pub const PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC = ?*const fn (GLuint, GLenum) callconv(.C) void;
pub extern var glad_glNamedFramebufferDrawBuffer: PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC;
pub const PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC = ?*const fn (GLuint, GLsizei, [*c]const GLenum) callconv(.C) void;
pub extern var glad_glNamedFramebufferDrawBuffers: PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC;
pub const PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC = ?*const fn (GLuint, GLenum) callconv(.C) void;
pub extern var glad_glNamedFramebufferReadBuffer: PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC;
pub const PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC = ?*const fn (GLuint, GLsizei, [*c]const GLenum) callconv(.C) void;
pub extern var glad_glInvalidateNamedFramebufferData: PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC;
pub const PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC = ?*const fn (GLuint, GLsizei, [*c]const GLenum, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glInvalidateNamedFramebufferSubData: PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC;
pub const PFNGLCLEARNAMEDFRAMEBUFFERIVPROC = ?*const fn (GLuint, GLenum, GLint, [*c]const GLint) callconv(.C) void;
pub extern var glad_glClearNamedFramebufferiv: PFNGLCLEARNAMEDFRAMEBUFFERIVPROC;
pub const PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC = ?*const fn (GLuint, GLenum, GLint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glClearNamedFramebufferuiv: PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC;
pub const PFNGLCLEARNAMEDFRAMEBUFFERFVPROC = ?*const fn (GLuint, GLenum, GLint, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glClearNamedFramebufferfv: PFNGLCLEARNAMEDFRAMEBUFFERFVPROC;
pub const PFNGLCLEARNAMEDFRAMEBUFFERFIPROC = ?*const fn (GLuint, GLenum, GLint, GLfloat, GLint) callconv(.C) void;
pub extern var glad_glClearNamedFramebufferfi: PFNGLCLEARNAMEDFRAMEBUFFERFIPROC;
pub const PFNGLBLITNAMEDFRAMEBUFFERPROC = ?*const fn (GLuint, GLuint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLbitfield, GLenum) callconv(.C) void;
pub extern var glad_glBlitNamedFramebuffer: PFNGLBLITNAMEDFRAMEBUFFERPROC;
pub const PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC = ?*const fn (GLuint, GLenum) callconv(.C) GLenum;
pub extern var glad_glCheckNamedFramebufferStatus: PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC;
pub const PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetNamedFramebufferParameteriv: PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC;
pub const PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC = ?*const fn (GLuint, GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetNamedFramebufferAttachmentParameteriv: PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC;
pub const PFNGLCREATERENDERBUFFERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateRenderbuffers: PFNGLCREATERENDERBUFFERSPROC;
pub const PFNGLNAMEDRENDERBUFFERSTORAGEPROC = ?*const fn (GLuint, GLenum, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glNamedRenderbufferStorage: PFNGLNAMEDRENDERBUFFERSTORAGEPROC;
pub const PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC = ?*const fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glNamedRenderbufferStorageMultisample: PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC;
pub const PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetNamedRenderbufferParameteriv: PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC;
pub const PFNGLCREATETEXTURESPROC = ?*const fn (GLenum, GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateTextures: PFNGLCREATETEXTURESPROC;
pub const PFNGLTEXTUREBUFFERPROC = ?*const fn (GLuint, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glTextureBuffer: PFNGLTEXTUREBUFFERPROC;
pub const PFNGLTEXTUREBUFFERRANGEPROC = ?*const fn (GLuint, GLenum, GLuint, GLintptr, GLsizeiptr) callconv(.C) void;
pub extern var glad_glTextureBufferRange: PFNGLTEXTUREBUFFERRANGEPROC;
pub const PFNGLTEXTURESTORAGE1DPROC = ?*const fn (GLuint, GLsizei, GLenum, GLsizei) callconv(.C) void;
pub extern var glad_glTextureStorage1D: PFNGLTEXTURESTORAGE1DPROC;
pub const PFNGLTEXTURESTORAGE2DPROC = ?*const fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glTextureStorage2D: PFNGLTEXTURESTORAGE2DPROC;
pub const PFNGLTEXTURESTORAGE3DPROC = ?*const fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glTextureStorage3D: PFNGLTEXTURESTORAGE3DPROC;
pub const PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC = ?*const fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei, GLboolean) callconv(.C) void;
pub extern var glad_glTextureStorage2DMultisample: PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC;
pub const PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC = ?*const fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei, GLsizei, GLboolean) callconv(.C) void;
pub extern var glad_glTextureStorage3DMultisample: PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC;
pub const PFNGLTEXTURESUBIMAGE1DPROC = ?*const fn (GLuint, GLint, GLint, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTextureSubImage1D: PFNGLTEXTURESUBIMAGE1DPROC;
pub const PFNGLTEXTURESUBIMAGE2DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTextureSubImage2D: PFNGLTEXTURESUBIMAGE2DPROC;
pub const PFNGLTEXTURESUBIMAGE3DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glTextureSubImage3D: PFNGLTEXTURESUBIMAGE3DPROC;
pub const PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC = ?*const fn (GLuint, GLint, GLint, GLsizei, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTextureSubImage1D: PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC;
pub const PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTextureSubImage2D: PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC;
pub const PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, ?*const anyopaque) callconv(.C) void;
pub extern var glad_glCompressedTextureSubImage3D: PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC;
pub const PFNGLCOPYTEXTURESUBIMAGE1DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei) callconv(.C) void;
pub extern var glad_glCopyTextureSubImage1D: PFNGLCOPYTEXTURESUBIMAGE1DPROC;
pub const PFNGLCOPYTEXTURESUBIMAGE2DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glCopyTextureSubImage2D: PFNGLCOPYTEXTURESUBIMAGE2DPROC;
pub const PFNGLCOPYTEXTURESUBIMAGE3DPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glCopyTextureSubImage3D: PFNGLCOPYTEXTURESUBIMAGE3DPROC;
pub const PFNGLTEXTUREPARAMETERFPROC = ?*const fn (GLuint, GLenum, GLfloat) callconv(.C) void;
pub extern var glad_glTextureParameterf: PFNGLTEXTUREPARAMETERFPROC;
pub const PFNGLTEXTUREPARAMETERFVPROC = ?*const fn (GLuint, GLenum, [*c]const GLfloat) callconv(.C) void;
pub extern var glad_glTextureParameterfv: PFNGLTEXTUREPARAMETERFVPROC;
pub const PFNGLTEXTUREPARAMETERIPROC = ?*const fn (GLuint, GLenum, GLint) callconv(.C) void;
pub extern var glad_glTextureParameteri: PFNGLTEXTUREPARAMETERIPROC;
pub const PFNGLTEXTUREPARAMETERIIVPROC = ?*const fn (GLuint, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glTextureParameterIiv: PFNGLTEXTUREPARAMETERIIVPROC;
pub const PFNGLTEXTUREPARAMETERIUIVPROC = ?*const fn (GLuint, GLenum, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glTextureParameterIuiv: PFNGLTEXTUREPARAMETERIUIVPROC;
pub const PFNGLTEXTUREPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]const GLint) callconv(.C) void;
pub extern var glad_glTextureParameteriv: PFNGLTEXTUREPARAMETERIVPROC;
pub const PFNGLGENERATETEXTUREMIPMAPPROC = ?*const fn (GLuint) callconv(.C) void;
pub extern var glad_glGenerateTextureMipmap: PFNGLGENERATETEXTUREMIPMAPPROC;
pub const PFNGLBINDTEXTUREUNITPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glBindTextureUnit: PFNGLBINDTEXTUREUNITPROC;
pub const PFNGLGETTEXTUREIMAGEPROC = ?*const fn (GLuint, GLint, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetTextureImage: PFNGLGETTEXTUREIMAGEPROC;
pub const PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC = ?*const fn (GLuint, GLint, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetCompressedTextureImage: PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC;
pub const PFNGLGETTEXTURELEVELPARAMETERFVPROC = ?*const fn (GLuint, GLint, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetTextureLevelParameterfv: PFNGLGETTEXTURELEVELPARAMETERFVPROC;
pub const PFNGLGETTEXTURELEVELPARAMETERIVPROC = ?*const fn (GLuint, GLint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTextureLevelParameteriv: PFNGLGETTEXTURELEVELPARAMETERIVPROC;
pub const PFNGLGETTEXTUREPARAMETERFVPROC = ?*const fn (GLuint, GLenum, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetTextureParameterfv: PFNGLGETTEXTUREPARAMETERFVPROC;
pub const PFNGLGETTEXTUREPARAMETERIIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTextureParameterIiv: PFNGLGETTEXTUREPARAMETERIIVPROC;
pub const PFNGLGETTEXTUREPARAMETERIUIVPROC = ?*const fn (GLuint, GLenum, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetTextureParameterIuiv: PFNGLGETTEXTUREPARAMETERIUIVPROC;
pub const PFNGLGETTEXTUREPARAMETERIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetTextureParameteriv: PFNGLGETTEXTUREPARAMETERIVPROC;
pub const PFNGLCREATEVERTEXARRAYSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateVertexArrays: PFNGLCREATEVERTEXARRAYSPROC;
pub const PFNGLDISABLEVERTEXARRAYATTRIBPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glDisableVertexArrayAttrib: PFNGLDISABLEVERTEXARRAYATTRIBPROC;
pub const PFNGLENABLEVERTEXARRAYATTRIBPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glEnableVertexArrayAttrib: PFNGLENABLEVERTEXARRAYATTRIBPROC;
pub const PFNGLVERTEXARRAYELEMENTBUFFERPROC = ?*const fn (GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexArrayElementBuffer: PFNGLVERTEXARRAYELEMENTBUFFERPROC;
pub const PFNGLVERTEXARRAYVERTEXBUFFERPROC = ?*const fn (GLuint, GLuint, GLuint, GLintptr, GLsizei) callconv(.C) void;
pub extern var glad_glVertexArrayVertexBuffer: PFNGLVERTEXARRAYVERTEXBUFFERPROC;
pub const PFNGLVERTEXARRAYVERTEXBUFFERSPROC = ?*const fn (GLuint, GLuint, GLsizei, [*c]const GLuint, [*c]const GLintptr, [*c]const GLsizei) callconv(.C) void;
pub extern var glad_glVertexArrayVertexBuffers: PFNGLVERTEXARRAYVERTEXBUFFERSPROC;
pub const PFNGLVERTEXARRAYATTRIBBINDINGPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexArrayAttribBinding: PFNGLVERTEXARRAYATTRIBBINDINGPROC;
pub const PFNGLVERTEXARRAYATTRIBFORMATPROC = ?*const fn (GLuint, GLuint, GLint, GLenum, GLboolean, GLuint) callconv(.C) void;
pub extern var glad_glVertexArrayAttribFormat: PFNGLVERTEXARRAYATTRIBFORMATPROC;
pub const PFNGLVERTEXARRAYATTRIBIFORMATPROC = ?*const fn (GLuint, GLuint, GLint, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexArrayAttribIFormat: PFNGLVERTEXARRAYATTRIBIFORMATPROC;
pub const PFNGLVERTEXARRAYATTRIBLFORMATPROC = ?*const fn (GLuint, GLuint, GLint, GLenum, GLuint) callconv(.C) void;
pub extern var glad_glVertexArrayAttribLFormat: PFNGLVERTEXARRAYATTRIBLFORMATPROC;
pub const PFNGLVERTEXARRAYBINDINGDIVISORPROC = ?*const fn (GLuint, GLuint, GLuint) callconv(.C) void;
pub extern var glad_glVertexArrayBindingDivisor: PFNGLVERTEXARRAYBINDINGDIVISORPROC;
pub const PFNGLGETVERTEXARRAYIVPROC = ?*const fn (GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetVertexArrayiv: PFNGLGETVERTEXARRAYIVPROC;
pub const PFNGLGETVERTEXARRAYINDEXEDIVPROC = ?*const fn (GLuint, GLuint, GLenum, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetVertexArrayIndexediv: PFNGLGETVERTEXARRAYINDEXEDIVPROC;
pub const PFNGLGETVERTEXARRAYINDEXED64IVPROC = ?*const fn (GLuint, GLuint, GLenum, [*c]GLint64) callconv(.C) void;
pub extern var glad_glGetVertexArrayIndexed64iv: PFNGLGETVERTEXARRAYINDEXED64IVPROC;
pub const PFNGLCREATESAMPLERSPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateSamplers: PFNGLCREATESAMPLERSPROC;
pub const PFNGLCREATEPROGRAMPIPELINESPROC = ?*const fn (GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateProgramPipelines: PFNGLCREATEPROGRAMPIPELINESPROC;
pub const PFNGLCREATEQUERIESPROC = ?*const fn (GLenum, GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glCreateQueries: PFNGLCREATEQUERIESPROC;
pub const PFNGLGETQUERYBUFFEROBJECTI64VPROC = ?*const fn (GLuint, GLuint, GLenum, GLintptr) callconv(.C) void;
pub extern var glad_glGetQueryBufferObjecti64v: PFNGLGETQUERYBUFFEROBJECTI64VPROC;
pub const PFNGLGETQUERYBUFFEROBJECTIVPROC = ?*const fn (GLuint, GLuint, GLenum, GLintptr) callconv(.C) void;
pub extern var glad_glGetQueryBufferObjectiv: PFNGLGETQUERYBUFFEROBJECTIVPROC;
pub const PFNGLGETQUERYBUFFEROBJECTUI64VPROC = ?*const fn (GLuint, GLuint, GLenum, GLintptr) callconv(.C) void;
pub extern var glad_glGetQueryBufferObjectui64v: PFNGLGETQUERYBUFFEROBJECTUI64VPROC;
pub const PFNGLGETQUERYBUFFEROBJECTUIVPROC = ?*const fn (GLuint, GLuint, GLenum, GLintptr) callconv(.C) void;
pub extern var glad_glGetQueryBufferObjectuiv: PFNGLGETQUERYBUFFEROBJECTUIVPROC;
pub const PFNGLMEMORYBARRIERBYREGIONPROC = ?*const fn (GLbitfield) callconv(.C) void;
pub extern var glad_glMemoryBarrierByRegion: PFNGLMEMORYBARRIERBYREGIONPROC;
pub const PFNGLGETTEXTURESUBIMAGEPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetTextureSubImage: PFNGLGETTEXTURESUBIMAGEPROC;
pub const PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC = ?*const fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetCompressedTextureSubImage: PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC;
pub const PFNGLGETGRAPHICSRESETSTATUSPROC = ?*const fn () callconv(.C) GLenum;
pub extern var glad_glGetGraphicsResetStatus: PFNGLGETGRAPHICSRESETSTATUSPROC;
pub const PFNGLGETNCOMPRESSEDTEXIMAGEPROC = ?*const fn (GLenum, GLint, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnCompressedTexImage: PFNGLGETNCOMPRESSEDTEXIMAGEPROC;
pub const PFNGLGETNTEXIMAGEPROC = ?*const fn (GLenum, GLint, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnTexImage: PFNGLGETNTEXIMAGEPROC;
pub const PFNGLGETNUNIFORMDVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetnUniformdv: PFNGLGETNUNIFORMDVPROC;
pub const PFNGLGETNUNIFORMFVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetnUniformfv: PFNGLGETNUNIFORMFVPROC;
pub const PFNGLGETNUNIFORMIVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetnUniformiv: PFNGLGETNUNIFORMIVPROC;
pub const PFNGLGETNUNIFORMUIVPROC = ?*const fn (GLuint, GLint, GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetnUniformuiv: PFNGLGETNUNIFORMUIVPROC;
pub const PFNGLREADNPIXELSPROC = ?*const fn (GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glReadnPixels: PFNGLREADNPIXELSPROC;
pub const PFNGLGETNMAPDVPROC = ?*const fn (GLenum, GLenum, GLsizei, [*c]GLdouble) callconv(.C) void;
pub extern var glad_glGetnMapdv: PFNGLGETNMAPDVPROC;
pub const PFNGLGETNMAPFVPROC = ?*const fn (GLenum, GLenum, GLsizei, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetnMapfv: PFNGLGETNMAPFVPROC;
pub const PFNGLGETNMAPIVPROC = ?*const fn (GLenum, GLenum, GLsizei, [*c]GLint) callconv(.C) void;
pub extern var glad_glGetnMapiv: PFNGLGETNMAPIVPROC;
pub const PFNGLGETNPIXELMAPFVPROC = ?*const fn (GLenum, GLsizei, [*c]GLfloat) callconv(.C) void;
pub extern var glad_glGetnPixelMapfv: PFNGLGETNPIXELMAPFVPROC;
pub const PFNGLGETNPIXELMAPUIVPROC = ?*const fn (GLenum, GLsizei, [*c]GLuint) callconv(.C) void;
pub extern var glad_glGetnPixelMapuiv: PFNGLGETNPIXELMAPUIVPROC;
pub const PFNGLGETNPIXELMAPUSVPROC = ?*const fn (GLenum, GLsizei, [*c]GLushort) callconv(.C) void;
pub extern var glad_glGetnPixelMapusv: PFNGLGETNPIXELMAPUSVPROC;
pub const PFNGLGETNPOLYGONSTIPPLEPROC = ?*const fn (GLsizei, [*c]GLubyte) callconv(.C) void;
pub extern var glad_glGetnPolygonStipple: PFNGLGETNPOLYGONSTIPPLEPROC;
pub const PFNGLGETNCOLORTABLEPROC = ?*const fn (GLenum, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnColorTable: PFNGLGETNCOLORTABLEPROC;
pub const PFNGLGETNCONVOLUTIONFILTERPROC = ?*const fn (GLenum, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnConvolutionFilter: PFNGLGETNCONVOLUTIONFILTERPROC;
pub const PFNGLGETNSEPARABLEFILTERPROC = ?*const fn (GLenum, GLenum, GLenum, GLsizei, ?*anyopaque, GLsizei, ?*anyopaque, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnSeparableFilter: PFNGLGETNSEPARABLEFILTERPROC;
pub const PFNGLGETNHISTOGRAMPROC = ?*const fn (GLenum, GLboolean, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnHistogram: PFNGLGETNHISTOGRAMPROC;
pub const PFNGLGETNMINMAXPROC = ?*const fn (GLenum, GLboolean, GLenum, GLenum, GLsizei, ?*anyopaque) callconv(.C) void;
pub extern var glad_glGetnMinmax: PFNGLGETNMINMAXPROC;
pub const PFNGLTEXTUREBARRIERPROC = ?*const fn () callconv(.C) void;
pub extern var glad_glTextureBarrier: PFNGLTEXTUREBARRIERPROC;
pub extern var GLAD_GL_VERSION_4_6: c_int;
pub const PFNGLSPECIALIZESHADERPROC = ?*const fn (GLuint, [*c]const GLchar, GLuint, [*c]const GLuint, [*c]const GLuint) callconv(.C) void;
pub extern var glad_glSpecializeShader: PFNGLSPECIALIZESHADERPROC;
pub const PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC = ?*const fn (GLenum, ?*const anyopaque, GLintptr, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glMultiDrawArraysIndirectCount: PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC;
pub const PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC = ?*const fn (GLenum, GLenum, ?*const anyopaque, GLintptr, GLsizei, GLsizei) callconv(.C) void;
pub extern var glad_glMultiDrawElementsIndirectCount: PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC;
pub const PFNGLPOLYGONOFFSETCLAMPPROC = ?*const fn (GLfloat, GLfloat, GLfloat) callconv(.C) void;
pub extern var glad_glPolygonOffsetClamp: PFNGLPOLYGONOFFSETCLAMPPROC;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub const GLFWglproc = ?*const fn () callconv(.C) void;
pub const GLFWvkproc = ?*const fn () callconv(.C) void;
pub const struct_GLFWmonitor = opaque {};
pub const GLFWmonitor = struct_GLFWmonitor;
pub const struct_GLFWwindow = opaque {};
pub const GLFWwindow = struct_GLFWwindow;
pub const struct_GLFWcursor = opaque {};
pub const GLFWcursor = struct_GLFWcursor;
pub const GLFWallocatefun = ?*const fn (usize, ?*anyopaque) callconv(.C) ?*anyopaque;
pub const GLFWreallocatefun = ?*const fn (?*anyopaque, usize, ?*anyopaque) callconv(.C) ?*anyopaque;
pub const GLFWdeallocatefun = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.C) void;
pub const GLFWerrorfun = ?*const fn (c_int, [*c]const u8) callconv(.C) void;
pub const GLFWwindowposfun = ?*const fn (?*GLFWwindow, c_int, c_int) callconv(.C) void;
pub const GLFWwindowsizefun = ?*const fn (?*GLFWwindow, c_int, c_int) callconv(.C) void;
pub const GLFWwindowclosefun = ?*const fn (?*GLFWwindow) callconv(.C) void;
pub const GLFWwindowrefreshfun = ?*const fn (?*GLFWwindow) callconv(.C) void;
pub const GLFWwindowfocusfun = ?*const fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWwindowiconifyfun = ?*const fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWwindowmaximizefun = ?*const fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWframebuffersizefun = ?*const fn (?*GLFWwindow, c_int, c_int) callconv(.C) void;
pub const GLFWwindowcontentscalefun = ?*const fn (?*GLFWwindow, f32, f32) callconv(.C) void;
pub const GLFWmousebuttonfun = ?*const fn (?*GLFWwindow, c_int, c_int, c_int) callconv(.C) void;
pub const GLFWcursorposfun = ?*const fn (?*GLFWwindow, f64, f64) callconv(.C) void;
pub const GLFWcursorenterfun = ?*const fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWscrollfun = ?*const fn (?*GLFWwindow, f64, f64) callconv(.C) void;
pub const GLFWkeyfun = ?*const fn (?*GLFWwindow, c_int, c_int, c_int, c_int) callconv(.C) void;
pub const GLFWcharfun = ?*const fn (?*GLFWwindow, c_uint) callconv(.C) void;
pub const GLFWcharmodsfun = ?*const fn (?*GLFWwindow, c_uint, c_int) callconv(.C) void;
pub const GLFWdropfun = ?*const fn (?*GLFWwindow, c_int, [*c][*c]const u8) callconv(.C) void;
pub const GLFWmonitorfun = ?*const fn (?*GLFWmonitor, c_int) callconv(.C) void;
pub const GLFWjoystickfun = ?*const fn (c_int, c_int) callconv(.C) void;
pub const struct_GLFWvidmode = extern struct {
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    redBits: c_int = @import("std").mem.zeroes(c_int),
    greenBits: c_int = @import("std").mem.zeroes(c_int),
    blueBits: c_int = @import("std").mem.zeroes(c_int),
    refreshRate: c_int = @import("std").mem.zeroes(c_int),
};
pub const GLFWvidmode = struct_GLFWvidmode;
pub const struct_GLFWgammaramp = extern struct {
    red: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
    green: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
    blue: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
    size: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const GLFWgammaramp = struct_GLFWgammaramp;
pub const struct_GLFWimage = extern struct {
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    pixels: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const GLFWimage = struct_GLFWimage;
pub const struct_GLFWgamepadstate = extern struct {
    buttons: [15]u8 = @import("std").mem.zeroes([15]u8),
    axes: [6]f32 = @import("std").mem.zeroes([6]f32),
};
pub const GLFWgamepadstate = struct_GLFWgamepadstate;
pub const struct_GLFWallocator = extern struct {
    allocate: GLFWallocatefun = @import("std").mem.zeroes(GLFWallocatefun),
    reallocate: GLFWreallocatefun = @import("std").mem.zeroes(GLFWreallocatefun),
    deallocate: GLFWdeallocatefun = @import("std").mem.zeroes(GLFWdeallocatefun),
    user: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const GLFWallocator = struct_GLFWallocator;
pub extern fn glfwInit() c_int;
pub extern fn glfwTerminate() void;
pub extern fn glfwInitHint(hint: c_int, value: c_int) void;
pub extern fn glfwInitAllocator(allocator: [*c]const GLFWallocator) void;
pub extern fn glfwGetVersion(major: [*c]c_int, minor: [*c]c_int, rev: [*c]c_int) void;
pub extern fn glfwGetVersionString() [*c]const u8;
pub extern fn glfwGetError(description: [*c][*c]const u8) c_int;
pub extern fn glfwSetErrorCallback(callback: GLFWerrorfun) GLFWerrorfun;
pub extern fn glfwGetPlatform() c_int;
pub extern fn glfwPlatformSupported(platform: c_int) c_int;
pub extern fn glfwGetMonitors(count: [*c]c_int) [*c]?*GLFWmonitor;
pub extern fn glfwGetPrimaryMonitor() ?*GLFWmonitor;
pub extern fn glfwGetMonitorPos(monitor: ?*GLFWmonitor, xpos: [*c]c_int, ypos: [*c]c_int) void;
pub extern fn glfwGetMonitorWorkarea(monitor: ?*GLFWmonitor, xpos: [*c]c_int, ypos: [*c]c_int, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn glfwGetMonitorPhysicalSize(monitor: ?*GLFWmonitor, widthMM: [*c]c_int, heightMM: [*c]c_int) void;
pub extern fn glfwGetMonitorContentScale(monitor: ?*GLFWmonitor, xscale: [*c]f32, yscale: [*c]f32) void;
pub extern fn glfwGetMonitorName(monitor: ?*GLFWmonitor) [*c]const u8;
pub extern fn glfwSetMonitorUserPointer(monitor: ?*GLFWmonitor, pointer: ?*anyopaque) void;
pub extern fn glfwGetMonitorUserPointer(monitor: ?*GLFWmonitor) ?*anyopaque;
pub extern fn glfwSetMonitorCallback(callback: GLFWmonitorfun) GLFWmonitorfun;
pub extern fn glfwGetVideoModes(monitor: ?*GLFWmonitor, count: [*c]c_int) [*c]const GLFWvidmode;
pub extern fn glfwGetVideoMode(monitor: ?*GLFWmonitor) [*c]const GLFWvidmode;
pub extern fn glfwSetGamma(monitor: ?*GLFWmonitor, gamma: f32) void;
pub extern fn glfwGetGammaRamp(monitor: ?*GLFWmonitor) [*c]const GLFWgammaramp;
pub extern fn glfwSetGammaRamp(monitor: ?*GLFWmonitor, ramp: [*c]const GLFWgammaramp) void;
pub extern fn glfwDefaultWindowHints() void;
pub extern fn glfwWindowHint(hint: c_int, value: c_int) void;
pub extern fn glfwWindowHintString(hint: c_int, value: [*c]const u8) void;
pub extern fn glfwCreateWindow(width: c_int, height: c_int, title: [*c]const u8, monitor: ?*GLFWmonitor, share: ?*GLFWwindow) ?*GLFWwindow;
pub extern fn glfwDestroyWindow(window: ?*GLFWwindow) void;
pub extern fn glfwWindowShouldClose(window: ?*GLFWwindow) c_int;
pub extern fn glfwSetWindowShouldClose(window: ?*GLFWwindow, value: c_int) void;
pub extern fn glfwGetWindowTitle(window: ?*GLFWwindow) [*c]const u8;
pub extern fn glfwSetWindowTitle(window: ?*GLFWwindow, title: [*c]const u8) void;
pub extern fn glfwSetWindowIcon(window: ?*GLFWwindow, count: c_int, images: [*c]const GLFWimage) void;
pub extern fn glfwGetWindowPos(window: ?*GLFWwindow, xpos: [*c]c_int, ypos: [*c]c_int) void;
pub extern fn glfwSetWindowPos(window: ?*GLFWwindow, xpos: c_int, ypos: c_int) void;
pub extern fn glfwGetWindowSize(window: ?*GLFWwindow, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn glfwSetWindowSizeLimits(window: ?*GLFWwindow, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void;
pub extern fn glfwSetWindowAspectRatio(window: ?*GLFWwindow, numer: c_int, denom: c_int) void;
pub extern fn glfwSetWindowSize(window: ?*GLFWwindow, width: c_int, height: c_int) void;
pub extern fn glfwGetFramebufferSize(window: ?*GLFWwindow, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn glfwGetWindowFrameSize(window: ?*GLFWwindow, left: [*c]c_int, top: [*c]c_int, right: [*c]c_int, bottom: [*c]c_int) void;
pub extern fn glfwGetWindowContentScale(window: ?*GLFWwindow, xscale: [*c]f32, yscale: [*c]f32) void;
pub extern fn glfwGetWindowOpacity(window: ?*GLFWwindow) f32;
pub extern fn glfwSetWindowOpacity(window: ?*GLFWwindow, opacity: f32) void;
pub extern fn glfwIconifyWindow(window: ?*GLFWwindow) void;
pub extern fn glfwRestoreWindow(window: ?*GLFWwindow) void;
pub extern fn glfwMaximizeWindow(window: ?*GLFWwindow) void;
pub extern fn glfwShowWindow(window: ?*GLFWwindow) void;
pub extern fn glfwHideWindow(window: ?*GLFWwindow) void;
pub extern fn glfwFocusWindow(window: ?*GLFWwindow) void;
pub extern fn glfwRequestWindowAttention(window: ?*GLFWwindow) void;
pub extern fn glfwGetWindowMonitor(window: ?*GLFWwindow) ?*GLFWmonitor;
pub extern fn glfwSetWindowMonitor(window: ?*GLFWwindow, monitor: ?*GLFWmonitor, xpos: c_int, ypos: c_int, width: c_int, height: c_int, refreshRate: c_int) void;
pub extern fn glfwGetWindowAttrib(window: ?*GLFWwindow, attrib: c_int) c_int;
pub extern fn glfwSetWindowAttrib(window: ?*GLFWwindow, attrib: c_int, value: c_int) void;
pub extern fn glfwSetWindowUserPointer(window: ?*GLFWwindow, pointer: ?*anyopaque) void;
pub extern fn glfwGetWindowUserPointer(window: ?*GLFWwindow) ?*anyopaque;
pub extern fn glfwSetWindowPosCallback(window: ?*GLFWwindow, callback: GLFWwindowposfun) GLFWwindowposfun;
pub extern fn glfwSetWindowSizeCallback(window: ?*GLFWwindow, callback: GLFWwindowsizefun) GLFWwindowsizefun;
pub extern fn glfwSetWindowCloseCallback(window: ?*GLFWwindow, callback: GLFWwindowclosefun) GLFWwindowclosefun;
pub extern fn glfwSetWindowRefreshCallback(window: ?*GLFWwindow, callback: GLFWwindowrefreshfun) GLFWwindowrefreshfun;
pub extern fn glfwSetWindowFocusCallback(window: ?*GLFWwindow, callback: GLFWwindowfocusfun) GLFWwindowfocusfun;
pub extern fn glfwSetWindowIconifyCallback(window: ?*GLFWwindow, callback: GLFWwindowiconifyfun) GLFWwindowiconifyfun;
pub extern fn glfwSetWindowMaximizeCallback(window: ?*GLFWwindow, callback: GLFWwindowmaximizefun) GLFWwindowmaximizefun;
pub extern fn glfwSetFramebufferSizeCallback(window: ?*GLFWwindow, callback: GLFWframebuffersizefun) GLFWframebuffersizefun;
pub extern fn glfwSetWindowContentScaleCallback(window: ?*GLFWwindow, callback: GLFWwindowcontentscalefun) GLFWwindowcontentscalefun;
pub extern fn glfwPollEvents() void;
pub extern fn glfwWaitEvents() void;
pub extern fn glfwWaitEventsTimeout(timeout: f64) void;
pub extern fn glfwPostEmptyEvent() void;
pub extern fn glfwGetInputMode(window: ?*GLFWwindow, mode: c_int) c_int;
pub extern fn glfwSetInputMode(window: ?*GLFWwindow, mode: c_int, value: c_int) void;
pub extern fn glfwRawMouseMotionSupported() c_int;
pub extern fn glfwGetKeyName(key: c_int, scancode: c_int) [*c]const u8;
pub extern fn glfwGetKeyScancode(key: c_int) c_int;
pub extern fn glfwGetKey(window: ?*GLFWwindow, key: c_int) c_int;
pub extern fn glfwGetMouseButton(window: ?*GLFWwindow, button: c_int) c_int;
pub extern fn glfwGetCursorPos(window: ?*GLFWwindow, xpos: [*c]f64, ypos: [*c]f64) void;
pub extern fn glfwSetCursorPos(window: ?*GLFWwindow, xpos: f64, ypos: f64) void;
pub extern fn glfwCreateCursor(image: [*c]const GLFWimage, xhot: c_int, yhot: c_int) ?*GLFWcursor;
pub extern fn glfwCreateStandardCursor(shape: c_int) ?*GLFWcursor;
pub extern fn glfwDestroyCursor(cursor: ?*GLFWcursor) void;
pub extern fn glfwSetCursor(window: ?*GLFWwindow, cursor: ?*GLFWcursor) void;
pub extern fn glfwSetKeyCallback(window: ?*GLFWwindow, callback: GLFWkeyfun) GLFWkeyfun;
pub extern fn glfwSetCharCallback(window: ?*GLFWwindow, callback: GLFWcharfun) GLFWcharfun;
pub extern fn glfwSetCharModsCallback(window: ?*GLFWwindow, callback: GLFWcharmodsfun) GLFWcharmodsfun;
pub extern fn glfwSetMouseButtonCallback(window: ?*GLFWwindow, callback: GLFWmousebuttonfun) GLFWmousebuttonfun;
pub extern fn glfwSetCursorPosCallback(window: ?*GLFWwindow, callback: GLFWcursorposfun) GLFWcursorposfun;
pub extern fn glfwSetCursorEnterCallback(window: ?*GLFWwindow, callback: GLFWcursorenterfun) GLFWcursorenterfun;
pub extern fn glfwSetScrollCallback(window: ?*GLFWwindow, callback: GLFWscrollfun) GLFWscrollfun;
pub extern fn glfwSetDropCallback(window: ?*GLFWwindow, callback: GLFWdropfun) GLFWdropfun;
pub extern fn glfwJoystickPresent(jid: c_int) c_int;
pub extern fn glfwGetJoystickAxes(jid: c_int, count: [*c]c_int) [*c]const f32;
pub extern fn glfwGetJoystickButtons(jid: c_int, count: [*c]c_int) [*c]const u8;
pub extern fn glfwGetJoystickHats(jid: c_int, count: [*c]c_int) [*c]const u8;
pub extern fn glfwGetJoystickName(jid: c_int) [*c]const u8;
pub extern fn glfwGetJoystickGUID(jid: c_int) [*c]const u8;
pub extern fn glfwSetJoystickUserPointer(jid: c_int, pointer: ?*anyopaque) void;
pub extern fn glfwGetJoystickUserPointer(jid: c_int) ?*anyopaque;
pub extern fn glfwJoystickIsGamepad(jid: c_int) c_int;
pub extern fn glfwSetJoystickCallback(callback: GLFWjoystickfun) GLFWjoystickfun;
pub extern fn glfwUpdateGamepadMappings(string: [*c]const u8) c_int;
pub extern fn glfwGetGamepadName(jid: c_int) [*c]const u8;
pub extern fn glfwGetGamepadState(jid: c_int, state: [*c]GLFWgamepadstate) c_int;
pub extern fn glfwSetClipboardString(window: ?*GLFWwindow, string: [*c]const u8) void;
pub extern fn glfwGetClipboardString(window: ?*GLFWwindow) [*c]const u8;
pub extern fn glfwGetTime() f64;
pub extern fn glfwSetTime(time: f64) void;
pub extern fn glfwGetTimerValue() u64;
pub extern fn glfwGetTimerFrequency() u64;
pub extern fn glfwMakeContextCurrent(window: ?*GLFWwindow) void;
pub extern fn glfwGetCurrentContext() ?*GLFWwindow;
pub extern fn glfwSwapBuffers(window: ?*GLFWwindow) void;
pub extern fn glfwSwapInterval(interval: c_int) void;
pub extern fn glfwExtensionSupported(extension: [*c]const u8) c_int;
pub extern fn glfwGetProcAddress(procname: [*c]const u8) GLFWglproc;
pub extern fn glfwVulkanSupported() c_int;
pub extern fn glfwGetRequiredInstanceExtensions(count: [*c]u32) [*c][*c]const u8;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):94:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):100:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):198:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):220:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):228:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):357:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // (no file):358:9
pub const __declspec = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // (no file):444:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`"); // (no file):445:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`"); // (no file):446:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`"); // (no file):447:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`"); // (no file):448:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // (no file):449:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`"); // (no file):450:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`"); // (no file):451:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`"); // (no file):452:9
pub const _pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`"); // (no file):453:9
pub const __pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`"); // (no file):454:9
pub const APIENTRY = @compileError("unable to translate C expr: unexpected token '__stdcall'"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/glad/glad.h:32:9
pub const APIENTRYP = @compileError("unable to translate C expr: unexpected token ''"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/glad/glad.h:39:9
pub const GLAPI = @compileError("unable to translate C expr: unexpected token 'extern'"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/glad/glad.h:79:11
pub const KHRONOS_APICALL = @compileError("unable to translate macro: undefined identifier `dllimport`"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/KHR/khrplatform.h:107:12
pub const KHRONOS_APIENTRY = @compileError("unable to translate C expr: unexpected token '__stdcall'"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/KHR/khrplatform.h:124:12
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:10:9
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:119:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:120:11
pub const __MINGW_LSYMBOL = @compileError("unable to translate C expr: unexpected token '##'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:122:11
pub const __MINGW_ASM_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:130:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:131:9
pub const __MINGW_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:163:13
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:203:11
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:247:11
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:270:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:273:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:276:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:279:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:289:11
pub const __mingw_attribute_artificial = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:298:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__selectany__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_mac.h:304:9
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token ';'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__dllimport__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:44:12
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__dllimport__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:52:15
pub const _inline = @compileError("unable to translate C expr: unexpected token '__inline'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:74:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:83:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:90:9
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:104:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:119:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:135:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:136:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:146:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:147:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:160:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:166:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__used__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:172:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:173:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:175:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:190:9
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:208:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:211:9
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:266:9
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token '#'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:285:9
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:290:9
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:349:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:352:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:356:9
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:364:9
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__aligned__`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:391:9
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:455:9
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:475:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:476:9
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:563:9
pub const __MINGW_PREFETCH_IMPL = @compileError("unable to translate macro: undefined identifier `__prefetch`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/_mingw.h:620:9
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:143:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:262:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:263:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:264:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:265:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:266:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:285:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:422:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:423:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:424:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:425:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:426:9
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token ''"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\libc\include\any-windows-any/corecrt.h:486:9
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'"); // C:\Program Files\zig-windows-x86_64-0.13.0-dev.211+6a65561e3\lib\include/__stddef_offsetof.h:16:9
pub const WINGDIAPI = @compileError("unable to translate macro: undefined identifier `dllimport`"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/GLFW/glfw3.h:133:10
pub const CALLBACK = @compileError("unable to translate C expr: unexpected token '__stdcall'"); // C:\Users\gregi\AppData\Local\zig\p\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106\include/GLFW/glfw3.h:140:10
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 5);
pub const __clang_version__ = "18.1.5 (https://github.com/ziglang/zig-bootstrap 1500b58191611f0d1965cf264016f28d5bcc1fd2)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.5 (https://github.com/ziglang/zig-bootstrap 1500b58191611f0d1965cf264016f28d5bcc1fd2)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-16";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WINT_TYPE__ = c_ushort;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __znver4 = @as(c_int, 1);
pub const __znver4__ = @as(c_int, 1);
pub const __tune_znver4__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __EVEX512__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512BF16__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __EVEX256__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __MSVCRT_VERSION__ = @as(c_int, 0xE00);
pub const _WIN32_WINNT = @as(c_int, 0x0a00);
pub const _DEBUG = @as(c_int, 1);
pub const __glad_h_ = "";
pub const __gl_h_ = "";
pub const GLAPIENTRY = APIENTRY;
pub const __khrplatform_h_ = "";
pub const KHRONOS_APIATTRIBUTES = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const _INC_CRTDEFS = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    _ = &x;
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 12);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STR = __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    _ = &sym;
    return sym;
}
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MSABI_LONG = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    _ = &major;
    _ = &minor;
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &major;
    _ = &minor;
    return @as(c_int, 0);
}
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __mingw_static_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __LONG32 = c_long;
pub const __USE_CRTIMP = @as(c_int, 1);
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const __CRT__NO_INLINE = @as(c_int, 1);
pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";
pub const _UCRT = "";
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    _ = &v;
    return &v;
}
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    _ = &_Value;
    return __CRT_STRINGIZE(_Value);
}
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    _ = &_String;
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub const _CONST_RETURN = "";
pub const UNALIGNED = "";
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    _ = &x;
    return @import("std").zig.c_translation.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 0);
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);
pub const __MINGW_FASTFAIL_IMPL = !(__has_builtin(__fastfail) != 0);
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const __need_wint_t = "";
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const WCHAR_MIN = @as(c_uint, 0);
pub const WCHAR_MAX = @as(c_uint, 0xffff);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 0xffff);
pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    _ = &val;
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}
pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    _ = &val;
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}
pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    _ = &val;
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const KHRONOS_SUPPORT_INT64 = @as(c_int, 1);
pub const KHRONOS_SUPPORT_FLOAT = @as(c_int, 1);
pub const KHRONOS_USE_INTPTR_T = "";
pub const KHRONOS_MAX_ENUM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex);
pub const GL_DEPTH_BUFFER_BIT = @as(c_int, 0x00000100);
pub const GL_STENCIL_BUFFER_BIT = @as(c_int, 0x00000400);
pub const GL_COLOR_BUFFER_BIT = @as(c_int, 0x00004000);
pub const GL_FALSE = @as(c_int, 0);
pub const GL_TRUE = @as(c_int, 1);
pub const GL_POINTS = @as(c_int, 0x0000);
pub const GL_LINES = @as(c_int, 0x0001);
pub const GL_LINE_LOOP = @as(c_int, 0x0002);
pub const GL_LINE_STRIP = @as(c_int, 0x0003);
pub const GL_TRIANGLES = @as(c_int, 0x0004);
pub const GL_TRIANGLE_STRIP = @as(c_int, 0x0005);
pub const GL_TRIANGLE_FAN = @as(c_int, 0x0006);
pub const GL_QUADS = @as(c_int, 0x0007);
pub const GL_NEVER = @as(c_int, 0x0200);
pub const GL_LESS = @as(c_int, 0x0201);
pub const GL_EQUAL = @as(c_int, 0x0202);
pub const GL_LEQUAL = @as(c_int, 0x0203);
pub const GL_GREATER = @as(c_int, 0x0204);
pub const GL_NOTEQUAL = @as(c_int, 0x0205);
pub const GL_GEQUAL = @as(c_int, 0x0206);
pub const GL_ALWAYS = @as(c_int, 0x0207);
pub const GL_ZERO = @as(c_int, 0);
pub const GL_ONE = @as(c_int, 1);
pub const GL_SRC_COLOR = @as(c_int, 0x0300);
pub const GL_ONE_MINUS_SRC_COLOR = @as(c_int, 0x0301);
pub const GL_SRC_ALPHA = @as(c_int, 0x0302);
pub const GL_ONE_MINUS_SRC_ALPHA = @as(c_int, 0x0303);
pub const GL_DST_ALPHA = @as(c_int, 0x0304);
pub const GL_ONE_MINUS_DST_ALPHA = @as(c_int, 0x0305);
pub const GL_DST_COLOR = @as(c_int, 0x0306);
pub const GL_ONE_MINUS_DST_COLOR = @as(c_int, 0x0307);
pub const GL_SRC_ALPHA_SATURATE = @as(c_int, 0x0308);
pub const GL_NONE = @as(c_int, 0);
pub const GL_FRONT_LEFT = @as(c_int, 0x0400);
pub const GL_FRONT_RIGHT = @as(c_int, 0x0401);
pub const GL_BACK_LEFT = @as(c_int, 0x0402);
pub const GL_BACK_RIGHT = @as(c_int, 0x0403);
pub const GL_FRONT = @as(c_int, 0x0404);
pub const GL_BACK = @as(c_int, 0x0405);
pub const GL_LEFT = @as(c_int, 0x0406);
pub const GL_RIGHT = @as(c_int, 0x0407);
pub const GL_FRONT_AND_BACK = @as(c_int, 0x0408);
pub const GL_NO_ERROR = @as(c_int, 0);
pub const GL_INVALID_ENUM = @as(c_int, 0x0500);
pub const GL_INVALID_VALUE = @as(c_int, 0x0501);
pub const GL_INVALID_OPERATION = @as(c_int, 0x0502);
pub const GL_OUT_OF_MEMORY = @as(c_int, 0x0505);
pub const GL_CW = @as(c_int, 0x0900);
pub const GL_CCW = @as(c_int, 0x0901);
pub const GL_POINT_SIZE = @as(c_int, 0x0B11);
pub const GL_POINT_SIZE_RANGE = @as(c_int, 0x0B12);
pub const GL_POINT_SIZE_GRANULARITY = @as(c_int, 0x0B13);
pub const GL_LINE_SMOOTH = @as(c_int, 0x0B20);
pub const GL_LINE_WIDTH = @as(c_int, 0x0B21);
pub const GL_LINE_WIDTH_RANGE = @as(c_int, 0x0B22);
pub const GL_LINE_WIDTH_GRANULARITY = @as(c_int, 0x0B23);
pub const GL_POLYGON_MODE = @as(c_int, 0x0B40);
pub const GL_POLYGON_SMOOTH = @as(c_int, 0x0B41);
pub const GL_CULL_FACE = @as(c_int, 0x0B44);
pub const GL_CULL_FACE_MODE = @as(c_int, 0x0B45);
pub const GL_FRONT_FACE = @as(c_int, 0x0B46);
pub const GL_DEPTH_RANGE = @as(c_int, 0x0B70);
pub const GL_DEPTH_TEST = @as(c_int, 0x0B71);
pub const GL_DEPTH_WRITEMASK = @as(c_int, 0x0B72);
pub const GL_DEPTH_CLEAR_VALUE = @as(c_int, 0x0B73);
pub const GL_DEPTH_FUNC = @as(c_int, 0x0B74);
pub const GL_STENCIL_TEST = @as(c_int, 0x0B90);
pub const GL_STENCIL_CLEAR_VALUE = @as(c_int, 0x0B91);
pub const GL_STENCIL_FUNC = @as(c_int, 0x0B92);
pub const GL_STENCIL_VALUE_MASK = @as(c_int, 0x0B93);
pub const GL_STENCIL_FAIL = @as(c_int, 0x0B94);
pub const GL_STENCIL_PASS_DEPTH_FAIL = @as(c_int, 0x0B95);
pub const GL_STENCIL_PASS_DEPTH_PASS = @as(c_int, 0x0B96);
pub const GL_STENCIL_REF = @as(c_int, 0x0B97);
pub const GL_STENCIL_WRITEMASK = @as(c_int, 0x0B98);
pub const GL_VIEWPORT = @as(c_int, 0x0BA2);
pub const GL_DITHER = @as(c_int, 0x0BD0);
pub const GL_BLEND_DST = @as(c_int, 0x0BE0);
pub const GL_BLEND_SRC = @as(c_int, 0x0BE1);
pub const GL_BLEND = @as(c_int, 0x0BE2);
pub const GL_LOGIC_OP_MODE = @as(c_int, 0x0BF0);
pub const GL_DRAW_BUFFER = @as(c_int, 0x0C01);
pub const GL_READ_BUFFER = @as(c_int, 0x0C02);
pub const GL_SCISSOR_BOX = @as(c_int, 0x0C10);
pub const GL_SCISSOR_TEST = @as(c_int, 0x0C11);
pub const GL_COLOR_CLEAR_VALUE = @as(c_int, 0x0C22);
pub const GL_COLOR_WRITEMASK = @as(c_int, 0x0C23);
pub const GL_DOUBLEBUFFER = @as(c_int, 0x0C32);
pub const GL_STEREO = @as(c_int, 0x0C33);
pub const GL_LINE_SMOOTH_HINT = @as(c_int, 0x0C52);
pub const GL_POLYGON_SMOOTH_HINT = @as(c_int, 0x0C53);
pub const GL_UNPACK_SWAP_BYTES = @as(c_int, 0x0CF0);
pub const GL_UNPACK_LSB_FIRST = @as(c_int, 0x0CF1);
pub const GL_UNPACK_ROW_LENGTH = @as(c_int, 0x0CF2);
pub const GL_UNPACK_SKIP_ROWS = @as(c_int, 0x0CF3);
pub const GL_UNPACK_SKIP_PIXELS = @as(c_int, 0x0CF4);
pub const GL_UNPACK_ALIGNMENT = @as(c_int, 0x0CF5);
pub const GL_PACK_SWAP_BYTES = @as(c_int, 0x0D00);
pub const GL_PACK_LSB_FIRST = @as(c_int, 0x0D01);
pub const GL_PACK_ROW_LENGTH = @as(c_int, 0x0D02);
pub const GL_PACK_SKIP_ROWS = @as(c_int, 0x0D03);
pub const GL_PACK_SKIP_PIXELS = @as(c_int, 0x0D04);
pub const GL_PACK_ALIGNMENT = @as(c_int, 0x0D05);
pub const GL_MAX_TEXTURE_SIZE = @as(c_int, 0x0D33);
pub const GL_MAX_VIEWPORT_DIMS = @as(c_int, 0x0D3A);
pub const GL_SUBPIXEL_BITS = @as(c_int, 0x0D50);
pub const GL_TEXTURE_1D = @as(c_int, 0x0DE0);
pub const GL_TEXTURE_2D = @as(c_int, 0x0DE1);
pub const GL_TEXTURE_WIDTH = @as(c_int, 0x1000);
pub const GL_TEXTURE_HEIGHT = @as(c_int, 0x1001);
pub const GL_TEXTURE_BORDER_COLOR = @as(c_int, 0x1004);
pub const GL_DONT_CARE = @as(c_int, 0x1100);
pub const GL_FASTEST = @as(c_int, 0x1101);
pub const GL_NICEST = @as(c_int, 0x1102);
pub const GL_BYTE = @as(c_int, 0x1400);
pub const GL_UNSIGNED_BYTE = @as(c_int, 0x1401);
pub const GL_SHORT = @as(c_int, 0x1402);
pub const GL_UNSIGNED_SHORT = @as(c_int, 0x1403);
pub const GL_INT = @as(c_int, 0x1404);
pub const GL_UNSIGNED_INT = @as(c_int, 0x1405);
pub const GL_FLOAT = @as(c_int, 0x1406);
pub const GL_STACK_OVERFLOW = @as(c_int, 0x0503);
pub const GL_STACK_UNDERFLOW = @as(c_int, 0x0504);
pub const GL_CLEAR = @as(c_int, 0x1500);
pub const GL_AND = @as(c_int, 0x1501);
pub const GL_AND_REVERSE = @as(c_int, 0x1502);
pub const GL_COPY = @as(c_int, 0x1503);
pub const GL_AND_INVERTED = @as(c_int, 0x1504);
pub const GL_NOOP = @as(c_int, 0x1505);
pub const GL_XOR = @as(c_int, 0x1506);
pub const GL_OR = @as(c_int, 0x1507);
pub const GL_NOR = @as(c_int, 0x1508);
pub const GL_EQUIV = @as(c_int, 0x1509);
pub const GL_INVERT = @as(c_int, 0x150A);
pub const GL_OR_REVERSE = @as(c_int, 0x150B);
pub const GL_COPY_INVERTED = @as(c_int, 0x150C);
pub const GL_OR_INVERTED = @as(c_int, 0x150D);
pub const GL_NAND = @as(c_int, 0x150E);
pub const GL_SET = @as(c_int, 0x150F);
pub const GL_TEXTURE = @as(c_int, 0x1702);
pub const GL_COLOR = @as(c_int, 0x1800);
pub const GL_DEPTH = @as(c_int, 0x1801);
pub const GL_STENCIL = @as(c_int, 0x1802);
pub const GL_STENCIL_INDEX = @as(c_int, 0x1901);
pub const GL_DEPTH_COMPONENT = @as(c_int, 0x1902);
pub const GL_RED = @as(c_int, 0x1903);
pub const GL_GREEN = @as(c_int, 0x1904);
pub const GL_BLUE = @as(c_int, 0x1905);
pub const GL_ALPHA = @as(c_int, 0x1906);
pub const GL_RGB = @as(c_int, 0x1907);
pub const GL_RGBA = @as(c_int, 0x1908);
pub const GL_POINT = @as(c_int, 0x1B00);
pub const GL_LINE = @as(c_int, 0x1B01);
pub const GL_FILL = @as(c_int, 0x1B02);
pub const GL_KEEP = @as(c_int, 0x1E00);
pub const GL_REPLACE = @as(c_int, 0x1E01);
pub const GL_INCR = @as(c_int, 0x1E02);
pub const GL_DECR = @as(c_int, 0x1E03);
pub const GL_VENDOR = @as(c_int, 0x1F00);
pub const GL_RENDERER = @as(c_int, 0x1F01);
pub const GL_VERSION = @as(c_int, 0x1F02);
pub const GL_EXTENSIONS = @as(c_int, 0x1F03);
pub const GL_NEAREST = @as(c_int, 0x2600);
pub const GL_LINEAR = @as(c_int, 0x2601);
pub const GL_NEAREST_MIPMAP_NEAREST = @as(c_int, 0x2700);
pub const GL_LINEAR_MIPMAP_NEAREST = @as(c_int, 0x2701);
pub const GL_NEAREST_MIPMAP_LINEAR = @as(c_int, 0x2702);
pub const GL_LINEAR_MIPMAP_LINEAR = @as(c_int, 0x2703);
pub const GL_TEXTURE_MAG_FILTER = @as(c_int, 0x2800);
pub const GL_TEXTURE_MIN_FILTER = @as(c_int, 0x2801);
pub const GL_TEXTURE_WRAP_S = @as(c_int, 0x2802);
pub const GL_TEXTURE_WRAP_T = @as(c_int, 0x2803);
pub const GL_REPEAT = @as(c_int, 0x2901);
pub const GL_CURRENT_BIT = @as(c_int, 0x00000001);
pub const GL_POINT_BIT = @as(c_int, 0x00000002);
pub const GL_LINE_BIT = @as(c_int, 0x00000004);
pub const GL_POLYGON_BIT = @as(c_int, 0x00000008);
pub const GL_POLYGON_STIPPLE_BIT = @as(c_int, 0x00000010);
pub const GL_PIXEL_MODE_BIT = @as(c_int, 0x00000020);
pub const GL_LIGHTING_BIT = @as(c_int, 0x00000040);
pub const GL_FOG_BIT = @as(c_int, 0x00000080);
pub const GL_ACCUM_BUFFER_BIT = @as(c_int, 0x00000200);
pub const GL_VIEWPORT_BIT = @as(c_int, 0x00000800);
pub const GL_TRANSFORM_BIT = @as(c_int, 0x00001000);
pub const GL_ENABLE_BIT = @as(c_int, 0x00002000);
pub const GL_HINT_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const GL_EVAL_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010000, .hex);
pub const GL_LIST_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020000, .hex);
pub const GL_TEXTURE_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040000, .hex);
pub const GL_SCISSOR_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00080000, .hex);
pub const GL_ALL_ATTRIB_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hex);
pub const GL_QUAD_STRIP = @as(c_int, 0x0008);
pub const GL_POLYGON = @as(c_int, 0x0009);
pub const GL_ACCUM = @as(c_int, 0x0100);
pub const GL_LOAD = @as(c_int, 0x0101);
pub const GL_RETURN = @as(c_int, 0x0102);
pub const GL_MULT = @as(c_int, 0x0103);
pub const GL_ADD = @as(c_int, 0x0104);
pub const GL_AUX0 = @as(c_int, 0x0409);
pub const GL_AUX1 = @as(c_int, 0x040A);
pub const GL_AUX2 = @as(c_int, 0x040B);
pub const GL_AUX3 = @as(c_int, 0x040C);
pub const GL_2D = @as(c_int, 0x0600);
pub const GL_3D = @as(c_int, 0x0601);
pub const GL_3D_COLOR = @as(c_int, 0x0602);
pub const GL_3D_COLOR_TEXTURE = @as(c_int, 0x0603);
pub const GL_4D_COLOR_TEXTURE = @as(c_int, 0x0604);
pub const GL_PASS_THROUGH_TOKEN = @as(c_int, 0x0700);
pub const GL_POINT_TOKEN = @as(c_int, 0x0701);
pub const GL_LINE_TOKEN = @as(c_int, 0x0702);
pub const GL_POLYGON_TOKEN = @as(c_int, 0x0703);
pub const GL_BITMAP_TOKEN = @as(c_int, 0x0704);
pub const GL_DRAW_PIXEL_TOKEN = @as(c_int, 0x0705);
pub const GL_COPY_PIXEL_TOKEN = @as(c_int, 0x0706);
pub const GL_LINE_RESET_TOKEN = @as(c_int, 0x0707);
pub const GL_EXP = @as(c_int, 0x0800);
pub const GL_EXP2 = @as(c_int, 0x0801);
pub const GL_COEFF = @as(c_int, 0x0A00);
pub const GL_ORDER = @as(c_int, 0x0A01);
pub const GL_DOMAIN = @as(c_int, 0x0A02);
pub const GL_PIXEL_MAP_I_TO_I = @as(c_int, 0x0C70);
pub const GL_PIXEL_MAP_S_TO_S = @as(c_int, 0x0C71);
pub const GL_PIXEL_MAP_I_TO_R = @as(c_int, 0x0C72);
pub const GL_PIXEL_MAP_I_TO_G = @as(c_int, 0x0C73);
pub const GL_PIXEL_MAP_I_TO_B = @as(c_int, 0x0C74);
pub const GL_PIXEL_MAP_I_TO_A = @as(c_int, 0x0C75);
pub const GL_PIXEL_MAP_R_TO_R = @as(c_int, 0x0C76);
pub const GL_PIXEL_MAP_G_TO_G = @as(c_int, 0x0C77);
pub const GL_PIXEL_MAP_B_TO_B = @as(c_int, 0x0C78);
pub const GL_PIXEL_MAP_A_TO_A = @as(c_int, 0x0C79);
pub const GL_CURRENT_COLOR = @as(c_int, 0x0B00);
pub const GL_CURRENT_INDEX = @as(c_int, 0x0B01);
pub const GL_CURRENT_NORMAL = @as(c_int, 0x0B02);
pub const GL_CURRENT_TEXTURE_COORDS = @as(c_int, 0x0B03);
pub const GL_CURRENT_RASTER_COLOR = @as(c_int, 0x0B04);
pub const GL_CURRENT_RASTER_INDEX = @as(c_int, 0x0B05);
pub const GL_CURRENT_RASTER_TEXTURE_COORDS = @as(c_int, 0x0B06);
pub const GL_CURRENT_RASTER_POSITION = @as(c_int, 0x0B07);
pub const GL_CURRENT_RASTER_POSITION_VALID = @as(c_int, 0x0B08);
pub const GL_CURRENT_RASTER_DISTANCE = @as(c_int, 0x0B09);
pub const GL_POINT_SMOOTH = @as(c_int, 0x0B10);
pub const GL_LINE_STIPPLE = @as(c_int, 0x0B24);
pub const GL_LINE_STIPPLE_PATTERN = @as(c_int, 0x0B25);
pub const GL_LINE_STIPPLE_REPEAT = @as(c_int, 0x0B26);
pub const GL_LIST_MODE = @as(c_int, 0x0B30);
pub const GL_MAX_LIST_NESTING = @as(c_int, 0x0B31);
pub const GL_LIST_BASE = @as(c_int, 0x0B32);
pub const GL_LIST_INDEX = @as(c_int, 0x0B33);
pub const GL_POLYGON_STIPPLE = @as(c_int, 0x0B42);
pub const GL_EDGE_FLAG = @as(c_int, 0x0B43);
pub const GL_LIGHTING = @as(c_int, 0x0B50);
pub const GL_LIGHT_MODEL_LOCAL_VIEWER = @as(c_int, 0x0B51);
pub const GL_LIGHT_MODEL_TWO_SIDE = @as(c_int, 0x0B52);
pub const GL_LIGHT_MODEL_AMBIENT = @as(c_int, 0x0B53);
pub const GL_SHADE_MODEL = @as(c_int, 0x0B54);
pub const GL_COLOR_MATERIAL_FACE = @as(c_int, 0x0B55);
pub const GL_COLOR_MATERIAL_PARAMETER = @as(c_int, 0x0B56);
pub const GL_COLOR_MATERIAL = @as(c_int, 0x0B57);
pub const GL_FOG = @as(c_int, 0x0B60);
pub const GL_FOG_INDEX = @as(c_int, 0x0B61);
pub const GL_FOG_DENSITY = @as(c_int, 0x0B62);
pub const GL_FOG_START = @as(c_int, 0x0B63);
pub const GL_FOG_END = @as(c_int, 0x0B64);
pub const GL_FOG_MODE = @as(c_int, 0x0B65);
pub const GL_FOG_COLOR = @as(c_int, 0x0B66);
pub const GL_ACCUM_CLEAR_VALUE = @as(c_int, 0x0B80);
pub const GL_MATRIX_MODE = @as(c_int, 0x0BA0);
pub const GL_NORMALIZE = @as(c_int, 0x0BA1);
pub const GL_MODELVIEW_STACK_DEPTH = @as(c_int, 0x0BA3);
pub const GL_PROJECTION_STACK_DEPTH = @as(c_int, 0x0BA4);
pub const GL_TEXTURE_STACK_DEPTH = @as(c_int, 0x0BA5);
pub const GL_MODELVIEW_MATRIX = @as(c_int, 0x0BA6);
pub const GL_PROJECTION_MATRIX = @as(c_int, 0x0BA7);
pub const GL_TEXTURE_MATRIX = @as(c_int, 0x0BA8);
pub const GL_ATTRIB_STACK_DEPTH = @as(c_int, 0x0BB0);
pub const GL_ALPHA_TEST = @as(c_int, 0x0BC0);
pub const GL_ALPHA_TEST_FUNC = @as(c_int, 0x0BC1);
pub const GL_ALPHA_TEST_REF = @as(c_int, 0x0BC2);
pub const GL_LOGIC_OP = @as(c_int, 0x0BF1);
pub const GL_AUX_BUFFERS = @as(c_int, 0x0C00);
pub const GL_INDEX_CLEAR_VALUE = @as(c_int, 0x0C20);
pub const GL_INDEX_WRITEMASK = @as(c_int, 0x0C21);
pub const GL_INDEX_MODE = @as(c_int, 0x0C30);
pub const GL_RGBA_MODE = @as(c_int, 0x0C31);
pub const GL_RENDER_MODE = @as(c_int, 0x0C40);
pub const GL_PERSPECTIVE_CORRECTION_HINT = @as(c_int, 0x0C50);
pub const GL_POINT_SMOOTH_HINT = @as(c_int, 0x0C51);
pub const GL_FOG_HINT = @as(c_int, 0x0C54);
pub const GL_TEXTURE_GEN_S = @as(c_int, 0x0C60);
pub const GL_TEXTURE_GEN_T = @as(c_int, 0x0C61);
pub const GL_TEXTURE_GEN_R = @as(c_int, 0x0C62);
pub const GL_TEXTURE_GEN_Q = @as(c_int, 0x0C63);
pub const GL_PIXEL_MAP_I_TO_I_SIZE = @as(c_int, 0x0CB0);
pub const GL_PIXEL_MAP_S_TO_S_SIZE = @as(c_int, 0x0CB1);
pub const GL_PIXEL_MAP_I_TO_R_SIZE = @as(c_int, 0x0CB2);
pub const GL_PIXEL_MAP_I_TO_G_SIZE = @as(c_int, 0x0CB3);
pub const GL_PIXEL_MAP_I_TO_B_SIZE = @as(c_int, 0x0CB4);
pub const GL_PIXEL_MAP_I_TO_A_SIZE = @as(c_int, 0x0CB5);
pub const GL_PIXEL_MAP_R_TO_R_SIZE = @as(c_int, 0x0CB6);
pub const GL_PIXEL_MAP_G_TO_G_SIZE = @as(c_int, 0x0CB7);
pub const GL_PIXEL_MAP_B_TO_B_SIZE = @as(c_int, 0x0CB8);
pub const GL_PIXEL_MAP_A_TO_A_SIZE = @as(c_int, 0x0CB9);
pub const GL_MAP_COLOR = @as(c_int, 0x0D10);
pub const GL_MAP_STENCIL = @as(c_int, 0x0D11);
pub const GL_INDEX_SHIFT = @as(c_int, 0x0D12);
pub const GL_INDEX_OFFSET = @as(c_int, 0x0D13);
pub const GL_RED_SCALE = @as(c_int, 0x0D14);
pub const GL_RED_BIAS = @as(c_int, 0x0D15);
pub const GL_ZOOM_X = @as(c_int, 0x0D16);
pub const GL_ZOOM_Y = @as(c_int, 0x0D17);
pub const GL_GREEN_SCALE = @as(c_int, 0x0D18);
pub const GL_GREEN_BIAS = @as(c_int, 0x0D19);
pub const GL_BLUE_SCALE = @as(c_int, 0x0D1A);
pub const GL_BLUE_BIAS = @as(c_int, 0x0D1B);
pub const GL_ALPHA_SCALE = @as(c_int, 0x0D1C);
pub const GL_ALPHA_BIAS = @as(c_int, 0x0D1D);
pub const GL_DEPTH_SCALE = @as(c_int, 0x0D1E);
pub const GL_DEPTH_BIAS = @as(c_int, 0x0D1F);
pub const GL_MAX_EVAL_ORDER = @as(c_int, 0x0D30);
pub const GL_MAX_LIGHTS = @as(c_int, 0x0D31);
pub const GL_MAX_CLIP_PLANES = @as(c_int, 0x0D32);
pub const GL_MAX_PIXEL_MAP_TABLE = @as(c_int, 0x0D34);
pub const GL_MAX_ATTRIB_STACK_DEPTH = @as(c_int, 0x0D35);
pub const GL_MAX_MODELVIEW_STACK_DEPTH = @as(c_int, 0x0D36);
pub const GL_MAX_NAME_STACK_DEPTH = @as(c_int, 0x0D37);
pub const GL_MAX_PROJECTION_STACK_DEPTH = @as(c_int, 0x0D38);
pub const GL_MAX_TEXTURE_STACK_DEPTH = @as(c_int, 0x0D39);
pub const GL_INDEX_BITS = @as(c_int, 0x0D51);
pub const GL_RED_BITS = @as(c_int, 0x0D52);
pub const GL_GREEN_BITS = @as(c_int, 0x0D53);
pub const GL_BLUE_BITS = @as(c_int, 0x0D54);
pub const GL_ALPHA_BITS = @as(c_int, 0x0D55);
pub const GL_DEPTH_BITS = @as(c_int, 0x0D56);
pub const GL_STENCIL_BITS = @as(c_int, 0x0D57);
pub const GL_ACCUM_RED_BITS = @as(c_int, 0x0D58);
pub const GL_ACCUM_GREEN_BITS = @as(c_int, 0x0D59);
pub const GL_ACCUM_BLUE_BITS = @as(c_int, 0x0D5A);
pub const GL_ACCUM_ALPHA_BITS = @as(c_int, 0x0D5B);
pub const GL_NAME_STACK_DEPTH = @as(c_int, 0x0D70);
pub const GL_AUTO_NORMAL = @as(c_int, 0x0D80);
pub const GL_MAP1_COLOR_4 = @as(c_int, 0x0D90);
pub const GL_MAP1_INDEX = @as(c_int, 0x0D91);
pub const GL_MAP1_NORMAL = @as(c_int, 0x0D92);
pub const GL_MAP1_TEXTURE_COORD_1 = @as(c_int, 0x0D93);
pub const GL_MAP1_TEXTURE_COORD_2 = @as(c_int, 0x0D94);
pub const GL_MAP1_TEXTURE_COORD_3 = @as(c_int, 0x0D95);
pub const GL_MAP1_TEXTURE_COORD_4 = @as(c_int, 0x0D96);
pub const GL_MAP1_VERTEX_3 = @as(c_int, 0x0D97);
pub const GL_MAP1_VERTEX_4 = @as(c_int, 0x0D98);
pub const GL_MAP2_COLOR_4 = @as(c_int, 0x0DB0);
pub const GL_MAP2_INDEX = @as(c_int, 0x0DB1);
pub const GL_MAP2_NORMAL = @as(c_int, 0x0DB2);
pub const GL_MAP2_TEXTURE_COORD_1 = @as(c_int, 0x0DB3);
pub const GL_MAP2_TEXTURE_COORD_2 = @as(c_int, 0x0DB4);
pub const GL_MAP2_TEXTURE_COORD_3 = @as(c_int, 0x0DB5);
pub const GL_MAP2_TEXTURE_COORD_4 = @as(c_int, 0x0DB6);
pub const GL_MAP2_VERTEX_3 = @as(c_int, 0x0DB7);
pub const GL_MAP2_VERTEX_4 = @as(c_int, 0x0DB8);
pub const GL_MAP1_GRID_DOMAIN = @as(c_int, 0x0DD0);
pub const GL_MAP1_GRID_SEGMENTS = @as(c_int, 0x0DD1);
pub const GL_MAP2_GRID_DOMAIN = @as(c_int, 0x0DD2);
pub const GL_MAP2_GRID_SEGMENTS = @as(c_int, 0x0DD3);
pub const GL_TEXTURE_COMPONENTS = @as(c_int, 0x1003);
pub const GL_TEXTURE_BORDER = @as(c_int, 0x1005);
pub const GL_AMBIENT = @as(c_int, 0x1200);
pub const GL_DIFFUSE = @as(c_int, 0x1201);
pub const GL_SPECULAR = @as(c_int, 0x1202);
pub const GL_POSITION = @as(c_int, 0x1203);
pub const GL_SPOT_DIRECTION = @as(c_int, 0x1204);
pub const GL_SPOT_EXPONENT = @as(c_int, 0x1205);
pub const GL_SPOT_CUTOFF = @as(c_int, 0x1206);
pub const GL_CONSTANT_ATTENUATION = @as(c_int, 0x1207);
pub const GL_LINEAR_ATTENUATION = @as(c_int, 0x1208);
pub const GL_QUADRATIC_ATTENUATION = @as(c_int, 0x1209);
pub const GL_COMPILE = @as(c_int, 0x1300);
pub const GL_COMPILE_AND_EXECUTE = @as(c_int, 0x1301);
pub const GL_2_BYTES = @as(c_int, 0x1407);
pub const GL_3_BYTES = @as(c_int, 0x1408);
pub const GL_4_BYTES = @as(c_int, 0x1409);
pub const GL_EMISSION = @as(c_int, 0x1600);
pub const GL_SHININESS = @as(c_int, 0x1601);
pub const GL_AMBIENT_AND_DIFFUSE = @as(c_int, 0x1602);
pub const GL_COLOR_INDEXES = @as(c_int, 0x1603);
pub const GL_MODELVIEW = @as(c_int, 0x1700);
pub const GL_PROJECTION = @as(c_int, 0x1701);
pub const GL_COLOR_INDEX = @as(c_int, 0x1900);
pub const GL_LUMINANCE = @as(c_int, 0x1909);
pub const GL_LUMINANCE_ALPHA = @as(c_int, 0x190A);
pub const GL_BITMAP = @as(c_int, 0x1A00);
pub const GL_RENDER = @as(c_int, 0x1C00);
pub const GL_FEEDBACK = @as(c_int, 0x1C01);
pub const GL_SELECT = @as(c_int, 0x1C02);
pub const GL_FLAT = @as(c_int, 0x1D00);
pub const GL_SMOOTH = @as(c_int, 0x1D01);
pub const GL_S = @as(c_int, 0x2000);
pub const GL_T = @as(c_int, 0x2001);
pub const GL_R = @as(c_int, 0x2002);
pub const GL_Q = @as(c_int, 0x2003);
pub const GL_MODULATE = @as(c_int, 0x2100);
pub const GL_DECAL = @as(c_int, 0x2101);
pub const GL_TEXTURE_ENV_MODE = @as(c_int, 0x2200);
pub const GL_TEXTURE_ENV_COLOR = @as(c_int, 0x2201);
pub const GL_TEXTURE_ENV = @as(c_int, 0x2300);
pub const GL_EYE_LINEAR = @as(c_int, 0x2400);
pub const GL_OBJECT_LINEAR = @as(c_int, 0x2401);
pub const GL_SPHERE_MAP = @as(c_int, 0x2402);
pub const GL_TEXTURE_GEN_MODE = @as(c_int, 0x2500);
pub const GL_OBJECT_PLANE = @as(c_int, 0x2501);
pub const GL_EYE_PLANE = @as(c_int, 0x2502);
pub const GL_CLAMP = @as(c_int, 0x2900);
pub const GL_CLIP_PLANE0 = @as(c_int, 0x3000);
pub const GL_CLIP_PLANE1 = @as(c_int, 0x3001);
pub const GL_CLIP_PLANE2 = @as(c_int, 0x3002);
pub const GL_CLIP_PLANE3 = @as(c_int, 0x3003);
pub const GL_CLIP_PLANE4 = @as(c_int, 0x3004);
pub const GL_CLIP_PLANE5 = @as(c_int, 0x3005);
pub const GL_LIGHT0 = @as(c_int, 0x4000);
pub const GL_LIGHT1 = @as(c_int, 0x4001);
pub const GL_LIGHT2 = @as(c_int, 0x4002);
pub const GL_LIGHT3 = @as(c_int, 0x4003);
pub const GL_LIGHT4 = @as(c_int, 0x4004);
pub const GL_LIGHT5 = @as(c_int, 0x4005);
pub const GL_LIGHT6 = @as(c_int, 0x4006);
pub const GL_LIGHT7 = @as(c_int, 0x4007);
pub const GL_COLOR_LOGIC_OP = @as(c_int, 0x0BF2);
pub const GL_POLYGON_OFFSET_UNITS = @as(c_int, 0x2A00);
pub const GL_POLYGON_OFFSET_POINT = @as(c_int, 0x2A01);
pub const GL_POLYGON_OFFSET_LINE = @as(c_int, 0x2A02);
pub const GL_POLYGON_OFFSET_FILL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8037, .hex);
pub const GL_POLYGON_OFFSET_FACTOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8038, .hex);
pub const GL_TEXTURE_BINDING_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8068, .hex);
pub const GL_TEXTURE_BINDING_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8069, .hex);
pub const GL_TEXTURE_INTERNAL_FORMAT = @as(c_int, 0x1003);
pub const GL_TEXTURE_RED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x805C, .hex);
pub const GL_TEXTURE_GREEN_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x805D, .hex);
pub const GL_TEXTURE_BLUE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x805E, .hex);
pub const GL_TEXTURE_ALPHA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x805F, .hex);
pub const GL_DOUBLE = @as(c_int, 0x140A);
pub const GL_PROXY_TEXTURE_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8063, .hex);
pub const GL_PROXY_TEXTURE_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8064, .hex);
pub const GL_R3_G3_B2 = @as(c_int, 0x2A10);
pub const GL_RGB4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x804F, .hex);
pub const GL_RGB5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8050, .hex);
pub const GL_RGB8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8051, .hex);
pub const GL_RGB10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8052, .hex);
pub const GL_RGB12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8053, .hex);
pub const GL_RGB16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8054, .hex);
pub const GL_RGBA2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8055, .hex);
pub const GL_RGBA4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8056, .hex);
pub const GL_RGB5_A1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8057, .hex);
pub const GL_RGBA8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8058, .hex);
pub const GL_RGB10_A2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8059, .hex);
pub const GL_RGBA12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x805A, .hex);
pub const GL_RGBA16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x805B, .hex);
pub const GL_CLIENT_PIXEL_STORE_BIT = @as(c_int, 0x00000001);
pub const GL_CLIENT_VERTEX_ARRAY_BIT = @as(c_int, 0x00000002);
pub const GL_CLIENT_ALL_ATTRIB_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hex);
pub const GL_VERTEX_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x808E, .hex);
pub const GL_NORMAL_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x808F, .hex);
pub const GL_COLOR_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8090, .hex);
pub const GL_INDEX_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8091, .hex);
pub const GL_TEXTURE_COORD_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8092, .hex);
pub const GL_EDGE_FLAG_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8093, .hex);
pub const GL_FEEDBACK_BUFFER_POINTER = @as(c_int, 0x0DF0);
pub const GL_SELECTION_BUFFER_POINTER = @as(c_int, 0x0DF3);
pub const GL_CLIENT_ATTRIB_STACK_DEPTH = @as(c_int, 0x0BB1);
pub const GL_INDEX_LOGIC_OP = @as(c_int, 0x0BF1);
pub const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = @as(c_int, 0x0D3B);
pub const GL_FEEDBACK_BUFFER_SIZE = @as(c_int, 0x0DF1);
pub const GL_FEEDBACK_BUFFER_TYPE = @as(c_int, 0x0DF2);
pub const GL_SELECTION_BUFFER_SIZE = @as(c_int, 0x0DF4);
pub const GL_VERTEX_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8074, .hex);
pub const GL_NORMAL_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8075, .hex);
pub const GL_COLOR_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8076, .hex);
pub const GL_INDEX_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8077, .hex);
pub const GL_TEXTURE_COORD_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8078, .hex);
pub const GL_EDGE_FLAG_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8079, .hex);
pub const GL_VERTEX_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x807A, .hex);
pub const GL_VERTEX_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x807B, .hex);
pub const GL_VERTEX_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x807C, .hex);
pub const GL_NORMAL_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x807E, .hex);
pub const GL_NORMAL_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x807F, .hex);
pub const GL_COLOR_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8081, .hex);
pub const GL_COLOR_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8082, .hex);
pub const GL_COLOR_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8083, .hex);
pub const GL_INDEX_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8085, .hex);
pub const GL_INDEX_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8086, .hex);
pub const GL_TEXTURE_COORD_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8088, .hex);
pub const GL_TEXTURE_COORD_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8089, .hex);
pub const GL_TEXTURE_COORD_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x808A, .hex);
pub const GL_EDGE_FLAG_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x808C, .hex);
pub const GL_TEXTURE_LUMINANCE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8060, .hex);
pub const GL_TEXTURE_INTENSITY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8061, .hex);
pub const GL_TEXTURE_PRIORITY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8066, .hex);
pub const GL_TEXTURE_RESIDENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8067, .hex);
pub const GL_ALPHA4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x803B, .hex);
pub const GL_ALPHA8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x803C, .hex);
pub const GL_ALPHA12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x803D, .hex);
pub const GL_ALPHA16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x803E, .hex);
pub const GL_LUMINANCE4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x803F, .hex);
pub const GL_LUMINANCE8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8040, .hex);
pub const GL_LUMINANCE12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8041, .hex);
pub const GL_LUMINANCE16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8042, .hex);
pub const GL_LUMINANCE4_ALPHA4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8043, .hex);
pub const GL_LUMINANCE6_ALPHA2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8044, .hex);
pub const GL_LUMINANCE8_ALPHA8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8045, .hex);
pub const GL_LUMINANCE12_ALPHA4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8046, .hex);
pub const GL_LUMINANCE12_ALPHA12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8047, .hex);
pub const GL_LUMINANCE16_ALPHA16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8048, .hex);
pub const GL_INTENSITY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8049, .hex);
pub const GL_INTENSITY4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x804A, .hex);
pub const GL_INTENSITY8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x804B, .hex);
pub const GL_INTENSITY12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x804C, .hex);
pub const GL_INTENSITY16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x804D, .hex);
pub const GL_V2F = @as(c_int, 0x2A20);
pub const GL_V3F = @as(c_int, 0x2A21);
pub const GL_C4UB_V2F = @as(c_int, 0x2A22);
pub const GL_C4UB_V3F = @as(c_int, 0x2A23);
pub const GL_C3F_V3F = @as(c_int, 0x2A24);
pub const GL_N3F_V3F = @as(c_int, 0x2A25);
pub const GL_C4F_N3F_V3F = @as(c_int, 0x2A26);
pub const GL_T2F_V3F = @as(c_int, 0x2A27);
pub const GL_T4F_V4F = @as(c_int, 0x2A28);
pub const GL_T2F_C4UB_V3F = @as(c_int, 0x2A29);
pub const GL_T2F_C3F_V3F = @as(c_int, 0x2A2A);
pub const GL_T2F_N3F_V3F = @as(c_int, 0x2A2B);
pub const GL_T2F_C4F_N3F_V3F = @as(c_int, 0x2A2C);
pub const GL_T4F_C4F_N3F_V4F = @as(c_int, 0x2A2D);
pub const GL_UNSIGNED_BYTE_3_3_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8032, .hex);
pub const GL_UNSIGNED_SHORT_4_4_4_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8033, .hex);
pub const GL_UNSIGNED_SHORT_5_5_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8034, .hex);
pub const GL_UNSIGNED_INT_8_8_8_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8035, .hex);
pub const GL_UNSIGNED_INT_10_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8036, .hex);
pub const GL_TEXTURE_BINDING_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x806A, .hex);
pub const GL_PACK_SKIP_IMAGES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x806B, .hex);
pub const GL_PACK_IMAGE_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x806C, .hex);
pub const GL_UNPACK_SKIP_IMAGES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x806D, .hex);
pub const GL_UNPACK_IMAGE_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x806E, .hex);
pub const GL_TEXTURE_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x806F, .hex);
pub const GL_PROXY_TEXTURE_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8070, .hex);
pub const GL_TEXTURE_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8071, .hex);
pub const GL_TEXTURE_WRAP_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8072, .hex);
pub const GL_MAX_3D_TEXTURE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8073, .hex);
pub const GL_UNSIGNED_BYTE_2_3_3_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8362, .hex);
pub const GL_UNSIGNED_SHORT_5_6_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8363, .hex);
pub const GL_UNSIGNED_SHORT_5_6_5_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8364, .hex);
pub const GL_UNSIGNED_SHORT_4_4_4_4_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8365, .hex);
pub const GL_UNSIGNED_SHORT_1_5_5_5_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8366, .hex);
pub const GL_UNSIGNED_INT_8_8_8_8_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8367, .hex);
pub const GL_UNSIGNED_INT_2_10_10_10_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8368, .hex);
pub const GL_BGR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80E0, .hex);
pub const GL_BGRA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80E1, .hex);
pub const GL_MAX_ELEMENTS_VERTICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80E8, .hex);
pub const GL_MAX_ELEMENTS_INDICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80E9, .hex);
pub const GL_CLAMP_TO_EDGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x812F, .hex);
pub const GL_TEXTURE_MIN_LOD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x813A, .hex);
pub const GL_TEXTURE_MAX_LOD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x813B, .hex);
pub const GL_TEXTURE_BASE_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x813C, .hex);
pub const GL_TEXTURE_MAX_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x813D, .hex);
pub const GL_SMOOTH_POINT_SIZE_RANGE = @as(c_int, 0x0B12);
pub const GL_SMOOTH_POINT_SIZE_GRANULARITY = @as(c_int, 0x0B13);
pub const GL_SMOOTH_LINE_WIDTH_RANGE = @as(c_int, 0x0B22);
pub const GL_SMOOTH_LINE_WIDTH_GRANULARITY = @as(c_int, 0x0B23);
pub const GL_ALIASED_LINE_WIDTH_RANGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x846E, .hex);
pub const GL_RESCALE_NORMAL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x803A, .hex);
pub const GL_LIGHT_MODEL_COLOR_CONTROL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x81F8, .hex);
pub const GL_SINGLE_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x81F9, .hex);
pub const GL_SEPARATE_SPECULAR_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x81FA, .hex);
pub const GL_ALIASED_POINT_SIZE_RANGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x846D, .hex);
pub const GL_TEXTURE0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C0, .hex);
pub const GL_TEXTURE1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C1, .hex);
pub const GL_TEXTURE2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C2, .hex);
pub const GL_TEXTURE3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C3, .hex);
pub const GL_TEXTURE4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C4, .hex);
pub const GL_TEXTURE5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C5, .hex);
pub const GL_TEXTURE6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C6, .hex);
pub const GL_TEXTURE7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C7, .hex);
pub const GL_TEXTURE8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C8, .hex);
pub const GL_TEXTURE9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84C9, .hex);
pub const GL_TEXTURE10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84CA, .hex);
pub const GL_TEXTURE11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84CB, .hex);
pub const GL_TEXTURE12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84CC, .hex);
pub const GL_TEXTURE13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84CD, .hex);
pub const GL_TEXTURE14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84CE, .hex);
pub const GL_TEXTURE15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84CF, .hex);
pub const GL_TEXTURE16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D0, .hex);
pub const GL_TEXTURE17 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D1, .hex);
pub const GL_TEXTURE18 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D2, .hex);
pub const GL_TEXTURE19 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D3, .hex);
pub const GL_TEXTURE20 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D4, .hex);
pub const GL_TEXTURE21 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D5, .hex);
pub const GL_TEXTURE22 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D6, .hex);
pub const GL_TEXTURE23 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D7, .hex);
pub const GL_TEXTURE24 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D8, .hex);
pub const GL_TEXTURE25 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84D9, .hex);
pub const GL_TEXTURE26 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84DA, .hex);
pub const GL_TEXTURE27 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84DB, .hex);
pub const GL_TEXTURE28 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84DC, .hex);
pub const GL_TEXTURE29 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84DD, .hex);
pub const GL_TEXTURE30 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84DE, .hex);
pub const GL_TEXTURE31 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84DF, .hex);
pub const GL_ACTIVE_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E0, .hex);
pub const GL_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x809D, .hex);
pub const GL_SAMPLE_ALPHA_TO_COVERAGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x809E, .hex);
pub const GL_SAMPLE_ALPHA_TO_ONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x809F, .hex);
pub const GL_SAMPLE_COVERAGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80A0, .hex);
pub const GL_SAMPLE_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80A8, .hex);
pub const GL_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80A9, .hex);
pub const GL_SAMPLE_COVERAGE_VALUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80AA, .hex);
pub const GL_SAMPLE_COVERAGE_INVERT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80AB, .hex);
pub const GL_TEXTURE_CUBE_MAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8513, .hex);
pub const GL_TEXTURE_BINDING_CUBE_MAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8514, .hex);
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_X = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8515, .hex);
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_X = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8516, .hex);
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Y = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8517, .hex);
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8518, .hex);
pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Z = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8519, .hex);
pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x851A, .hex);
pub const GL_PROXY_TEXTURE_CUBE_MAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x851B, .hex);
pub const GL_MAX_CUBE_MAP_TEXTURE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x851C, .hex);
pub const GL_COMPRESSED_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84ED, .hex);
pub const GL_COMPRESSED_RGBA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84EE, .hex);
pub const GL_TEXTURE_COMPRESSION_HINT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84EF, .hex);
pub const GL_TEXTURE_COMPRESSED_IMAGE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x86A0, .hex);
pub const GL_TEXTURE_COMPRESSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x86A1, .hex);
pub const GL_NUM_COMPRESSED_TEXTURE_FORMATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x86A2, .hex);
pub const GL_COMPRESSED_TEXTURE_FORMATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x86A3, .hex);
pub const GL_CLAMP_TO_BORDER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x812D, .hex);
pub const GL_CLIENT_ACTIVE_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E1, .hex);
pub const GL_MAX_TEXTURE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E2, .hex);
pub const GL_TRANSPOSE_MODELVIEW_MATRIX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E3, .hex);
pub const GL_TRANSPOSE_PROJECTION_MATRIX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E4, .hex);
pub const GL_TRANSPOSE_TEXTURE_MATRIX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E5, .hex);
pub const GL_TRANSPOSE_COLOR_MATRIX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E6, .hex);
pub const GL_MULTISAMPLE_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const GL_NORMAL_MAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8511, .hex);
pub const GL_REFLECTION_MAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8512, .hex);
pub const GL_COMPRESSED_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E9, .hex);
pub const GL_COMPRESSED_LUMINANCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84EA, .hex);
pub const GL_COMPRESSED_LUMINANCE_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84EB, .hex);
pub const GL_COMPRESSED_INTENSITY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84EC, .hex);
pub const GL_COMBINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8570, .hex);
pub const GL_COMBINE_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8571, .hex);
pub const GL_COMBINE_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8572, .hex);
pub const GL_SOURCE0_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8580, .hex);
pub const GL_SOURCE1_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8581, .hex);
pub const GL_SOURCE2_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8582, .hex);
pub const GL_SOURCE0_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8588, .hex);
pub const GL_SOURCE1_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8589, .hex);
pub const GL_SOURCE2_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x858A, .hex);
pub const GL_OPERAND0_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8590, .hex);
pub const GL_OPERAND1_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8591, .hex);
pub const GL_OPERAND2_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8592, .hex);
pub const GL_OPERAND0_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8598, .hex);
pub const GL_OPERAND1_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8599, .hex);
pub const GL_OPERAND2_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x859A, .hex);
pub const GL_RGB_SCALE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8573, .hex);
pub const GL_ADD_SIGNED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8574, .hex);
pub const GL_INTERPOLATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8575, .hex);
pub const GL_SUBTRACT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E7, .hex);
pub const GL_CONSTANT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8576, .hex);
pub const GL_PRIMARY_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8577, .hex);
pub const GL_PREVIOUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8578, .hex);
pub const GL_DOT3_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x86AE, .hex);
pub const GL_DOT3_RGBA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x86AF, .hex);
pub const GL_BLEND_DST_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80C8, .hex);
pub const GL_BLEND_SRC_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80C9, .hex);
pub const GL_BLEND_DST_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80CA, .hex);
pub const GL_BLEND_SRC_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80CB, .hex);
pub const GL_POINT_FADE_THRESHOLD_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8128, .hex);
pub const GL_DEPTH_COMPONENT16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x81A5, .hex);
pub const GL_DEPTH_COMPONENT24 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x81A6, .hex);
pub const GL_DEPTH_COMPONENT32 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x81A7, .hex);
pub const GL_MIRRORED_REPEAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8370, .hex);
pub const GL_MAX_TEXTURE_LOD_BIAS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84FD, .hex);
pub const GL_TEXTURE_LOD_BIAS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8501, .hex);
pub const GL_INCR_WRAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8507, .hex);
pub const GL_DECR_WRAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8508, .hex);
pub const GL_TEXTURE_DEPTH_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884A, .hex);
pub const GL_TEXTURE_COMPARE_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884C, .hex);
pub const GL_TEXTURE_COMPARE_FUNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884D, .hex);
pub const GL_POINT_SIZE_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8126, .hex);
pub const GL_POINT_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8127, .hex);
pub const GL_POINT_DISTANCE_ATTENUATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8129, .hex);
pub const GL_GENERATE_MIPMAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8191, .hex);
pub const GL_GENERATE_MIPMAP_HINT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8192, .hex);
pub const GL_FOG_COORDINATE_SOURCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8450, .hex);
pub const GL_FOG_COORDINATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8451, .hex);
pub const GL_FRAGMENT_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8452, .hex);
pub const GL_CURRENT_FOG_COORDINATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8453, .hex);
pub const GL_FOG_COORDINATE_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8454, .hex);
pub const GL_FOG_COORDINATE_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8455, .hex);
pub const GL_FOG_COORDINATE_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8456, .hex);
pub const GL_FOG_COORDINATE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8457, .hex);
pub const GL_COLOR_SUM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8458, .hex);
pub const GL_CURRENT_SECONDARY_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8459, .hex);
pub const GL_SECONDARY_COLOR_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x845A, .hex);
pub const GL_SECONDARY_COLOR_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x845B, .hex);
pub const GL_SECONDARY_COLOR_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x845C, .hex);
pub const GL_SECONDARY_COLOR_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x845D, .hex);
pub const GL_SECONDARY_COLOR_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x845E, .hex);
pub const GL_TEXTURE_FILTER_CONTROL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8500, .hex);
pub const GL_DEPTH_TEXTURE_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884B, .hex);
pub const GL_COMPARE_R_TO_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884E, .hex);
pub const GL_BLEND_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8005, .hex);
pub const GL_BLEND_EQUATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8009, .hex);
pub const GL_CONSTANT_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8001, .hex);
pub const GL_ONE_MINUS_CONSTANT_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8002, .hex);
pub const GL_CONSTANT_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8003, .hex);
pub const GL_ONE_MINUS_CONSTANT_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8004, .hex);
pub const GL_FUNC_ADD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8006, .hex);
pub const GL_FUNC_REVERSE_SUBTRACT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x800B, .hex);
pub const GL_FUNC_SUBTRACT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x800A, .hex);
pub const GL_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8007, .hex);
pub const GL_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8008, .hex);
pub const GL_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8764, .hex);
pub const GL_BUFFER_USAGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8765, .hex);
pub const GL_QUERY_COUNTER_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8864, .hex);
pub const GL_CURRENT_QUERY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8865, .hex);
pub const GL_QUERY_RESULT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8866, .hex);
pub const GL_QUERY_RESULT_AVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8867, .hex);
pub const GL_ARRAY_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8892, .hex);
pub const GL_ELEMENT_ARRAY_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8893, .hex);
pub const GL_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8894, .hex);
pub const GL_ELEMENT_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8895, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889F, .hex);
pub const GL_READ_ONLY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88B8, .hex);
pub const GL_WRITE_ONLY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88B9, .hex);
pub const GL_READ_WRITE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88BA, .hex);
pub const GL_BUFFER_ACCESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88BB, .hex);
pub const GL_BUFFER_MAPPED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88BC, .hex);
pub const GL_BUFFER_MAP_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88BD, .hex);
pub const GL_STREAM_DRAW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E0, .hex);
pub const GL_STREAM_READ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E1, .hex);
pub const GL_STREAM_COPY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E2, .hex);
pub const GL_STATIC_DRAW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E4, .hex);
pub const GL_STATIC_READ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E5, .hex);
pub const GL_STATIC_COPY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E6, .hex);
pub const GL_DYNAMIC_DRAW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E8, .hex);
pub const GL_DYNAMIC_READ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88E9, .hex);
pub const GL_DYNAMIC_COPY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88EA, .hex);
pub const GL_SAMPLES_PASSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8914, .hex);
pub const GL_SRC1_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8589, .hex);
pub const GL_VERTEX_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8896, .hex);
pub const GL_NORMAL_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8897, .hex);
pub const GL_COLOR_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8898, .hex);
pub const GL_INDEX_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8899, .hex);
pub const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889A, .hex);
pub const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889B, .hex);
pub const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889C, .hex);
pub const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889D, .hex);
pub const GL_WEIGHT_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889E, .hex);
pub const GL_FOG_COORD_SRC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8450, .hex);
pub const GL_FOG_COORD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8451, .hex);
pub const GL_CURRENT_FOG_COORD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8453, .hex);
pub const GL_FOG_COORD_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8454, .hex);
pub const GL_FOG_COORD_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8455, .hex);
pub const GL_FOG_COORD_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8456, .hex);
pub const GL_FOG_COORD_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8457, .hex);
pub const GL_FOG_COORD_ARRAY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x889D, .hex);
pub const GL_SRC0_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8580, .hex);
pub const GL_SRC1_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8581, .hex);
pub const GL_SRC2_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8582, .hex);
pub const GL_SRC0_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8588, .hex);
pub const GL_SRC2_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x858A, .hex);
pub const GL_BLEND_EQUATION_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8009, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_ENABLED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8622, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8623, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8624, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8625, .hex);
pub const GL_CURRENT_VERTEX_ATTRIB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8626, .hex);
pub const GL_VERTEX_PROGRAM_POINT_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8642, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_POINTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8645, .hex);
pub const GL_STENCIL_BACK_FUNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8800, .hex);
pub const GL_STENCIL_BACK_FAIL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8801, .hex);
pub const GL_STENCIL_BACK_PASS_DEPTH_FAIL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8802, .hex);
pub const GL_STENCIL_BACK_PASS_DEPTH_PASS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8803, .hex);
pub const GL_MAX_DRAW_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8824, .hex);
pub const GL_DRAW_BUFFER0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8825, .hex);
pub const GL_DRAW_BUFFER1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8826, .hex);
pub const GL_DRAW_BUFFER2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8827, .hex);
pub const GL_DRAW_BUFFER3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8828, .hex);
pub const GL_DRAW_BUFFER4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8829, .hex);
pub const GL_DRAW_BUFFER5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x882A, .hex);
pub const GL_DRAW_BUFFER6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x882B, .hex);
pub const GL_DRAW_BUFFER7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x882C, .hex);
pub const GL_DRAW_BUFFER8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x882D, .hex);
pub const GL_DRAW_BUFFER9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x882E, .hex);
pub const GL_DRAW_BUFFER10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x882F, .hex);
pub const GL_DRAW_BUFFER11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8830, .hex);
pub const GL_DRAW_BUFFER12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8831, .hex);
pub const GL_DRAW_BUFFER13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8832, .hex);
pub const GL_DRAW_BUFFER14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8833, .hex);
pub const GL_DRAW_BUFFER15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8834, .hex);
pub const GL_BLEND_EQUATION_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x883D, .hex);
pub const GL_MAX_VERTEX_ATTRIBS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8869, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x886A, .hex);
pub const GL_MAX_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8872, .hex);
pub const GL_FRAGMENT_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B30, .hex);
pub const GL_VERTEX_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B31, .hex);
pub const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B49, .hex);
pub const GL_MAX_VERTEX_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B4A, .hex);
pub const GL_MAX_VARYING_FLOATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B4B, .hex);
pub const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B4C, .hex);
pub const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B4D, .hex);
pub const GL_SHADER_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B4F, .hex);
pub const GL_FLOAT_VEC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B50, .hex);
pub const GL_FLOAT_VEC3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B51, .hex);
pub const GL_FLOAT_VEC4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B52, .hex);
pub const GL_INT_VEC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B53, .hex);
pub const GL_INT_VEC3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B54, .hex);
pub const GL_INT_VEC4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B55, .hex);
pub const GL_BOOL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B56, .hex);
pub const GL_BOOL_VEC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B57, .hex);
pub const GL_BOOL_VEC3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B58, .hex);
pub const GL_BOOL_VEC4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B59, .hex);
pub const GL_FLOAT_MAT2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B5A, .hex);
pub const GL_FLOAT_MAT3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B5B, .hex);
pub const GL_FLOAT_MAT4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B5C, .hex);
pub const GL_SAMPLER_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B5D, .hex);
pub const GL_SAMPLER_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B5E, .hex);
pub const GL_SAMPLER_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B5F, .hex);
pub const GL_SAMPLER_CUBE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B60, .hex);
pub const GL_SAMPLER_1D_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B61, .hex);
pub const GL_SAMPLER_2D_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B62, .hex);
pub const GL_DELETE_STATUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B80, .hex);
pub const GL_COMPILE_STATUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B81, .hex);
pub const GL_LINK_STATUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B82, .hex);
pub const GL_VALIDATE_STATUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B83, .hex);
pub const GL_INFO_LOG_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B84, .hex);
pub const GL_ATTACHED_SHADERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B85, .hex);
pub const GL_ACTIVE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B86, .hex);
pub const GL_ACTIVE_UNIFORM_MAX_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B87, .hex);
pub const GL_SHADER_SOURCE_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B88, .hex);
pub const GL_ACTIVE_ATTRIBUTES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B89, .hex);
pub const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B8A, .hex);
pub const GL_FRAGMENT_SHADER_DERIVATIVE_HINT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B8B, .hex);
pub const GL_SHADING_LANGUAGE_VERSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B8C, .hex);
pub const GL_CURRENT_PROGRAM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B8D, .hex);
pub const GL_POINT_SPRITE_COORD_ORIGIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA0, .hex);
pub const GL_LOWER_LEFT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA1, .hex);
pub const GL_UPPER_LEFT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA2, .hex);
pub const GL_STENCIL_BACK_REF = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA3, .hex);
pub const GL_STENCIL_BACK_VALUE_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA4, .hex);
pub const GL_STENCIL_BACK_WRITEMASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA5, .hex);
pub const GL_VERTEX_PROGRAM_TWO_SIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8643, .hex);
pub const GL_POINT_SPRITE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8861, .hex);
pub const GL_COORD_REPLACE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8862, .hex);
pub const GL_MAX_TEXTURE_COORDS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8871, .hex);
pub const GL_PIXEL_PACK_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88EB, .hex);
pub const GL_PIXEL_UNPACK_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88EC, .hex);
pub const GL_PIXEL_PACK_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88ED, .hex);
pub const GL_PIXEL_UNPACK_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88EF, .hex);
pub const GL_FLOAT_MAT2x3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B65, .hex);
pub const GL_FLOAT_MAT2x4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B66, .hex);
pub const GL_FLOAT_MAT3x2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B67, .hex);
pub const GL_FLOAT_MAT3x4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B68, .hex);
pub const GL_FLOAT_MAT4x2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B69, .hex);
pub const GL_FLOAT_MAT4x3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B6A, .hex);
pub const GL_SRGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C40, .hex);
pub const GL_SRGB8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C41, .hex);
pub const GL_SRGB_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C42, .hex);
pub const GL_SRGB8_ALPHA8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C43, .hex);
pub const GL_COMPRESSED_SRGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C48, .hex);
pub const GL_COMPRESSED_SRGB_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C49, .hex);
pub const GL_CURRENT_RASTER_SECONDARY_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x845F, .hex);
pub const GL_SLUMINANCE_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C44, .hex);
pub const GL_SLUMINANCE8_ALPHA8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C45, .hex);
pub const GL_SLUMINANCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C46, .hex);
pub const GL_SLUMINANCE8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C47, .hex);
pub const GL_COMPRESSED_SLUMINANCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C4A, .hex);
pub const GL_COMPRESSED_SLUMINANCE_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C4B, .hex);
pub const GL_COMPARE_REF_TO_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884E, .hex);
pub const GL_CLIP_DISTANCE0 = @as(c_int, 0x3000);
pub const GL_CLIP_DISTANCE1 = @as(c_int, 0x3001);
pub const GL_CLIP_DISTANCE2 = @as(c_int, 0x3002);
pub const GL_CLIP_DISTANCE3 = @as(c_int, 0x3003);
pub const GL_CLIP_DISTANCE4 = @as(c_int, 0x3004);
pub const GL_CLIP_DISTANCE5 = @as(c_int, 0x3005);
pub const GL_CLIP_DISTANCE6 = @as(c_int, 0x3006);
pub const GL_CLIP_DISTANCE7 = @as(c_int, 0x3007);
pub const GL_MAX_CLIP_DISTANCES = @as(c_int, 0x0D32);
pub const GL_MAJOR_VERSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x821B, .hex);
pub const GL_MINOR_VERSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x821C, .hex);
pub const GL_NUM_EXTENSIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x821D, .hex);
pub const GL_CONTEXT_FLAGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x821E, .hex);
pub const GL_COMPRESSED_RED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8225, .hex);
pub const GL_COMPRESSED_RG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8226, .hex);
pub const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = @as(c_int, 0x00000001);
pub const GL_RGBA32F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8814, .hex);
pub const GL_RGB32F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8815, .hex);
pub const GL_RGBA16F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x881A, .hex);
pub const GL_RGB16F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x881B, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88FD, .hex);
pub const GL_MAX_ARRAY_TEXTURE_LAYERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88FF, .hex);
pub const GL_MIN_PROGRAM_TEXEL_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8904, .hex);
pub const GL_MAX_PROGRAM_TEXEL_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8905, .hex);
pub const GL_CLAMP_READ_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x891C, .hex);
pub const GL_FIXED_ONLY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x891D, .hex);
pub const GL_MAX_VARYING_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B4B, .hex);
pub const GL_TEXTURE_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C18, .hex);
pub const GL_PROXY_TEXTURE_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C19, .hex);
pub const GL_TEXTURE_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C1A, .hex);
pub const GL_PROXY_TEXTURE_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C1B, .hex);
pub const GL_TEXTURE_BINDING_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C1C, .hex);
pub const GL_TEXTURE_BINDING_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C1D, .hex);
pub const GL_R11F_G11F_B10F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C3A, .hex);
pub const GL_UNSIGNED_INT_10F_11F_11F_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C3B, .hex);
pub const GL_RGB9_E5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C3D, .hex);
pub const GL_UNSIGNED_INT_5_9_9_9_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C3E, .hex);
pub const GL_TEXTURE_SHARED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C3F, .hex);
pub const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C76, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C7F, .hex);
pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C80, .hex);
pub const GL_TRANSFORM_FEEDBACK_VARYINGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C83, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_START = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C84, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C85, .hex);
pub const GL_PRIMITIVES_GENERATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C87, .hex);
pub const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C88, .hex);
pub const GL_RASTERIZER_DISCARD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C89, .hex);
pub const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C8A, .hex);
pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C8B, .hex);
pub const GL_INTERLEAVED_ATTRIBS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C8C, .hex);
pub const GL_SEPARATE_ATTRIBS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C8D, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C8E, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C8F, .hex);
pub const GL_RGBA32UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D70, .hex);
pub const GL_RGB32UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D71, .hex);
pub const GL_RGBA16UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D76, .hex);
pub const GL_RGB16UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D77, .hex);
pub const GL_RGBA8UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D7C, .hex);
pub const GL_RGB8UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D7D, .hex);
pub const GL_RGBA32I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D82, .hex);
pub const GL_RGB32I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D83, .hex);
pub const GL_RGBA16I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D88, .hex);
pub const GL_RGB16I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D89, .hex);
pub const GL_RGBA8I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D8E, .hex);
pub const GL_RGB8I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D8F, .hex);
pub const GL_RED_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D94, .hex);
pub const GL_GREEN_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D95, .hex);
pub const GL_BLUE_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D96, .hex);
pub const GL_RGB_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D98, .hex);
pub const GL_RGBA_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D99, .hex);
pub const GL_BGR_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D9A, .hex);
pub const GL_BGRA_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D9B, .hex);
pub const GL_SAMPLER_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC0, .hex);
pub const GL_SAMPLER_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC1, .hex);
pub const GL_SAMPLER_1D_ARRAY_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC3, .hex);
pub const GL_SAMPLER_2D_ARRAY_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC4, .hex);
pub const GL_SAMPLER_CUBE_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC5, .hex);
pub const GL_UNSIGNED_INT_VEC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC6, .hex);
pub const GL_UNSIGNED_INT_VEC3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC7, .hex);
pub const GL_UNSIGNED_INT_VEC4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC8, .hex);
pub const GL_INT_SAMPLER_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC9, .hex);
pub const GL_INT_SAMPLER_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DCA, .hex);
pub const GL_INT_SAMPLER_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DCB, .hex);
pub const GL_INT_SAMPLER_CUBE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DCC, .hex);
pub const GL_INT_SAMPLER_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DCE, .hex);
pub const GL_INT_SAMPLER_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DCF, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD1, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD2, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD3, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_CUBE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD4, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD6, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD7, .hex);
pub const GL_QUERY_WAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E13, .hex);
pub const GL_QUERY_NO_WAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E14, .hex);
pub const GL_QUERY_BY_REGION_WAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E15, .hex);
pub const GL_QUERY_BY_REGION_NO_WAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E16, .hex);
pub const GL_BUFFER_ACCESS_FLAGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x911F, .hex);
pub const GL_BUFFER_MAP_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9120, .hex);
pub const GL_BUFFER_MAP_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9121, .hex);
pub const GL_DEPTH_COMPONENT32F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CAC, .hex);
pub const GL_DEPTH32F_STENCIL8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CAD, .hex);
pub const GL_FLOAT_32_UNSIGNED_INT_24_8_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DAD, .hex);
pub const GL_INVALID_FRAMEBUFFER_OPERATION = @as(c_int, 0x0506);
pub const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8210, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8211, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8212, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8213, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8214, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8215, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8216, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8217, .hex);
pub const GL_FRAMEBUFFER_DEFAULT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8218, .hex);
pub const GL_FRAMEBUFFER_UNDEFINED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8219, .hex);
pub const GL_DEPTH_STENCIL_ATTACHMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x821A, .hex);
pub const GL_MAX_RENDERBUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84E8, .hex);
pub const GL_DEPTH_STENCIL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F9, .hex);
pub const GL_UNSIGNED_INT_24_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84FA, .hex);
pub const GL_DEPTH24_STENCIL8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88F0, .hex);
pub const GL_TEXTURE_STENCIL_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88F1, .hex);
pub const GL_TEXTURE_RED_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C10, .hex);
pub const GL_TEXTURE_GREEN_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C11, .hex);
pub const GL_TEXTURE_BLUE_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C12, .hex);
pub const GL_TEXTURE_ALPHA_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C13, .hex);
pub const GL_TEXTURE_DEPTH_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C16, .hex);
pub const GL_UNSIGNED_NORMALIZED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C17, .hex);
pub const GL_FRAMEBUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA6, .hex);
pub const GL_DRAW_FRAMEBUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA6, .hex);
pub const GL_RENDERBUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA7, .hex);
pub const GL_READ_FRAMEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA8, .hex);
pub const GL_DRAW_FRAMEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CA9, .hex);
pub const GL_READ_FRAMEBUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CAA, .hex);
pub const GL_RENDERBUFFER_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CAB, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD0, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD1, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD2, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD3, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD4, .hex);
pub const GL_FRAMEBUFFER_COMPLETE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD5, .hex);
pub const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD6, .hex);
pub const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CD7, .hex);
pub const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CDB, .hex);
pub const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CDC, .hex);
pub const GL_FRAMEBUFFER_UNSUPPORTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CDD, .hex);
pub const GL_MAX_COLOR_ATTACHMENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CDF, .hex);
pub const GL_COLOR_ATTACHMENT0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE0, .hex);
pub const GL_COLOR_ATTACHMENT1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE1, .hex);
pub const GL_COLOR_ATTACHMENT2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE2, .hex);
pub const GL_COLOR_ATTACHMENT3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE3, .hex);
pub const GL_COLOR_ATTACHMENT4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE4, .hex);
pub const GL_COLOR_ATTACHMENT5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE5, .hex);
pub const GL_COLOR_ATTACHMENT6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE6, .hex);
pub const GL_COLOR_ATTACHMENT7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE7, .hex);
pub const GL_COLOR_ATTACHMENT8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE8, .hex);
pub const GL_COLOR_ATTACHMENT9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CE9, .hex);
pub const GL_COLOR_ATTACHMENT10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CEA, .hex);
pub const GL_COLOR_ATTACHMENT11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CEB, .hex);
pub const GL_COLOR_ATTACHMENT12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CEC, .hex);
pub const GL_COLOR_ATTACHMENT13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CED, .hex);
pub const GL_COLOR_ATTACHMENT14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CEE, .hex);
pub const GL_COLOR_ATTACHMENT15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CEF, .hex);
pub const GL_COLOR_ATTACHMENT16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF0, .hex);
pub const GL_COLOR_ATTACHMENT17 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF1, .hex);
pub const GL_COLOR_ATTACHMENT18 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF2, .hex);
pub const GL_COLOR_ATTACHMENT19 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF3, .hex);
pub const GL_COLOR_ATTACHMENT20 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF4, .hex);
pub const GL_COLOR_ATTACHMENT21 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF5, .hex);
pub const GL_COLOR_ATTACHMENT22 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF6, .hex);
pub const GL_COLOR_ATTACHMENT23 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF7, .hex);
pub const GL_COLOR_ATTACHMENT24 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF8, .hex);
pub const GL_COLOR_ATTACHMENT25 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CF9, .hex);
pub const GL_COLOR_ATTACHMENT26 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CFA, .hex);
pub const GL_COLOR_ATTACHMENT27 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CFB, .hex);
pub const GL_COLOR_ATTACHMENT28 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CFC, .hex);
pub const GL_COLOR_ATTACHMENT29 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CFD, .hex);
pub const GL_COLOR_ATTACHMENT30 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CFE, .hex);
pub const GL_COLOR_ATTACHMENT31 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8CFF, .hex);
pub const GL_DEPTH_ATTACHMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D00, .hex);
pub const GL_STENCIL_ATTACHMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D20, .hex);
pub const GL_FRAMEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D40, .hex);
pub const GL_RENDERBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D41, .hex);
pub const GL_RENDERBUFFER_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D42, .hex);
pub const GL_RENDERBUFFER_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D43, .hex);
pub const GL_RENDERBUFFER_INTERNAL_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D44, .hex);
pub const GL_STENCIL_INDEX1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D46, .hex);
pub const GL_STENCIL_INDEX4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D47, .hex);
pub const GL_STENCIL_INDEX8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D48, .hex);
pub const GL_STENCIL_INDEX16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D49, .hex);
pub const GL_RENDERBUFFER_RED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D50, .hex);
pub const GL_RENDERBUFFER_GREEN_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D51, .hex);
pub const GL_RENDERBUFFER_BLUE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D52, .hex);
pub const GL_RENDERBUFFER_ALPHA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D53, .hex);
pub const GL_RENDERBUFFER_DEPTH_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D54, .hex);
pub const GL_RENDERBUFFER_STENCIL_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D55, .hex);
pub const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D56, .hex);
pub const GL_MAX_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D57, .hex);
pub const GL_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8222, .hex);
pub const GL_TEXTURE_LUMINANCE_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C14, .hex);
pub const GL_TEXTURE_INTENSITY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C15, .hex);
pub const GL_FRAMEBUFFER_SRGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DB9, .hex);
pub const GL_HALF_FLOAT = @as(c_int, 0x140B);
pub const GL_MAP_READ_BIT = @as(c_int, 0x0001);
pub const GL_MAP_WRITE_BIT = @as(c_int, 0x0002);
pub const GL_MAP_INVALIDATE_RANGE_BIT = @as(c_int, 0x0004);
pub const GL_MAP_INVALIDATE_BUFFER_BIT = @as(c_int, 0x0008);
pub const GL_MAP_FLUSH_EXPLICIT_BIT = @as(c_int, 0x0010);
pub const GL_MAP_UNSYNCHRONIZED_BIT = @as(c_int, 0x0020);
pub const GL_COMPRESSED_RED_RGTC1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DBB, .hex);
pub const GL_COMPRESSED_SIGNED_RED_RGTC1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DBC, .hex);
pub const GL_COMPRESSED_RG_RGTC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DBD, .hex);
pub const GL_COMPRESSED_SIGNED_RG_RGTC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DBE, .hex);
pub const GL_RG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8227, .hex);
pub const GL_RG_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8228, .hex);
pub const GL_R8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8229, .hex);
pub const GL_R16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x822A, .hex);
pub const GL_RG8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x822B, .hex);
pub const GL_RG16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x822C, .hex);
pub const GL_R16F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x822D, .hex);
pub const GL_R32F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x822E, .hex);
pub const GL_RG16F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x822F, .hex);
pub const GL_RG32F = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8230, .hex);
pub const GL_R8I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8231, .hex);
pub const GL_R8UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8232, .hex);
pub const GL_R16I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8233, .hex);
pub const GL_R16UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8234, .hex);
pub const GL_R32I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8235, .hex);
pub const GL_R32UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8236, .hex);
pub const GL_RG8I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8237, .hex);
pub const GL_RG8UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8238, .hex);
pub const GL_RG16I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8239, .hex);
pub const GL_RG16UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x823A, .hex);
pub const GL_RG32I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x823B, .hex);
pub const GL_RG32UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x823C, .hex);
pub const GL_VERTEX_ARRAY_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x85B5, .hex);
pub const GL_CLAMP_VERTEX_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x891A, .hex);
pub const GL_CLAMP_FRAGMENT_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x891B, .hex);
pub const GL_ALPHA_INTEGER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D97, .hex);
pub const GL_SAMPLER_2D_RECT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B63, .hex);
pub const GL_SAMPLER_2D_RECT_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B64, .hex);
pub const GL_SAMPLER_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DC2, .hex);
pub const GL_INT_SAMPLER_2D_RECT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DCD, .hex);
pub const GL_INT_SAMPLER_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD0, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_2D_RECT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD5, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD8, .hex);
pub const GL_TEXTURE_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C2A, .hex);
pub const GL_MAX_TEXTURE_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C2B, .hex);
pub const GL_TEXTURE_BINDING_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C2C, .hex);
pub const GL_TEXTURE_BUFFER_DATA_STORE_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C2D, .hex);
pub const GL_TEXTURE_RECTANGLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F5, .hex);
pub const GL_TEXTURE_BINDING_RECTANGLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F6, .hex);
pub const GL_PROXY_TEXTURE_RECTANGLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F7, .hex);
pub const GL_MAX_RECTANGLE_TEXTURE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F8, .hex);
pub const GL_R8_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F94, .hex);
pub const GL_RG8_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F95, .hex);
pub const GL_RGB8_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F96, .hex);
pub const GL_RGBA8_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F97, .hex);
pub const GL_R16_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F98, .hex);
pub const GL_RG16_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F99, .hex);
pub const GL_RGB16_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F9A, .hex);
pub const GL_RGBA16_SNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F9B, .hex);
pub const GL_SIGNED_NORMALIZED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F9C, .hex);
pub const GL_PRIMITIVE_RESTART = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F9D, .hex);
pub const GL_PRIMITIVE_RESTART_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F9E, .hex);
pub const GL_COPY_READ_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F36, .hex);
pub const GL_COPY_WRITE_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F37, .hex);
pub const GL_UNIFORM_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A11, .hex);
pub const GL_UNIFORM_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A28, .hex);
pub const GL_UNIFORM_BUFFER_START = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A29, .hex);
pub const GL_UNIFORM_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A2A, .hex);
pub const GL_MAX_VERTEX_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A2B, .hex);
pub const GL_MAX_GEOMETRY_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A2C, .hex);
pub const GL_MAX_FRAGMENT_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A2D, .hex);
pub const GL_MAX_COMBINED_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A2E, .hex);
pub const GL_MAX_UNIFORM_BUFFER_BINDINGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A2F, .hex);
pub const GL_MAX_UNIFORM_BLOCK_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A30, .hex);
pub const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A31, .hex);
pub const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A32, .hex);
pub const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A33, .hex);
pub const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A34, .hex);
pub const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A35, .hex);
pub const GL_ACTIVE_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A36, .hex);
pub const GL_UNIFORM_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A37, .hex);
pub const GL_UNIFORM_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A38, .hex);
pub const GL_UNIFORM_NAME_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A39, .hex);
pub const GL_UNIFORM_BLOCK_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A3A, .hex);
pub const GL_UNIFORM_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A3B, .hex);
pub const GL_UNIFORM_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A3C, .hex);
pub const GL_UNIFORM_MATRIX_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A3D, .hex);
pub const GL_UNIFORM_IS_ROW_MAJOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A3E, .hex);
pub const GL_UNIFORM_BLOCK_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A3F, .hex);
pub const GL_UNIFORM_BLOCK_DATA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A40, .hex);
pub const GL_UNIFORM_BLOCK_NAME_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A41, .hex);
pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A42, .hex);
pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A43, .hex);
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A44, .hex);
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A45, .hex);
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8A46, .hex);
pub const GL_INVALID_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hex);
pub const GL_CONTEXT_CORE_PROFILE_BIT = @as(c_int, 0x00000001);
pub const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = @as(c_int, 0x00000002);
pub const GL_LINES_ADJACENCY = @as(c_int, 0x000A);
pub const GL_LINE_STRIP_ADJACENCY = @as(c_int, 0x000B);
pub const GL_TRIANGLES_ADJACENCY = @as(c_int, 0x000C);
pub const GL_TRIANGLE_STRIP_ADJACENCY = @as(c_int, 0x000D);
pub const GL_PROGRAM_POINT_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8642, .hex);
pub const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C29, .hex);
pub const GL_FRAMEBUFFER_ATTACHMENT_LAYERED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DA7, .hex);
pub const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DA8, .hex);
pub const GL_GEOMETRY_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DD9, .hex);
pub const GL_GEOMETRY_VERTICES_OUT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8916, .hex);
pub const GL_GEOMETRY_INPUT_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8917, .hex);
pub const GL_GEOMETRY_OUTPUT_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8918, .hex);
pub const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DDF, .hex);
pub const GL_MAX_GEOMETRY_OUTPUT_VERTICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DE0, .hex);
pub const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DE1, .hex);
pub const GL_MAX_VERTEX_OUTPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9122, .hex);
pub const GL_MAX_GEOMETRY_INPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9123, .hex);
pub const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9124, .hex);
pub const GL_MAX_FRAGMENT_INPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9125, .hex);
pub const GL_CONTEXT_PROFILE_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9126, .hex);
pub const GL_DEPTH_CLAMP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x864F, .hex);
pub const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E4C, .hex);
pub const GL_FIRST_VERTEX_CONVENTION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E4D, .hex);
pub const GL_LAST_VERTEX_CONVENTION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E4E, .hex);
pub const GL_PROVOKING_VERTEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E4F, .hex);
pub const GL_TEXTURE_CUBE_MAP_SEAMLESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x884F, .hex);
pub const GL_MAX_SERVER_WAIT_TIMEOUT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9111, .hex);
pub const GL_OBJECT_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9112, .hex);
pub const GL_SYNC_CONDITION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9113, .hex);
pub const GL_SYNC_STATUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9114, .hex);
pub const GL_SYNC_FLAGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9115, .hex);
pub const GL_SYNC_FENCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9116, .hex);
pub const GL_SYNC_GPU_COMMANDS_COMPLETE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9117, .hex);
pub const GL_UNSIGNALED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9118, .hex);
pub const GL_SIGNALED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9119, .hex);
pub const GL_ALREADY_SIGNALED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x911A, .hex);
pub const GL_TIMEOUT_EXPIRED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x911B, .hex);
pub const GL_CONDITION_SATISFIED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x911C, .hex);
pub const GL_WAIT_FAILED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x911D, .hex);
pub const GL_TIMEOUT_IGNORED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFFFFFFFFFF, .hex);
pub const GL_SYNC_FLUSH_COMMANDS_BIT = @as(c_int, 0x00000001);
pub const GL_SAMPLE_POSITION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E50, .hex);
pub const GL_SAMPLE_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E51, .hex);
pub const GL_SAMPLE_MASK_VALUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E52, .hex);
pub const GL_MAX_SAMPLE_MASK_WORDS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E59, .hex);
pub const GL_TEXTURE_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9100, .hex);
pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9101, .hex);
pub const GL_TEXTURE_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9102, .hex);
pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9103, .hex);
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9104, .hex);
pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9105, .hex);
pub const GL_TEXTURE_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9106, .hex);
pub const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9107, .hex);
pub const GL_SAMPLER_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9108, .hex);
pub const GL_INT_SAMPLER_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9109, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x910A, .hex);
pub const GL_SAMPLER_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x910B, .hex);
pub const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x910C, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x910D, .hex);
pub const GL_MAX_COLOR_TEXTURE_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x910E, .hex);
pub const GL_MAX_DEPTH_TEXTURE_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x910F, .hex);
pub const GL_MAX_INTEGER_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9110, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_DIVISOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88FE, .hex);
pub const GL_SRC1_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88F9, .hex);
pub const GL_ONE_MINUS_SRC1_COLOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88FA, .hex);
pub const GL_ONE_MINUS_SRC1_ALPHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88FB, .hex);
pub const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88FC, .hex);
pub const GL_ANY_SAMPLES_PASSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C2F, .hex);
pub const GL_SAMPLER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8919, .hex);
pub const GL_RGB10_A2UI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x906F, .hex);
pub const GL_TEXTURE_SWIZZLE_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E42, .hex);
pub const GL_TEXTURE_SWIZZLE_G = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E43, .hex);
pub const GL_TEXTURE_SWIZZLE_B = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E44, .hex);
pub const GL_TEXTURE_SWIZZLE_A = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E45, .hex);
pub const GL_TEXTURE_SWIZZLE_RGBA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E46, .hex);
pub const GL_TIME_ELAPSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x88BF, .hex);
pub const GL_TIMESTAMP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E28, .hex);
pub const GL_INT_2_10_10_10_REV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D9F, .hex);
pub const GL_SAMPLE_SHADING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C36, .hex);
pub const GL_MIN_SAMPLE_SHADING_VALUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C37, .hex);
pub const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E5E, .hex);
pub const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E5F, .hex);
pub const GL_TEXTURE_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9009, .hex);
pub const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x900A, .hex);
pub const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x900B, .hex);
pub const GL_SAMPLER_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x900C, .hex);
pub const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x900D, .hex);
pub const GL_INT_SAMPLER_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x900E, .hex);
pub const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x900F, .hex);
pub const GL_DRAW_INDIRECT_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F3F, .hex);
pub const GL_DRAW_INDIRECT_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F43, .hex);
pub const GL_GEOMETRY_SHADER_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x887F, .hex);
pub const GL_MAX_GEOMETRY_SHADER_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E5A, .hex);
pub const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E5B, .hex);
pub const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E5C, .hex);
pub const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E5D, .hex);
pub const GL_MAX_VERTEX_STREAMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E71, .hex);
pub const GL_DOUBLE_VEC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8FFC, .hex);
pub const GL_DOUBLE_VEC3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8FFD, .hex);
pub const GL_DOUBLE_VEC4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8FFE, .hex);
pub const GL_DOUBLE_MAT2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F46, .hex);
pub const GL_DOUBLE_MAT3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F47, .hex);
pub const GL_DOUBLE_MAT4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F48, .hex);
pub const GL_DOUBLE_MAT2x3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F49, .hex);
pub const GL_DOUBLE_MAT2x4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F4A, .hex);
pub const GL_DOUBLE_MAT3x2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F4B, .hex);
pub const GL_DOUBLE_MAT3x4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F4C, .hex);
pub const GL_DOUBLE_MAT4x2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F4D, .hex);
pub const GL_DOUBLE_MAT4x3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F4E, .hex);
pub const GL_ACTIVE_SUBROUTINES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DE5, .hex);
pub const GL_ACTIVE_SUBROUTINE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DE6, .hex);
pub const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E47, .hex);
pub const GL_ACTIVE_SUBROUTINE_MAX_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E48, .hex);
pub const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E49, .hex);
pub const GL_MAX_SUBROUTINES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DE7, .hex);
pub const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DE8, .hex);
pub const GL_NUM_COMPATIBLE_SUBROUTINES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E4A, .hex);
pub const GL_COMPATIBLE_SUBROUTINES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E4B, .hex);
pub const GL_PATCHES = @as(c_int, 0x000E);
pub const GL_PATCH_VERTICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E72, .hex);
pub const GL_PATCH_DEFAULT_INNER_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E73, .hex);
pub const GL_PATCH_DEFAULT_OUTER_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E74, .hex);
pub const GL_TESS_CONTROL_OUTPUT_VERTICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E75, .hex);
pub const GL_TESS_GEN_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E76, .hex);
pub const GL_TESS_GEN_SPACING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E77, .hex);
pub const GL_TESS_GEN_VERTEX_ORDER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E78, .hex);
pub const GL_TESS_GEN_POINT_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E79, .hex);
pub const GL_ISOLINES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E7A, .hex);
pub const GL_FRACTIONAL_ODD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E7B, .hex);
pub const GL_FRACTIONAL_EVEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E7C, .hex);
pub const GL_MAX_PATCH_VERTICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E7D, .hex);
pub const GL_MAX_TESS_GEN_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E7E, .hex);
pub const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E7F, .hex);
pub const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E80, .hex);
pub const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E81, .hex);
pub const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E82, .hex);
pub const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E83, .hex);
pub const GL_MAX_TESS_PATCH_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E84, .hex);
pub const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E85, .hex);
pub const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E86, .hex);
pub const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E89, .hex);
pub const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E8A, .hex);
pub const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x886C, .hex);
pub const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x886D, .hex);
pub const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E1E, .hex);
pub const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E1F, .hex);
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F0, .hex);
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84F1, .hex);
pub const GL_TESS_EVALUATION_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E87, .hex);
pub const GL_TESS_CONTROL_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E88, .hex);
pub const GL_TRANSFORM_FEEDBACK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E22, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E23, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E24, .hex);
pub const GL_TRANSFORM_FEEDBACK_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E25, .hex);
pub const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E70, .hex);
pub const GL_FIXED = @as(c_int, 0x140C);
pub const GL_IMPLEMENTATION_COLOR_READ_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B9A, .hex);
pub const GL_IMPLEMENTATION_COLOR_READ_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8B9B, .hex);
pub const GL_LOW_FLOAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF0, .hex);
pub const GL_MEDIUM_FLOAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF1, .hex);
pub const GL_HIGH_FLOAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF2, .hex);
pub const GL_LOW_INT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF3, .hex);
pub const GL_MEDIUM_INT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF4, .hex);
pub const GL_HIGH_INT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF5, .hex);
pub const GL_SHADER_COMPILER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DFA, .hex);
pub const GL_SHADER_BINARY_FORMATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF8, .hex);
pub const GL_NUM_SHADER_BINARY_FORMATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DF9, .hex);
pub const GL_MAX_VERTEX_UNIFORM_VECTORS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DFB, .hex);
pub const GL_MAX_VARYING_VECTORS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DFC, .hex);
pub const GL_MAX_FRAGMENT_UNIFORM_VECTORS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8DFD, .hex);
pub const GL_RGB565 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D62, .hex);
pub const GL_PROGRAM_BINARY_RETRIEVABLE_HINT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8257, .hex);
pub const GL_PROGRAM_BINARY_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8741, .hex);
pub const GL_NUM_PROGRAM_BINARY_FORMATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x87FE, .hex);
pub const GL_PROGRAM_BINARY_FORMATS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x87FF, .hex);
pub const GL_VERTEX_SHADER_BIT = @as(c_int, 0x00000001);
pub const GL_FRAGMENT_SHADER_BIT = @as(c_int, 0x00000002);
pub const GL_GEOMETRY_SHADER_BIT = @as(c_int, 0x00000004);
pub const GL_TESS_CONTROL_SHADER_BIT = @as(c_int, 0x00000008);
pub const GL_TESS_EVALUATION_SHADER_BIT = @as(c_int, 0x00000010);
pub const GL_ALL_SHADER_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hex);
pub const GL_PROGRAM_SEPARABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8258, .hex);
pub const GL_ACTIVE_PROGRAM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8259, .hex);
pub const GL_PROGRAM_PIPELINE_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x825A, .hex);
pub const GL_MAX_VIEWPORTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x825B, .hex);
pub const GL_VIEWPORT_SUBPIXEL_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x825C, .hex);
pub const GL_VIEWPORT_BOUNDS_RANGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x825D, .hex);
pub const GL_LAYER_PROVOKING_VERTEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x825E, .hex);
pub const GL_VIEWPORT_INDEX_PROVOKING_VERTEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x825F, .hex);
pub const GL_UNDEFINED_VERTEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8260, .hex);
pub const GL_COPY_READ_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F36, .hex);
pub const GL_COPY_WRITE_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F37, .hex);
pub const GL_TRANSFORM_FEEDBACK_ACTIVE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E24, .hex);
pub const GL_TRANSFORM_FEEDBACK_PAUSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E23, .hex);
pub const GL_UNPACK_COMPRESSED_BLOCK_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9127, .hex);
pub const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9128, .hex);
pub const GL_UNPACK_COMPRESSED_BLOCK_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9129, .hex);
pub const GL_UNPACK_COMPRESSED_BLOCK_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x912A, .hex);
pub const GL_PACK_COMPRESSED_BLOCK_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x912B, .hex);
pub const GL_PACK_COMPRESSED_BLOCK_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x912C, .hex);
pub const GL_PACK_COMPRESSED_BLOCK_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x912D, .hex);
pub const GL_PACK_COMPRESSED_BLOCK_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x912E, .hex);
pub const GL_NUM_SAMPLE_COUNTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9380, .hex);
pub const GL_MIN_MAP_BUFFER_ALIGNMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90BC, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C0, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C1, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_START = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C2, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C3, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C4, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C5, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C6, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C7, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C8, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92C9, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92CA, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92CB, .hex);
pub const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92CC, .hex);
pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92CD, .hex);
pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92CE, .hex);
pub const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92CF, .hex);
pub const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D0, .hex);
pub const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D1, .hex);
pub const GL_MAX_VERTEX_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D2, .hex);
pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D3, .hex);
pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D4, .hex);
pub const GL_MAX_GEOMETRY_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D5, .hex);
pub const GL_MAX_FRAGMENT_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D6, .hex);
pub const GL_MAX_COMBINED_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D7, .hex);
pub const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D8, .hex);
pub const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92DC, .hex);
pub const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92D9, .hex);
pub const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92DA, .hex);
pub const GL_UNSIGNED_INT_ATOMIC_COUNTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92DB, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = @as(c_int, 0x00000001);
pub const GL_ELEMENT_ARRAY_BARRIER_BIT = @as(c_int, 0x00000002);
pub const GL_UNIFORM_BARRIER_BIT = @as(c_int, 0x00000004);
pub const GL_TEXTURE_FETCH_BARRIER_BIT = @as(c_int, 0x00000008);
pub const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = @as(c_int, 0x00000020);
pub const GL_COMMAND_BARRIER_BIT = @as(c_int, 0x00000040);
pub const GL_PIXEL_BUFFER_BARRIER_BIT = @as(c_int, 0x00000080);
pub const GL_TEXTURE_UPDATE_BARRIER_BIT = @as(c_int, 0x00000100);
pub const GL_BUFFER_UPDATE_BARRIER_BIT = @as(c_int, 0x00000200);
pub const GL_FRAMEBUFFER_BARRIER_BIT = @as(c_int, 0x00000400);
pub const GL_TRANSFORM_FEEDBACK_BARRIER_BIT = @as(c_int, 0x00000800);
pub const GL_ATOMIC_COUNTER_BARRIER_BIT = @as(c_int, 0x00001000);
pub const GL_ALL_BARRIER_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hex);
pub const GL_MAX_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F38, .hex);
pub const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F39, .hex);
pub const GL_IMAGE_BINDING_NAME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F3A, .hex);
pub const GL_IMAGE_BINDING_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F3B, .hex);
pub const GL_IMAGE_BINDING_LAYERED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F3C, .hex);
pub const GL_IMAGE_BINDING_LAYER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F3D, .hex);
pub const GL_IMAGE_BINDING_ACCESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F3E, .hex);
pub const GL_IMAGE_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x904C, .hex);
pub const GL_IMAGE_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x904D, .hex);
pub const GL_IMAGE_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x904E, .hex);
pub const GL_IMAGE_2D_RECT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x904F, .hex);
pub const GL_IMAGE_CUBE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9050, .hex);
pub const GL_IMAGE_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9051, .hex);
pub const GL_IMAGE_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9052, .hex);
pub const GL_IMAGE_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9053, .hex);
pub const GL_IMAGE_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9054, .hex);
pub const GL_IMAGE_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9055, .hex);
pub const GL_IMAGE_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9056, .hex);
pub const GL_INT_IMAGE_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9057, .hex);
pub const GL_INT_IMAGE_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9058, .hex);
pub const GL_INT_IMAGE_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9059, .hex);
pub const GL_INT_IMAGE_2D_RECT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x905A, .hex);
pub const GL_INT_IMAGE_CUBE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x905B, .hex);
pub const GL_INT_IMAGE_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x905C, .hex);
pub const GL_INT_IMAGE_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x905D, .hex);
pub const GL_INT_IMAGE_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x905E, .hex);
pub const GL_INT_IMAGE_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x905F, .hex);
pub const GL_INT_IMAGE_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9060, .hex);
pub const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9061, .hex);
pub const GL_UNSIGNED_INT_IMAGE_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9062, .hex);
pub const GL_UNSIGNED_INT_IMAGE_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9063, .hex);
pub const GL_UNSIGNED_INT_IMAGE_3D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9064, .hex);
pub const GL_UNSIGNED_INT_IMAGE_2D_RECT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9065, .hex);
pub const GL_UNSIGNED_INT_IMAGE_CUBE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9066, .hex);
pub const GL_UNSIGNED_INT_IMAGE_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9067, .hex);
pub const GL_UNSIGNED_INT_IMAGE_1D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9068, .hex);
pub const GL_UNSIGNED_INT_IMAGE_2D_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9069, .hex);
pub const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x906A, .hex);
pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x906B, .hex);
pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x906C, .hex);
pub const GL_MAX_IMAGE_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x906D, .hex);
pub const GL_IMAGE_BINDING_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x906E, .hex);
pub const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90C7, .hex);
pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90C8, .hex);
pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90C9, .hex);
pub const GL_MAX_VERTEX_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90CA, .hex);
pub const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90CB, .hex);
pub const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90CC, .hex);
pub const GL_MAX_GEOMETRY_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90CD, .hex);
pub const GL_MAX_FRAGMENT_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90CE, .hex);
pub const GL_MAX_COMBINED_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90CF, .hex);
pub const GL_COMPRESSED_RGBA_BPTC_UNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E8C, .hex);
pub const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E8D, .hex);
pub const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E8E, .hex);
pub const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E8F, .hex);
pub const GL_TEXTURE_IMMUTABLE_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x912F, .hex);
pub const GL_NUM_SHADING_LANGUAGE_VERSIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E9, .hex);
pub const GL_VERTEX_ATTRIB_ARRAY_LONG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x874E, .hex);
pub const GL_COMPRESSED_RGB8_ETC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9274, .hex);
pub const GL_COMPRESSED_SRGB8_ETC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9275, .hex);
pub const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9276, .hex);
pub const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9277, .hex);
pub const GL_COMPRESSED_RGBA8_ETC2_EAC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9278, .hex);
pub const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9279, .hex);
pub const GL_COMPRESSED_R11_EAC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9270, .hex);
pub const GL_COMPRESSED_SIGNED_R11_EAC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9271, .hex);
pub const GL_COMPRESSED_RG11_EAC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9272, .hex);
pub const GL_COMPRESSED_SIGNED_RG11_EAC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9273, .hex);
pub const GL_PRIMITIVE_RESTART_FIXED_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D69, .hex);
pub const GL_ANY_SAMPLES_PASSED_CONSERVATIVE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D6A, .hex);
pub const GL_MAX_ELEMENT_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8D6B, .hex);
pub const GL_COMPUTE_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x91B9, .hex);
pub const GL_MAX_COMPUTE_UNIFORM_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x91BB, .hex);
pub const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x91BC, .hex);
pub const GL_MAX_COMPUTE_IMAGE_UNIFORMS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x91BD, .hex);
pub const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8262, .hex);
pub const GL_MAX_COMPUTE_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8263, .hex);
pub const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8264, .hex);
pub const GL_MAX_COMPUTE_ATOMIC_COUNTERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8265, .hex);
pub const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8266, .hex);
pub const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90EB, .hex);
pub const GL_MAX_COMPUTE_WORK_GROUP_COUNT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x91BE, .hex);
pub const GL_MAX_COMPUTE_WORK_GROUP_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x91BF, .hex);
pub const GL_COMPUTE_WORK_GROUP_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8267, .hex);
pub const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90EC, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90ED, .hex);
pub const GL_DISPATCH_INDIRECT_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90EE, .hex);
pub const GL_DISPATCH_INDIRECT_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90EF, .hex);
pub const GL_COMPUTE_SHADER_BIT = @as(c_int, 0x00000020);
pub const GL_DEBUG_OUTPUT_SYNCHRONOUS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8242, .hex);
pub const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8243, .hex);
pub const GL_DEBUG_CALLBACK_FUNCTION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8244, .hex);
pub const GL_DEBUG_CALLBACK_USER_PARAM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8245, .hex);
pub const GL_DEBUG_SOURCE_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8246, .hex);
pub const GL_DEBUG_SOURCE_WINDOW_SYSTEM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8247, .hex);
pub const GL_DEBUG_SOURCE_SHADER_COMPILER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8248, .hex);
pub const GL_DEBUG_SOURCE_THIRD_PARTY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8249, .hex);
pub const GL_DEBUG_SOURCE_APPLICATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x824A, .hex);
pub const GL_DEBUG_SOURCE_OTHER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x824B, .hex);
pub const GL_DEBUG_TYPE_ERROR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x824C, .hex);
pub const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x824D, .hex);
pub const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x824E, .hex);
pub const GL_DEBUG_TYPE_PORTABILITY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x824F, .hex);
pub const GL_DEBUG_TYPE_PERFORMANCE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8250, .hex);
pub const GL_DEBUG_TYPE_OTHER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8251, .hex);
pub const GL_MAX_DEBUG_MESSAGE_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9143, .hex);
pub const GL_MAX_DEBUG_LOGGED_MESSAGES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9144, .hex);
pub const GL_DEBUG_LOGGED_MESSAGES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9145, .hex);
pub const GL_DEBUG_SEVERITY_HIGH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9146, .hex);
pub const GL_DEBUG_SEVERITY_MEDIUM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9147, .hex);
pub const GL_DEBUG_SEVERITY_LOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9148, .hex);
pub const GL_DEBUG_TYPE_MARKER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8268, .hex);
pub const GL_DEBUG_TYPE_PUSH_GROUP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8269, .hex);
pub const GL_DEBUG_TYPE_POP_GROUP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x826A, .hex);
pub const GL_DEBUG_SEVERITY_NOTIFICATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x826B, .hex);
pub const GL_MAX_DEBUG_GROUP_STACK_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x826C, .hex);
pub const GL_DEBUG_GROUP_STACK_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x826D, .hex);
pub const GL_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E0, .hex);
pub const GL_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E1, .hex);
pub const GL_PROGRAM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E2, .hex);
pub const GL_QUERY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E3, .hex);
pub const GL_PROGRAM_PIPELINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E4, .hex);
pub const GL_SAMPLER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E6, .hex);
pub const GL_MAX_LABEL_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E8, .hex);
pub const GL_DEBUG_OUTPUT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E0, .hex);
pub const GL_CONTEXT_FLAG_DEBUG_BIT = @as(c_int, 0x00000002);
pub const GL_MAX_UNIFORM_LOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x826E, .hex);
pub const GL_FRAMEBUFFER_DEFAULT_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9310, .hex);
pub const GL_FRAMEBUFFER_DEFAULT_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9311, .hex);
pub const GL_FRAMEBUFFER_DEFAULT_LAYERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9312, .hex);
pub const GL_FRAMEBUFFER_DEFAULT_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9313, .hex);
pub const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9314, .hex);
pub const GL_MAX_FRAMEBUFFER_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9315, .hex);
pub const GL_MAX_FRAMEBUFFER_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9316, .hex);
pub const GL_MAX_FRAMEBUFFER_LAYERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9317, .hex);
pub const GL_MAX_FRAMEBUFFER_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9318, .hex);
pub const GL_INTERNALFORMAT_SUPPORTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x826F, .hex);
pub const GL_INTERNALFORMAT_PREFERRED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8270, .hex);
pub const GL_INTERNALFORMAT_RED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8271, .hex);
pub const GL_INTERNALFORMAT_GREEN_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8272, .hex);
pub const GL_INTERNALFORMAT_BLUE_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8273, .hex);
pub const GL_INTERNALFORMAT_ALPHA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8274, .hex);
pub const GL_INTERNALFORMAT_DEPTH_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8275, .hex);
pub const GL_INTERNALFORMAT_STENCIL_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8276, .hex);
pub const GL_INTERNALFORMAT_SHARED_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8277, .hex);
pub const GL_INTERNALFORMAT_RED_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8278, .hex);
pub const GL_INTERNALFORMAT_GREEN_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8279, .hex);
pub const GL_INTERNALFORMAT_BLUE_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x827A, .hex);
pub const GL_INTERNALFORMAT_ALPHA_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x827B, .hex);
pub const GL_INTERNALFORMAT_DEPTH_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x827C, .hex);
pub const GL_INTERNALFORMAT_STENCIL_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x827D, .hex);
pub const GL_MAX_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x827E, .hex);
pub const GL_MAX_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x827F, .hex);
pub const GL_MAX_DEPTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8280, .hex);
pub const GL_MAX_LAYERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8281, .hex);
pub const GL_MAX_COMBINED_DIMENSIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8282, .hex);
pub const GL_COLOR_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8283, .hex);
pub const GL_DEPTH_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8284, .hex);
pub const GL_STENCIL_COMPONENTS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8285, .hex);
pub const GL_COLOR_RENDERABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8286, .hex);
pub const GL_DEPTH_RENDERABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8287, .hex);
pub const GL_STENCIL_RENDERABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8288, .hex);
pub const GL_FRAMEBUFFER_RENDERABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8289, .hex);
pub const GL_FRAMEBUFFER_RENDERABLE_LAYERED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828A, .hex);
pub const GL_FRAMEBUFFER_BLEND = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828B, .hex);
pub const GL_READ_PIXELS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828C, .hex);
pub const GL_READ_PIXELS_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828D, .hex);
pub const GL_READ_PIXELS_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828E, .hex);
pub const GL_TEXTURE_IMAGE_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x828F, .hex);
pub const GL_TEXTURE_IMAGE_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8290, .hex);
pub const GL_GET_TEXTURE_IMAGE_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8291, .hex);
pub const GL_GET_TEXTURE_IMAGE_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8292, .hex);
pub const GL_MIPMAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8293, .hex);
pub const GL_MANUAL_GENERATE_MIPMAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8294, .hex);
pub const GL_AUTO_GENERATE_MIPMAP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8295, .hex);
pub const GL_COLOR_ENCODING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8296, .hex);
pub const GL_SRGB_READ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8297, .hex);
pub const GL_SRGB_WRITE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8298, .hex);
pub const GL_FILTER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x829A, .hex);
pub const GL_VERTEX_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x829B, .hex);
pub const GL_TESS_CONTROL_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x829C, .hex);
pub const GL_TESS_EVALUATION_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x829D, .hex);
pub const GL_GEOMETRY_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x829E, .hex);
pub const GL_FRAGMENT_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x829F, .hex);
pub const GL_COMPUTE_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A0, .hex);
pub const GL_TEXTURE_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A1, .hex);
pub const GL_TEXTURE_GATHER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A2, .hex);
pub const GL_TEXTURE_GATHER_SHADOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A3, .hex);
pub const GL_SHADER_IMAGE_LOAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A4, .hex);
pub const GL_SHADER_IMAGE_STORE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A5, .hex);
pub const GL_SHADER_IMAGE_ATOMIC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A6, .hex);
pub const GL_IMAGE_TEXEL_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A7, .hex);
pub const GL_IMAGE_COMPATIBILITY_CLASS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A8, .hex);
pub const GL_IMAGE_PIXEL_FORMAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82A9, .hex);
pub const GL_IMAGE_PIXEL_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82AA, .hex);
pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82AC, .hex);
pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82AD, .hex);
pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82AE, .hex);
pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82AF, .hex);
pub const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B1, .hex);
pub const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B2, .hex);
pub const GL_TEXTURE_COMPRESSED_BLOCK_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B3, .hex);
pub const GL_CLEAR_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B4, .hex);
pub const GL_TEXTURE_VIEW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B5, .hex);
pub const GL_VIEW_COMPATIBILITY_CLASS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B6, .hex);
pub const GL_FULL_SUPPORT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B7, .hex);
pub const GL_CAVEAT_SUPPORT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B8, .hex);
pub const GL_IMAGE_CLASS_4_X_32 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82B9, .hex);
pub const GL_IMAGE_CLASS_2_X_32 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82BA, .hex);
pub const GL_IMAGE_CLASS_1_X_32 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82BB, .hex);
pub const GL_IMAGE_CLASS_4_X_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82BC, .hex);
pub const GL_IMAGE_CLASS_2_X_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82BD, .hex);
pub const GL_IMAGE_CLASS_1_X_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82BE, .hex);
pub const GL_IMAGE_CLASS_4_X_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82BF, .hex);
pub const GL_IMAGE_CLASS_2_X_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C0, .hex);
pub const GL_IMAGE_CLASS_1_X_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C1, .hex);
pub const GL_IMAGE_CLASS_11_11_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C2, .hex);
pub const GL_IMAGE_CLASS_10_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C3, .hex);
pub const GL_VIEW_CLASS_128_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C4, .hex);
pub const GL_VIEW_CLASS_96_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C5, .hex);
pub const GL_VIEW_CLASS_64_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C6, .hex);
pub const GL_VIEW_CLASS_48_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C7, .hex);
pub const GL_VIEW_CLASS_32_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C8, .hex);
pub const GL_VIEW_CLASS_24_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82C9, .hex);
pub const GL_VIEW_CLASS_16_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82CA, .hex);
pub const GL_VIEW_CLASS_8_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82CB, .hex);
pub const GL_VIEW_CLASS_S3TC_DXT1_RGB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82CC, .hex);
pub const GL_VIEW_CLASS_S3TC_DXT1_RGBA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82CD, .hex);
pub const GL_VIEW_CLASS_S3TC_DXT3_RGBA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82CE, .hex);
pub const GL_VIEW_CLASS_S3TC_DXT5_RGBA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82CF, .hex);
pub const GL_VIEW_CLASS_RGTC1_RED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D0, .hex);
pub const GL_VIEW_CLASS_RGTC2_RG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D1, .hex);
pub const GL_VIEW_CLASS_BPTC_UNORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D2, .hex);
pub const GL_VIEW_CLASS_BPTC_FLOAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D3, .hex);
pub const GL_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E1, .hex);
pub const GL_UNIFORM_BLOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E2, .hex);
pub const GL_PROGRAM_INPUT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E3, .hex);
pub const GL_PROGRAM_OUTPUT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E4, .hex);
pub const GL_BUFFER_VARIABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E5, .hex);
pub const GL_SHADER_STORAGE_BLOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E6, .hex);
pub const GL_VERTEX_SUBROUTINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E8, .hex);
pub const GL_TESS_CONTROL_SUBROUTINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E9, .hex);
pub const GL_TESS_EVALUATION_SUBROUTINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92EA, .hex);
pub const GL_GEOMETRY_SUBROUTINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92EB, .hex);
pub const GL_FRAGMENT_SUBROUTINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92EC, .hex);
pub const GL_COMPUTE_SUBROUTINE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92ED, .hex);
pub const GL_VERTEX_SUBROUTINE_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92EE, .hex);
pub const GL_TESS_CONTROL_SUBROUTINE_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92EF, .hex);
pub const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F0, .hex);
pub const GL_GEOMETRY_SUBROUTINE_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F1, .hex);
pub const GL_FRAGMENT_SUBROUTINE_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F2, .hex);
pub const GL_COMPUTE_SUBROUTINE_UNIFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F3, .hex);
pub const GL_TRANSFORM_FEEDBACK_VARYING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F4, .hex);
pub const GL_ACTIVE_RESOURCES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F5, .hex);
pub const GL_MAX_NAME_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F6, .hex);
pub const GL_MAX_NUM_ACTIVE_VARIABLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F7, .hex);
pub const GL_MAX_NUM_COMPATIBLE_SUBROUTINES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F8, .hex);
pub const GL_NAME_LENGTH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92F9, .hex);
pub const GL_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92FA, .hex);
pub const GL_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92FB, .hex);
pub const GL_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92FC, .hex);
pub const GL_BLOCK_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92FD, .hex);
pub const GL_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92FE, .hex);
pub const GL_MATRIX_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92FF, .hex);
pub const GL_IS_ROW_MAJOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9300, .hex);
pub const GL_ATOMIC_COUNTER_BUFFER_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9301, .hex);
pub const GL_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9302, .hex);
pub const GL_BUFFER_DATA_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9303, .hex);
pub const GL_NUM_ACTIVE_VARIABLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9304, .hex);
pub const GL_ACTIVE_VARIABLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9305, .hex);
pub const GL_REFERENCED_BY_VERTEX_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9306, .hex);
pub const GL_REFERENCED_BY_TESS_CONTROL_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9307, .hex);
pub const GL_REFERENCED_BY_TESS_EVALUATION_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9308, .hex);
pub const GL_REFERENCED_BY_GEOMETRY_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9309, .hex);
pub const GL_REFERENCED_BY_FRAGMENT_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x930A, .hex);
pub const GL_REFERENCED_BY_COMPUTE_SHADER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x930B, .hex);
pub const GL_TOP_LEVEL_ARRAY_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x930C, .hex);
pub const GL_TOP_LEVEL_ARRAY_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x930D, .hex);
pub const GL_LOCATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x930E, .hex);
pub const GL_LOCATION_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x930F, .hex);
pub const GL_IS_PER_PATCH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x92E7, .hex);
pub const GL_SHADER_STORAGE_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D2, .hex);
pub const GL_SHADER_STORAGE_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D3, .hex);
pub const GL_SHADER_STORAGE_BUFFER_START = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D4, .hex);
pub const GL_SHADER_STORAGE_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D5, .hex);
pub const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D6, .hex);
pub const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D7, .hex);
pub const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D8, .hex);
pub const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90D9, .hex);
pub const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90DA, .hex);
pub const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90DB, .hex);
pub const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90DC, .hex);
pub const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90DD, .hex);
pub const GL_MAX_SHADER_STORAGE_BLOCK_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90DE, .hex);
pub const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90DF, .hex);
pub const GL_SHADER_STORAGE_BARRIER_BIT = @as(c_int, 0x00002000);
pub const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F39, .hex);
pub const GL_DEPTH_STENCIL_TEXTURE_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x90EA, .hex);
pub const GL_TEXTURE_BUFFER_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x919D, .hex);
pub const GL_TEXTURE_BUFFER_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x919E, .hex);
pub const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x919F, .hex);
pub const GL_TEXTURE_VIEW_MIN_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82DB, .hex);
pub const GL_TEXTURE_VIEW_NUM_LEVELS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82DC, .hex);
pub const GL_TEXTURE_VIEW_MIN_LAYER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82DD, .hex);
pub const GL_TEXTURE_VIEW_NUM_LAYERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82DE, .hex);
pub const GL_TEXTURE_IMMUTABLE_LEVELS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82DF, .hex);
pub const GL_VERTEX_ATTRIB_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D4, .hex);
pub const GL_VERTEX_ATTRIB_RELATIVE_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D5, .hex);
pub const GL_VERTEX_BINDING_DIVISOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D6, .hex);
pub const GL_VERTEX_BINDING_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D7, .hex);
pub const GL_VERTEX_BINDING_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D8, .hex);
pub const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82D9, .hex);
pub const GL_MAX_VERTEX_ATTRIB_BINDINGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82DA, .hex);
pub const GL_VERTEX_BINDING_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8F4F, .hex);
pub const GL_DISPLAY_LIST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E7, .hex);
pub const GL_MAX_VERTEX_ATTRIB_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82E5, .hex);
pub const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8221, .hex);
pub const GL_TEXTURE_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8C2A, .hex);
pub const GL_MAP_PERSISTENT_BIT = @as(c_int, 0x0040);
pub const GL_MAP_COHERENT_BIT = @as(c_int, 0x0080);
pub const GL_DYNAMIC_STORAGE_BIT = @as(c_int, 0x0100);
pub const GL_CLIENT_STORAGE_BIT = @as(c_int, 0x0200);
pub const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = @as(c_int, 0x00004000);
pub const GL_BUFFER_IMMUTABLE_STORAGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x821F, .hex);
pub const GL_BUFFER_STORAGE_FLAGS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8220, .hex);
pub const GL_CLEAR_TEXTURE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9365, .hex);
pub const GL_LOCATION_COMPONENT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x934A, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x934B, .hex);
pub const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x934C, .hex);
pub const GL_QUERY_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9192, .hex);
pub const GL_QUERY_BUFFER_BARRIER_BIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00008000, .hex);
pub const GL_QUERY_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9193, .hex);
pub const GL_QUERY_RESULT_NO_WAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9194, .hex);
pub const GL_MIRROR_CLAMP_TO_EDGE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8743, .hex);
pub const GL_CONTEXT_LOST = @as(c_int, 0x0507);
pub const GL_NEGATIVE_ONE_TO_ONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x935E, .hex);
pub const GL_ZERO_TO_ONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x935F, .hex);
pub const GL_CLIP_ORIGIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x935C, .hex);
pub const GL_CLIP_DEPTH_MODE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x935D, .hex);
pub const GL_QUERY_WAIT_INVERTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E17, .hex);
pub const GL_QUERY_NO_WAIT_INVERTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E18, .hex);
pub const GL_QUERY_BY_REGION_WAIT_INVERTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E19, .hex);
pub const GL_QUERY_BY_REGION_NO_WAIT_INVERTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E1A, .hex);
pub const GL_MAX_CULL_DISTANCES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F9, .hex);
pub const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82FA, .hex);
pub const GL_TEXTURE_TARGET = @as(c_int, 0x1006);
pub const GL_QUERY_TARGET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82EA, .hex);
pub const GL_GUILTY_CONTEXT_RESET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8253, .hex);
pub const GL_INNOCENT_CONTEXT_RESET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8254, .hex);
pub const GL_UNKNOWN_CONTEXT_RESET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8255, .hex);
pub const GL_RESET_NOTIFICATION_STRATEGY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8256, .hex);
pub const GL_LOSE_CONTEXT_ON_RESET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8252, .hex);
pub const GL_NO_RESET_NOTIFICATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8261, .hex);
pub const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT = @as(c_int, 0x00000004);
pub const GL_COLOR_TABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80D0, .hex);
pub const GL_POST_CONVOLUTION_COLOR_TABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80D1, .hex);
pub const GL_POST_COLOR_MATRIX_COLOR_TABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80D2, .hex);
pub const GL_PROXY_COLOR_TABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80D3, .hex);
pub const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80D4, .hex);
pub const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80D5, .hex);
pub const GL_CONVOLUTION_1D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8010, .hex);
pub const GL_CONVOLUTION_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8011, .hex);
pub const GL_SEPARABLE_2D = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8012, .hex);
pub const GL_HISTOGRAM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8024, .hex);
pub const GL_PROXY_HISTOGRAM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8025, .hex);
pub const GL_MINMAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x802E, .hex);
pub const GL_CONTEXT_RELEASE_BEHAVIOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82FB, .hex);
pub const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82FC, .hex);
pub const GL_SHADER_BINARY_FORMAT_SPIR_V = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9551, .hex);
pub const GL_SPIR_V_BINARY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9552, .hex);
pub const GL_PARAMETER_BUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80EE, .hex);
pub const GL_PARAMETER_BUFFER_BINDING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80EF, .hex);
pub const GL_CONTEXT_FLAG_NO_ERROR_BIT = @as(c_int, 0x00000008);
pub const GL_VERTICES_SUBMITTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82EE, .hex);
pub const GL_PRIMITIVES_SUBMITTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82EF, .hex);
pub const GL_VERTEX_SHADER_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F0, .hex);
pub const GL_TESS_CONTROL_SHADER_PATCHES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F1, .hex);
pub const GL_TESS_EVALUATION_SHADER_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F2, .hex);
pub const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F3, .hex);
pub const GL_FRAGMENT_SHADER_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F4, .hex);
pub const GL_COMPUTE_SHADER_INVOCATIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F5, .hex);
pub const GL_CLIPPING_INPUT_PRIMITIVES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F6, .hex);
pub const GL_CLIPPING_OUTPUT_PRIMITIVES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82F7, .hex);
pub const GL_POLYGON_OFFSET_CLAMP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8E1B, .hex);
pub const GL_SPIR_V_EXTENSIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9553, .hex);
pub const GL_NUM_SPIR_V_EXTENSIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x9554, .hex);
pub const GL_TEXTURE_MAX_ANISOTROPY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84FE, .hex);
pub const GL_MAX_TEXTURE_MAX_ANISOTROPY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x84FF, .hex);
pub const GL_TRANSFORM_FEEDBACK_OVERFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82EC, .hex);
pub const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x82ED, .hex);
pub const GL_VERSION_1_0 = @as(c_int, 1);
pub inline fn glCullFace(arg_1: GLenum) void {
    return glad_glCullFace.?(arg_1);
}
pub inline fn glFrontFace(arg_2: GLenum) void {
    return glad_glFrontFace.?(arg_2);
}
pub inline fn glHint(arg_3: GLenum, arg_4: GLenum) void {
    return glad_glHint.?(arg_3, arg_4);
}
pub inline fn glLineWidth(arg_5: GLfloat) void {
    return glad_glLineWidth.?(arg_5);
}
pub inline fn glPointSize(arg_6: GLfloat) void {
    return glad_glPointSize.?(arg_6);
}
pub inline fn glPolygonMode(arg_7: GLenum, arg_8: GLenum) void {
    return glad_glPolygonMode.?(arg_7, arg_8);
}
pub inline fn glScissor(arg_9: GLint, arg_10: GLint, arg_11: GLsizei, arg_12: GLsizei) void {
    return glad_glScissor.?(arg_9, arg_10, arg_11, arg_12);
}
pub inline fn glTexParameterf(arg_13: GLenum, arg_14: GLenum, arg_15: GLfloat) void {
    return glad_glTexParameterf.?(arg_13, arg_14, arg_15);
}
pub inline fn glTexParameterfv(arg_16: GLenum, arg_17: GLenum, arg_18: [*c]const GLfloat) void {
    return glad_glTexParameterfv.?(arg_16, arg_17, arg_18);
}
pub inline fn glTexParameteri(arg_19: GLenum, arg_20: GLenum, arg_21: GLint) void {
    return glad_glTexParameteri.?(arg_19, arg_20, arg_21);
}
pub inline fn glTexParameteriv(arg_22: GLenum, arg_23: GLenum, arg_24: [*c]const GLint) void {
    return glad_glTexParameteriv.?(arg_22, arg_23, arg_24);
}
pub inline fn glTexImage1D(arg_25: GLenum, arg_26: GLint, arg_27: GLint, arg_28: GLsizei, arg_29: GLint, arg_30: GLenum, arg_31: GLenum, arg_32: ?*const anyopaque) void {
    return glad_glTexImage1D.?(arg_25, arg_26, arg_27, arg_28, arg_29, arg_30, arg_31, arg_32);
}
pub inline fn glTexImage2D(arg_33: GLenum, arg_34: GLint, arg_35: GLint, arg_36: GLsizei, arg_37: GLsizei, arg_38: GLint, arg_39: GLenum, arg_40: GLenum, arg_41: ?*const anyopaque) void {
    return glad_glTexImage2D.?(arg_33, arg_34, arg_35, arg_36, arg_37, arg_38, arg_39, arg_40, arg_41);
}
pub inline fn glDrawBuffer(arg_42: GLenum) void {
    return glad_glDrawBuffer.?(arg_42);
}
pub inline fn glClear(arg_43: GLbitfield) void {
    return glad_glClear.?(arg_43);
}
pub inline fn glClearColor(arg_44: GLfloat, arg_45: GLfloat, arg_46: GLfloat, arg_47: GLfloat) void {
    return glad_glClearColor.?(arg_44, arg_45, arg_46, arg_47);
}
pub inline fn glClearStencil(arg_48: GLint) void {
    return glad_glClearStencil.?(arg_48);
}
pub inline fn glClearDepth(arg_49: GLdouble) void {
    return glad_glClearDepth.?(arg_49);
}
pub inline fn glStencilMask(arg_50: GLuint) void {
    return glad_glStencilMask.?(arg_50);
}
pub inline fn glColorMask(arg_51: GLboolean, arg_52: GLboolean, arg_53: GLboolean, arg_54: GLboolean) void {
    return glad_glColorMask.?(arg_51, arg_52, arg_53, arg_54);
}
pub inline fn glDepthMask(arg_55: GLboolean) void {
    return glad_glDepthMask.?(arg_55);
}
pub inline fn glDisable(arg_56: GLenum) void {
    return glad_glDisable.?(arg_56);
}
pub inline fn glEnable(arg_57: GLenum) void {
    return glad_glEnable.?(arg_57);
}
pub inline fn glFinish() void {
    return glad_glFinish.?();
}
pub inline fn glFlush() void {
    return glad_glFlush.?();
}
pub inline fn glBlendFunc(arg_58: GLenum, arg_59: GLenum) void {
    return glad_glBlendFunc.?(arg_58, arg_59);
}
pub inline fn glLogicOp(arg_60: GLenum) void {
    return glad_glLogicOp.?(arg_60);
}
pub inline fn glStencilFunc(arg_61: GLenum, arg_62: GLint, arg_63: GLuint) void {
    return glad_glStencilFunc.?(arg_61, arg_62, arg_63);
}
pub inline fn glStencilOp(arg_64: GLenum, arg_65: GLenum, arg_66: GLenum) void {
    return glad_glStencilOp.?(arg_64, arg_65, arg_66);
}
pub inline fn glDepthFunc(arg_67: GLenum) void {
    return glad_glDepthFunc.?(arg_67);
}
pub inline fn glPixelStoref(arg_68: GLenum, arg_69: GLfloat) void {
    return glad_glPixelStoref.?(arg_68, arg_69);
}
pub inline fn glPixelStorei(arg_70: GLenum, arg_71: GLint) void {
    return glad_glPixelStorei.?(arg_70, arg_71);
}
pub inline fn glReadBuffer(arg_72: GLenum) void {
    return glad_glReadBuffer.?(arg_72);
}
pub inline fn glReadPixels(arg_73: GLint, arg_74: GLint, arg_75: GLsizei, arg_76: GLsizei, arg_77: GLenum, arg_78: GLenum, arg_79: ?*anyopaque) void {
    return glad_glReadPixels.?(arg_73, arg_74, arg_75, arg_76, arg_77, arg_78, arg_79);
}
pub inline fn glGetBooleanv(arg_80: GLenum, arg_81: [*c]GLboolean) void {
    return glad_glGetBooleanv.?(arg_80, arg_81);
}
pub inline fn glGetDoublev(arg_82: GLenum, arg_83: [*c]GLdouble) void {
    return glad_glGetDoublev.?(arg_82, arg_83);
}
pub inline fn glGetError() GLenum {
    return glad_glGetError.?();
}
pub inline fn glGetFloatv(arg_84: GLenum, arg_85: [*c]GLfloat) void {
    return glad_glGetFloatv.?(arg_84, arg_85);
}
pub inline fn glGetIntegerv(arg_86: GLenum, arg_87: [*c]GLint) void {
    return glad_glGetIntegerv.?(arg_86, arg_87);
}
pub inline fn glGetString(arg_88: GLenum) [*c]const GLubyte {
    return glad_glGetString.?(arg_88);
}
pub inline fn glGetTexImage(arg_89: GLenum, arg_90: GLint, arg_91: GLenum, arg_92: GLenum, arg_93: ?*anyopaque) void {
    return glad_glGetTexImage.?(arg_89, arg_90, arg_91, arg_92, arg_93);
}
pub inline fn glGetTexParameterfv(arg_94: GLenum, arg_95: GLenum, arg_96: [*c]GLfloat) void {
    return glad_glGetTexParameterfv.?(arg_94, arg_95, arg_96);
}
pub inline fn glGetTexParameteriv(arg_97: GLenum, arg_98: GLenum, arg_99: [*c]GLint) void {
    return glad_glGetTexParameteriv.?(arg_97, arg_98, arg_99);
}
pub inline fn glGetTexLevelParameterfv(arg_100: GLenum, arg_101: GLint, arg_102: GLenum, arg_103: [*c]GLfloat) void {
    return glad_glGetTexLevelParameterfv.?(arg_100, arg_101, arg_102, arg_103);
}
pub inline fn glGetTexLevelParameteriv(arg_104: GLenum, arg_105: GLint, arg_106: GLenum, arg_107: [*c]GLint) void {
    return glad_glGetTexLevelParameteriv.?(arg_104, arg_105, arg_106, arg_107);
}
pub inline fn glIsEnabled(arg_108: GLenum) GLboolean {
    return glad_glIsEnabled.?(arg_108);
}
pub inline fn glDepthRange(arg_109: GLdouble, arg_110: GLdouble) void {
    return glad_glDepthRange.?(arg_109, arg_110);
}
pub inline fn glViewport(arg_111: GLint, arg_112: GLint, arg_113: GLsizei, arg_114: GLsizei) void {
    return glad_glViewport.?(arg_111, arg_112, arg_113, arg_114);
}
pub inline fn glNewList(arg_115: GLuint, arg_116: GLenum) void {
    return glad_glNewList.?(arg_115, arg_116);
}
pub inline fn glEndList() void {
    return glad_glEndList.?();
}
pub inline fn glCallList(arg_117: GLuint) void {
    return glad_glCallList.?(arg_117);
}
pub inline fn glCallLists(arg_118: GLsizei, arg_119: GLenum, arg_120: ?*const anyopaque) void {
    return glad_glCallLists.?(arg_118, arg_119, arg_120);
}
pub inline fn glDeleteLists(arg_121: GLuint, arg_122: GLsizei) void {
    return glad_glDeleteLists.?(arg_121, arg_122);
}
pub inline fn glGenLists(arg_123: GLsizei) GLuint {
    return glad_glGenLists.?(arg_123);
}
pub inline fn glListBase(arg_124: GLuint) void {
    return glad_glListBase.?(arg_124);
}
pub inline fn glBegin(arg_125: GLenum) void {
    return glad_glBegin.?(arg_125);
}
pub inline fn glBitmap(arg_126: GLsizei, arg_127: GLsizei, arg_128: GLfloat, arg_129: GLfloat, arg_130: GLfloat, arg_131: GLfloat, arg_132: [*c]const GLubyte) void {
    return glad_glBitmap.?(arg_126, arg_127, arg_128, arg_129, arg_130, arg_131, arg_132);
}
pub inline fn glColor3b(arg_133: GLbyte, arg_134: GLbyte, arg_135: GLbyte) void {
    return glad_glColor3b.?(arg_133, arg_134, arg_135);
}
pub inline fn glColor3bv(arg_136: [*c]const GLbyte) void {
    return glad_glColor3bv.?(arg_136);
}
pub inline fn glColor3d(arg_137: GLdouble, arg_138: GLdouble, arg_139: GLdouble) void {
    return glad_glColor3d.?(arg_137, arg_138, arg_139);
}
pub inline fn glColor3dv(arg_140: [*c]const GLdouble) void {
    return glad_glColor3dv.?(arg_140);
}
pub inline fn glColor3f(arg_141: GLfloat, arg_142: GLfloat, arg_143: GLfloat) void {
    return glad_glColor3f.?(arg_141, arg_142, arg_143);
}
pub inline fn glColor3fv(arg_144: [*c]const GLfloat) void {
    return glad_glColor3fv.?(arg_144);
}
pub inline fn glColor3i(arg_145: GLint, arg_146: GLint, arg_147: GLint) void {
    return glad_glColor3i.?(arg_145, arg_146, arg_147);
}
pub inline fn glColor3iv(arg_148: [*c]const GLint) void {
    return glad_glColor3iv.?(arg_148);
}
pub inline fn glColor3s(arg_149: GLshort, arg_150: GLshort, arg_151: GLshort) void {
    return glad_glColor3s.?(arg_149, arg_150, arg_151);
}
pub inline fn glColor3sv(arg_152: [*c]const GLshort) void {
    return glad_glColor3sv.?(arg_152);
}
pub inline fn glColor3ub(arg_153: GLubyte, arg_154: GLubyte, arg_155: GLubyte) void {
    return glad_glColor3ub.?(arg_153, arg_154, arg_155);
}
pub inline fn glColor3ubv(arg_156: [*c]const GLubyte) void {
    return glad_glColor3ubv.?(arg_156);
}
pub inline fn glColor3ui(arg_157: GLuint, arg_158: GLuint, arg_159: GLuint) void {
    return glad_glColor3ui.?(arg_157, arg_158, arg_159);
}
pub inline fn glColor3uiv(arg_160: [*c]const GLuint) void {
    return glad_glColor3uiv.?(arg_160);
}
pub inline fn glColor3us(arg_161: GLushort, arg_162: GLushort, arg_163: GLushort) void {
    return glad_glColor3us.?(arg_161, arg_162, arg_163);
}
pub inline fn glColor3usv(arg_164: [*c]const GLushort) void {
    return glad_glColor3usv.?(arg_164);
}
pub inline fn glColor4b(arg_165: GLbyte, arg_166: GLbyte, arg_167: GLbyte, arg_168: GLbyte) void {
    return glad_glColor4b.?(arg_165, arg_166, arg_167, arg_168);
}
pub inline fn glColor4bv(arg_169: [*c]const GLbyte) void {
    return glad_glColor4bv.?(arg_169);
}
pub inline fn glColor4d(arg_170: GLdouble, arg_171: GLdouble, arg_172: GLdouble, arg_173: GLdouble) void {
    return glad_glColor4d.?(arg_170, arg_171, arg_172, arg_173);
}
pub inline fn glColor4dv(arg_174: [*c]const GLdouble) void {
    return glad_glColor4dv.?(arg_174);
}
pub inline fn glColor4f(arg_175: GLfloat, arg_176: GLfloat, arg_177: GLfloat, arg_178: GLfloat) void {
    return glad_glColor4f.?(arg_175, arg_176, arg_177, arg_178);
}
pub inline fn glColor4fv(arg_179: [*c]const GLfloat) void {
    return glad_glColor4fv.?(arg_179);
}
pub inline fn glColor4i(arg_180: GLint, arg_181: GLint, arg_182: GLint, arg_183: GLint) void {
    return glad_glColor4i.?(arg_180, arg_181, arg_182, arg_183);
}
pub inline fn glColor4iv(arg_184: [*c]const GLint) void {
    return glad_glColor4iv.?(arg_184);
}
pub inline fn glColor4s(arg_185: GLshort, arg_186: GLshort, arg_187: GLshort, arg_188: GLshort) void {
    return glad_glColor4s.?(arg_185, arg_186, arg_187, arg_188);
}
pub inline fn glColor4sv(arg_189: [*c]const GLshort) void {
    return glad_glColor4sv.?(arg_189);
}
pub inline fn glColor4ub(arg_190: GLubyte, arg_191: GLubyte, arg_192: GLubyte, arg_193: GLubyte) void {
    return glad_glColor4ub.?(arg_190, arg_191, arg_192, arg_193);
}
pub inline fn glColor4ubv(arg_194: [*c]const GLubyte) void {
    return glad_glColor4ubv.?(arg_194);
}
pub inline fn glColor4ui(arg_195: GLuint, arg_196: GLuint, arg_197: GLuint, arg_198: GLuint) void {
    return glad_glColor4ui.?(arg_195, arg_196, arg_197, arg_198);
}
pub inline fn glColor4uiv(arg_199: [*c]const GLuint) void {
    return glad_glColor4uiv.?(arg_199);
}
pub inline fn glColor4us(arg_200: GLushort, arg_201: GLushort, arg_202: GLushort, arg_203: GLushort) void {
    return glad_glColor4us.?(arg_200, arg_201, arg_202, arg_203);
}
pub inline fn glColor4usv(arg_204: [*c]const GLushort) void {
    return glad_glColor4usv.?(arg_204);
}
pub inline fn glEdgeFlag(arg_205: GLboolean) void {
    return glad_glEdgeFlag.?(arg_205);
}
pub inline fn glEdgeFlagv(arg_206: [*c]const GLboolean) void {
    return glad_glEdgeFlagv.?(arg_206);
}
pub inline fn glEnd() void {
    return glad_glEnd.?();
}
pub inline fn glIndexd(arg_207: GLdouble) void {
    return glad_glIndexd.?(arg_207);
}
pub inline fn glIndexdv(arg_208: [*c]const GLdouble) void {
    return glad_glIndexdv.?(arg_208);
}
pub inline fn glIndexf(arg_209: GLfloat) void {
    return glad_glIndexf.?(arg_209);
}
pub inline fn glIndexfv(arg_210: [*c]const GLfloat) void {
    return glad_glIndexfv.?(arg_210);
}
pub inline fn glIndexi(arg_211: GLint) void {
    return glad_glIndexi.?(arg_211);
}
pub inline fn glIndexiv(arg_212: [*c]const GLint) void {
    return glad_glIndexiv.?(arg_212);
}
pub inline fn glIndexs(arg_213: GLshort) void {
    return glad_glIndexs.?(arg_213);
}
pub inline fn glIndexsv(arg_214: [*c]const GLshort) void {
    return glad_glIndexsv.?(arg_214);
}
pub inline fn glNormal3b(arg_215: GLbyte, arg_216: GLbyte, arg_217: GLbyte) void {
    return glad_glNormal3b.?(arg_215, arg_216, arg_217);
}
pub inline fn glNormal3bv(arg_218: [*c]const GLbyte) void {
    return glad_glNormal3bv.?(arg_218);
}
pub inline fn glNormal3d(arg_219: GLdouble, arg_220: GLdouble, arg_221: GLdouble) void {
    return glad_glNormal3d.?(arg_219, arg_220, arg_221);
}
pub inline fn glNormal3dv(arg_222: [*c]const GLdouble) void {
    return glad_glNormal3dv.?(arg_222);
}
pub inline fn glNormal3f(arg_223: GLfloat, arg_224: GLfloat, arg_225: GLfloat) void {
    return glad_glNormal3f.?(arg_223, arg_224, arg_225);
}
pub inline fn glNormal3fv(arg_226: [*c]const GLfloat) void {
    return glad_glNormal3fv.?(arg_226);
}
pub inline fn glNormal3i(arg_227: GLint, arg_228: GLint, arg_229: GLint) void {
    return glad_glNormal3i.?(arg_227, arg_228, arg_229);
}
pub inline fn glNormal3iv(arg_230: [*c]const GLint) void {
    return glad_glNormal3iv.?(arg_230);
}
pub inline fn glNormal3s(arg_231: GLshort, arg_232: GLshort, arg_233: GLshort) void {
    return glad_glNormal3s.?(arg_231, arg_232, arg_233);
}
pub inline fn glNormal3sv(arg_234: [*c]const GLshort) void {
    return glad_glNormal3sv.?(arg_234);
}
pub inline fn glRasterPos2d(arg_235: GLdouble, arg_236: GLdouble) void {
    return glad_glRasterPos2d.?(arg_235, arg_236);
}
pub inline fn glRasterPos2dv(arg_237: [*c]const GLdouble) void {
    return glad_glRasterPos2dv.?(arg_237);
}
pub inline fn glRasterPos2f(arg_238: GLfloat, arg_239: GLfloat) void {
    return glad_glRasterPos2f.?(arg_238, arg_239);
}
pub inline fn glRasterPos2fv(arg_240: [*c]const GLfloat) void {
    return glad_glRasterPos2fv.?(arg_240);
}
pub inline fn glRasterPos2i(arg_241: GLint, arg_242: GLint) void {
    return glad_glRasterPos2i.?(arg_241, arg_242);
}
pub inline fn glRasterPos2iv(arg_243: [*c]const GLint) void {
    return glad_glRasterPos2iv.?(arg_243);
}
pub inline fn glRasterPos2s(arg_244: GLshort, arg_245: GLshort) void {
    return glad_glRasterPos2s.?(arg_244, arg_245);
}
pub inline fn glRasterPos2sv(arg_246: [*c]const GLshort) void {
    return glad_glRasterPos2sv.?(arg_246);
}
pub inline fn glRasterPos3d(arg_247: GLdouble, arg_248: GLdouble, arg_249: GLdouble) void {
    return glad_glRasterPos3d.?(arg_247, arg_248, arg_249);
}
pub inline fn glRasterPos3dv(arg_250: [*c]const GLdouble) void {
    return glad_glRasterPos3dv.?(arg_250);
}
pub inline fn glRasterPos3f(arg_251: GLfloat, arg_252: GLfloat, arg_253: GLfloat) void {
    return glad_glRasterPos3f.?(arg_251, arg_252, arg_253);
}
pub inline fn glRasterPos3fv(arg_254: [*c]const GLfloat) void {
    return glad_glRasterPos3fv.?(arg_254);
}
pub inline fn glRasterPos3i(arg_255: GLint, arg_256: GLint, arg_257: GLint) void {
    return glad_glRasterPos3i.?(arg_255, arg_256, arg_257);
}
pub inline fn glRasterPos3iv(arg_258: [*c]const GLint) void {
    return glad_glRasterPos3iv.?(arg_258);
}
pub inline fn glRasterPos3s(arg_259: GLshort, arg_260: GLshort, arg_261: GLshort) void {
    return glad_glRasterPos3s.?(arg_259, arg_260, arg_261);
}
pub inline fn glRasterPos3sv(arg_262: [*c]const GLshort) void {
    return glad_glRasterPos3sv.?(arg_262);
}
pub inline fn glRasterPos4d(arg_263: GLdouble, arg_264: GLdouble, arg_265: GLdouble, arg_266: GLdouble) void {
    return glad_glRasterPos4d.?(arg_263, arg_264, arg_265, arg_266);
}
pub inline fn glRasterPos4dv(arg_267: [*c]const GLdouble) void {
    return glad_glRasterPos4dv.?(arg_267);
}
pub inline fn glRasterPos4f(arg_268: GLfloat, arg_269: GLfloat, arg_270: GLfloat, arg_271: GLfloat) void {
    return glad_glRasterPos4f.?(arg_268, arg_269, arg_270, arg_271);
}
pub inline fn glRasterPos4fv(arg_272: [*c]const GLfloat) void {
    return glad_glRasterPos4fv.?(arg_272);
}
pub inline fn glRasterPos4i(arg_273: GLint, arg_274: GLint, arg_275: GLint, arg_276: GLint) void {
    return glad_glRasterPos4i.?(arg_273, arg_274, arg_275, arg_276);
}
pub inline fn glRasterPos4iv(arg_277: [*c]const GLint) void {
    return glad_glRasterPos4iv.?(arg_277);
}
pub inline fn glRasterPos4s(arg_278: GLshort, arg_279: GLshort, arg_280: GLshort, arg_281: GLshort) void {
    return glad_glRasterPos4s.?(arg_278, arg_279, arg_280, arg_281);
}
pub inline fn glRasterPos4sv(arg_282: [*c]const GLshort) void {
    return glad_glRasterPos4sv.?(arg_282);
}
pub inline fn glRectd(arg_283: GLdouble, arg_284: GLdouble, arg_285: GLdouble, arg_286: GLdouble) void {
    return glad_glRectd.?(arg_283, arg_284, arg_285, arg_286);
}
pub inline fn glRectdv(arg_287: [*c]const GLdouble, arg_288: [*c]const GLdouble) void {
    return glad_glRectdv.?(arg_287, arg_288);
}
pub inline fn glRectf(arg_289: GLfloat, arg_290: GLfloat, arg_291: GLfloat, arg_292: GLfloat) void {
    return glad_glRectf.?(arg_289, arg_290, arg_291, arg_292);
}
pub inline fn glRectfv(arg_293: [*c]const GLfloat, arg_294: [*c]const GLfloat) void {
    return glad_glRectfv.?(arg_293, arg_294);
}
pub inline fn glRecti(arg_295: GLint, arg_296: GLint, arg_297: GLint, arg_298: GLint) void {
    return glad_glRecti.?(arg_295, arg_296, arg_297, arg_298);
}
pub inline fn glRectiv(arg_299: [*c]const GLint, arg_300: [*c]const GLint) void {
    return glad_glRectiv.?(arg_299, arg_300);
}
pub inline fn glRects(arg_301: GLshort, arg_302: GLshort, arg_303: GLshort, arg_304: GLshort) void {
    return glad_glRects.?(arg_301, arg_302, arg_303, arg_304);
}
pub inline fn glRectsv(arg_305: [*c]const GLshort, arg_306: [*c]const GLshort) void {
    return glad_glRectsv.?(arg_305, arg_306);
}
pub inline fn glTexCoord1d(arg_307: GLdouble) void {
    return glad_glTexCoord1d.?(arg_307);
}
pub inline fn glTexCoord1dv(arg_308: [*c]const GLdouble) void {
    return glad_glTexCoord1dv.?(arg_308);
}
pub inline fn glTexCoord1f(arg_309: GLfloat) void {
    return glad_glTexCoord1f.?(arg_309);
}
pub inline fn glTexCoord1fv(arg_310: [*c]const GLfloat) void {
    return glad_glTexCoord1fv.?(arg_310);
}
pub inline fn glTexCoord1i(arg_311: GLint) void {
    return glad_glTexCoord1i.?(arg_311);
}
pub inline fn glTexCoord1iv(arg_312: [*c]const GLint) void {
    return glad_glTexCoord1iv.?(arg_312);
}
pub inline fn glTexCoord1s(arg_313: GLshort) void {
    return glad_glTexCoord1s.?(arg_313);
}
pub inline fn glTexCoord1sv(arg_314: [*c]const GLshort) void {
    return glad_glTexCoord1sv.?(arg_314);
}
pub inline fn glTexCoord2d(arg_315: GLdouble, arg_316: GLdouble) void {
    return glad_glTexCoord2d.?(arg_315, arg_316);
}
pub inline fn glTexCoord2dv(arg_317: [*c]const GLdouble) void {
    return glad_glTexCoord2dv.?(arg_317);
}
pub inline fn glTexCoord2f(arg_318: GLfloat, arg_319: GLfloat) void {
    return glad_glTexCoord2f.?(arg_318, arg_319);
}
pub inline fn glTexCoord2fv(arg_320: [*c]const GLfloat) void {
    return glad_glTexCoord2fv.?(arg_320);
}
pub inline fn glTexCoord2i(arg_321: GLint, arg_322: GLint) void {
    return glad_glTexCoord2i.?(arg_321, arg_322);
}
pub inline fn glTexCoord2iv(arg_323: [*c]const GLint) void {
    return glad_glTexCoord2iv.?(arg_323);
}
pub inline fn glTexCoord2s(arg_324: GLshort, arg_325: GLshort) void {
    return glad_glTexCoord2s.?(arg_324, arg_325);
}
pub inline fn glTexCoord2sv(arg_326: [*c]const GLshort) void {
    return glad_glTexCoord2sv.?(arg_326);
}
pub inline fn glTexCoord3d(arg_327: GLdouble, arg_328: GLdouble, arg_329: GLdouble) void {
    return glad_glTexCoord3d.?(arg_327, arg_328, arg_329);
}
pub inline fn glTexCoord3dv(arg_330: [*c]const GLdouble) void {
    return glad_glTexCoord3dv.?(arg_330);
}
pub inline fn glTexCoord3f(arg_331: GLfloat, arg_332: GLfloat, arg_333: GLfloat) void {
    return glad_glTexCoord3f.?(arg_331, arg_332, arg_333);
}
pub inline fn glTexCoord3fv(arg_334: [*c]const GLfloat) void {
    return glad_glTexCoord3fv.?(arg_334);
}
pub inline fn glTexCoord3i(arg_335: GLint, arg_336: GLint, arg_337: GLint) void {
    return glad_glTexCoord3i.?(arg_335, arg_336, arg_337);
}
pub inline fn glTexCoord3iv(arg_338: [*c]const GLint) void {
    return glad_glTexCoord3iv.?(arg_338);
}
pub inline fn glTexCoord3s(arg_339: GLshort, arg_340: GLshort, arg_341: GLshort) void {
    return glad_glTexCoord3s.?(arg_339, arg_340, arg_341);
}
pub inline fn glTexCoord3sv(arg_342: [*c]const GLshort) void {
    return glad_glTexCoord3sv.?(arg_342);
}
pub inline fn glTexCoord4d(arg_343: GLdouble, arg_344: GLdouble, arg_345: GLdouble, arg_346: GLdouble) void {
    return glad_glTexCoord4d.?(arg_343, arg_344, arg_345, arg_346);
}
pub inline fn glTexCoord4dv(arg_347: [*c]const GLdouble) void {
    return glad_glTexCoord4dv.?(arg_347);
}
pub inline fn glTexCoord4f(arg_348: GLfloat, arg_349: GLfloat, arg_350: GLfloat, arg_351: GLfloat) void {
    return glad_glTexCoord4f.?(arg_348, arg_349, arg_350, arg_351);
}
pub inline fn glTexCoord4fv(arg_352: [*c]const GLfloat) void {
    return glad_glTexCoord4fv.?(arg_352);
}
pub inline fn glTexCoord4i(arg_353: GLint, arg_354: GLint, arg_355: GLint, arg_356: GLint) void {
    return glad_glTexCoord4i.?(arg_353, arg_354, arg_355, arg_356);
}
pub inline fn glTexCoord4iv(arg_357: [*c]const GLint) void {
    return glad_glTexCoord4iv.?(arg_357);
}
pub inline fn glTexCoord4s(arg_358: GLshort, arg_359: GLshort, arg_360: GLshort, arg_361: GLshort) void {
    return glad_glTexCoord4s.?(arg_358, arg_359, arg_360, arg_361);
}
pub inline fn glTexCoord4sv(arg_362: [*c]const GLshort) void {
    return glad_glTexCoord4sv.?(arg_362);
}
pub inline fn glVertex2d(arg_363: GLdouble, arg_364: GLdouble) void {
    return glad_glVertex2d.?(arg_363, arg_364);
}
pub inline fn glVertex2dv(arg_365: [*c]const GLdouble) void {
    return glad_glVertex2dv.?(arg_365);
}
pub inline fn glVertex2f(arg_366: GLfloat, arg_367: GLfloat) void {
    return glad_glVertex2f.?(arg_366, arg_367);
}
pub inline fn glVertex2fv(arg_368: [*c]const GLfloat) void {
    return glad_glVertex2fv.?(arg_368);
}
pub inline fn glVertex2i(arg_369: GLint, arg_370: GLint) void {
    return glad_glVertex2i.?(arg_369, arg_370);
}
pub inline fn glVertex2iv(arg_371: [*c]const GLint) void {
    return glad_glVertex2iv.?(arg_371);
}
pub inline fn glVertex2s(arg_372: GLshort, arg_373: GLshort) void {
    return glad_glVertex2s.?(arg_372, arg_373);
}
pub inline fn glVertex2sv(arg_374: [*c]const GLshort) void {
    return glad_glVertex2sv.?(arg_374);
}
pub inline fn glVertex3d(arg_375: GLdouble, arg_376: GLdouble, arg_377: GLdouble) void {
    return glad_glVertex3d.?(arg_375, arg_376, arg_377);
}
pub inline fn glVertex3dv(arg_378: [*c]const GLdouble) void {
    return glad_glVertex3dv.?(arg_378);
}
pub inline fn glVertex3f(arg_379: GLfloat, arg_380: GLfloat, arg_381: GLfloat) void {
    return glad_glVertex3f.?(arg_379, arg_380, arg_381);
}
pub inline fn glVertex3fv(arg_382: [*c]const GLfloat) void {
    return glad_glVertex3fv.?(arg_382);
}
pub inline fn glVertex3i(arg_383: GLint, arg_384: GLint, arg_385: GLint) void {
    return glad_glVertex3i.?(arg_383, arg_384, arg_385);
}
pub inline fn glVertex3iv(arg_386: [*c]const GLint) void {
    return glad_glVertex3iv.?(arg_386);
}
pub inline fn glVertex3s(arg_387: GLshort, arg_388: GLshort, arg_389: GLshort) void {
    return glad_glVertex3s.?(arg_387, arg_388, arg_389);
}
pub inline fn glVertex3sv(arg_390: [*c]const GLshort) void {
    return glad_glVertex3sv.?(arg_390);
}
pub inline fn glVertex4d(arg_391: GLdouble, arg_392: GLdouble, arg_393: GLdouble, arg_394: GLdouble) void {
    return glad_glVertex4d.?(arg_391, arg_392, arg_393, arg_394);
}
pub inline fn glVertex4dv(arg_395: [*c]const GLdouble) void {
    return glad_glVertex4dv.?(arg_395);
}
pub inline fn glVertex4f(arg_396: GLfloat, arg_397: GLfloat, arg_398: GLfloat, arg_399: GLfloat) void {
    return glad_glVertex4f.?(arg_396, arg_397, arg_398, arg_399);
}
pub inline fn glVertex4fv(arg_400: [*c]const GLfloat) void {
    return glad_glVertex4fv.?(arg_400);
}
pub inline fn glVertex4i(arg_401: GLint, arg_402: GLint, arg_403: GLint, arg_404: GLint) void {
    return glad_glVertex4i.?(arg_401, arg_402, arg_403, arg_404);
}
pub inline fn glVertex4iv(arg_405: [*c]const GLint) void {
    return glad_glVertex4iv.?(arg_405);
}
pub inline fn glVertex4s(arg_406: GLshort, arg_407: GLshort, arg_408: GLshort, arg_409: GLshort) void {
    return glad_glVertex4s.?(arg_406, arg_407, arg_408, arg_409);
}
pub inline fn glVertex4sv(arg_410: [*c]const GLshort) void {
    return glad_glVertex4sv.?(arg_410);
}
pub inline fn glClipPlane(arg_411: GLenum, arg_412: [*c]const GLdouble) void {
    return glad_glClipPlane.?(arg_411, arg_412);
}
pub inline fn glColorMaterial(arg_413: GLenum, arg_414: GLenum) void {
    return glad_glColorMaterial.?(arg_413, arg_414);
}
pub inline fn glFogf(arg_415: GLenum, arg_416: GLfloat) void {
    return glad_glFogf.?(arg_415, arg_416);
}
pub inline fn glFogfv(arg_417: GLenum, arg_418: [*c]const GLfloat) void {
    return glad_glFogfv.?(arg_417, arg_418);
}
pub inline fn glFogi(arg_419: GLenum, arg_420: GLint) void {
    return glad_glFogi.?(arg_419, arg_420);
}
pub inline fn glFogiv(arg_421: GLenum, arg_422: [*c]const GLint) void {
    return glad_glFogiv.?(arg_421, arg_422);
}
pub inline fn glLightf(arg_423: GLenum, arg_424: GLenum, arg_425: GLfloat) void {
    return glad_glLightf.?(arg_423, arg_424, arg_425);
}
pub inline fn glLightfv(arg_426: GLenum, arg_427: GLenum, arg_428: [*c]const GLfloat) void {
    return glad_glLightfv.?(arg_426, arg_427, arg_428);
}
pub inline fn glLighti(arg_429: GLenum, arg_430: GLenum, arg_431: GLint) void {
    return glad_glLighti.?(arg_429, arg_430, arg_431);
}
pub inline fn glLightiv(arg_432: GLenum, arg_433: GLenum, arg_434: [*c]const GLint) void {
    return glad_glLightiv.?(arg_432, arg_433, arg_434);
}
pub inline fn glLightModelf(arg_435: GLenum, arg_436: GLfloat) void {
    return glad_glLightModelf.?(arg_435, arg_436);
}
pub inline fn glLightModelfv(arg_437: GLenum, arg_438: [*c]const GLfloat) void {
    return glad_glLightModelfv.?(arg_437, arg_438);
}
pub inline fn glLightModeli(arg_439: GLenum, arg_440: GLint) void {
    return glad_glLightModeli.?(arg_439, arg_440);
}
pub inline fn glLightModeliv(arg_441: GLenum, arg_442: [*c]const GLint) void {
    return glad_glLightModeliv.?(arg_441, arg_442);
}
pub inline fn glLineStipple(arg_443: GLint, arg_444: GLushort) void {
    return glad_glLineStipple.?(arg_443, arg_444);
}
pub inline fn glMaterialf(arg_445: GLenum, arg_446: GLenum, arg_447: GLfloat) void {
    return glad_glMaterialf.?(arg_445, arg_446, arg_447);
}
pub inline fn glMaterialfv(arg_448: GLenum, arg_449: GLenum, arg_450: [*c]const GLfloat) void {
    return glad_glMaterialfv.?(arg_448, arg_449, arg_450);
}
pub inline fn glMateriali(arg_451: GLenum, arg_452: GLenum, arg_453: GLint) void {
    return glad_glMateriali.?(arg_451, arg_452, arg_453);
}
pub inline fn glMaterialiv(arg_454: GLenum, arg_455: GLenum, arg_456: [*c]const GLint) void {
    return glad_glMaterialiv.?(arg_454, arg_455, arg_456);
}
pub inline fn glPolygonStipple(arg_457: [*c]const GLubyte) void {
    return glad_glPolygonStipple.?(arg_457);
}
pub inline fn glShadeModel(arg_458: GLenum) void {
    return glad_glShadeModel.?(arg_458);
}
pub inline fn glTexEnvf(arg_459: GLenum, arg_460: GLenum, arg_461: GLfloat) void {
    return glad_glTexEnvf.?(arg_459, arg_460, arg_461);
}
pub inline fn glTexEnvfv(arg_462: GLenum, arg_463: GLenum, arg_464: [*c]const GLfloat) void {
    return glad_glTexEnvfv.?(arg_462, arg_463, arg_464);
}
pub inline fn glTexEnvi(arg_465: GLenum, arg_466: GLenum, arg_467: GLint) void {
    return glad_glTexEnvi.?(arg_465, arg_466, arg_467);
}
pub inline fn glTexEnviv(arg_468: GLenum, arg_469: GLenum, arg_470: [*c]const GLint) void {
    return glad_glTexEnviv.?(arg_468, arg_469, arg_470);
}
pub inline fn glTexGend(arg_471: GLenum, arg_472: GLenum, arg_473: GLdouble) void {
    return glad_glTexGend.?(arg_471, arg_472, arg_473);
}
pub inline fn glTexGendv(arg_474: GLenum, arg_475: GLenum, arg_476: [*c]const GLdouble) void {
    return glad_glTexGendv.?(arg_474, arg_475, arg_476);
}
pub inline fn glTexGenf(arg_477: GLenum, arg_478: GLenum, arg_479: GLfloat) void {
    return glad_glTexGenf.?(arg_477, arg_478, arg_479);
}
pub inline fn glTexGenfv(arg_480: GLenum, arg_481: GLenum, arg_482: [*c]const GLfloat) void {
    return glad_glTexGenfv.?(arg_480, arg_481, arg_482);
}
pub inline fn glTexGeni(arg_483: GLenum, arg_484: GLenum, arg_485: GLint) void {
    return glad_glTexGeni.?(arg_483, arg_484, arg_485);
}
pub inline fn glTexGeniv(arg_486: GLenum, arg_487: GLenum, arg_488: [*c]const GLint) void {
    return glad_glTexGeniv.?(arg_486, arg_487, arg_488);
}
pub inline fn glFeedbackBuffer(arg_489: GLsizei, arg_490: GLenum, arg_491: [*c]GLfloat) void {
    return glad_glFeedbackBuffer.?(arg_489, arg_490, arg_491);
}
pub inline fn glSelectBuffer(arg_492: GLsizei, arg_493: [*c]GLuint) void {
    return glad_glSelectBuffer.?(arg_492, arg_493);
}
pub inline fn glRenderMode(arg_494: GLenum) GLint {
    return glad_glRenderMode.?(arg_494);
}
pub inline fn glInitNames() void {
    return glad_glInitNames.?();
}
pub inline fn glLoadName(arg_495: GLuint) void {
    return glad_glLoadName.?(arg_495);
}
pub inline fn glPassThrough(arg_496: GLfloat) void {
    return glad_glPassThrough.?(arg_496);
}
pub inline fn glPopName() void {
    return glad_glPopName.?();
}
pub inline fn glPushName(arg_497: GLuint) void {
    return glad_glPushName.?(arg_497);
}
pub inline fn glClearAccum(arg_498: GLfloat, arg_499: GLfloat, arg_500: GLfloat, arg_501: GLfloat) void {
    return glad_glClearAccum.?(arg_498, arg_499, arg_500, arg_501);
}
pub inline fn glClearIndex(arg_502: GLfloat) void {
    return glad_glClearIndex.?(arg_502);
}
pub inline fn glIndexMask(arg_503: GLuint) void {
    return glad_glIndexMask.?(arg_503);
}
pub inline fn glAccum(arg_504: GLenum, arg_505: GLfloat) void {
    return glad_glAccum.?(arg_504, arg_505);
}
pub inline fn glPopAttrib() void {
    return glad_glPopAttrib.?();
}
pub inline fn glPushAttrib(arg_506: GLbitfield) void {
    return glad_glPushAttrib.?(arg_506);
}
pub inline fn glMap1d(arg_507: GLenum, arg_508: GLdouble, arg_509: GLdouble, arg_510: GLint, arg_511: GLint, arg_512: [*c]const GLdouble) void {
    return glad_glMap1d.?(arg_507, arg_508, arg_509, arg_510, arg_511, arg_512);
}
pub inline fn glMap1f(arg_513: GLenum, arg_514: GLfloat, arg_515: GLfloat, arg_516: GLint, arg_517: GLint, arg_518: [*c]const GLfloat) void {
    return glad_glMap1f.?(arg_513, arg_514, arg_515, arg_516, arg_517, arg_518);
}
pub inline fn glMap2d(arg_519: GLenum, arg_520: GLdouble, arg_521: GLdouble, arg_522: GLint, arg_523: GLint, arg_524: GLdouble, arg_525: GLdouble, arg_526: GLint, arg_527: GLint, arg_528: [*c]const GLdouble) void {
    return glad_glMap2d.?(arg_519, arg_520, arg_521, arg_522, arg_523, arg_524, arg_525, arg_526, arg_527, arg_528);
}
pub inline fn glMap2f(arg_529: GLenum, arg_530: GLfloat, arg_531: GLfloat, arg_532: GLint, arg_533: GLint, arg_534: GLfloat, arg_535: GLfloat, arg_536: GLint, arg_537: GLint, arg_538: [*c]const GLfloat) void {
    return glad_glMap2f.?(arg_529, arg_530, arg_531, arg_532, arg_533, arg_534, arg_535, arg_536, arg_537, arg_538);
}
pub inline fn glMapGrid1d(arg_539: GLint, arg_540: GLdouble, arg_541: GLdouble) void {
    return glad_glMapGrid1d.?(arg_539, arg_540, arg_541);
}
pub inline fn glMapGrid1f(arg_542: GLint, arg_543: GLfloat, arg_544: GLfloat) void {
    return glad_glMapGrid1f.?(arg_542, arg_543, arg_544);
}
pub inline fn glMapGrid2d(arg_545: GLint, arg_546: GLdouble, arg_547: GLdouble, arg_548: GLint, arg_549: GLdouble, arg_550: GLdouble) void {
    return glad_glMapGrid2d.?(arg_545, arg_546, arg_547, arg_548, arg_549, arg_550);
}
pub inline fn glMapGrid2f(arg_551: GLint, arg_552: GLfloat, arg_553: GLfloat, arg_554: GLint, arg_555: GLfloat, arg_556: GLfloat) void {
    return glad_glMapGrid2f.?(arg_551, arg_552, arg_553, arg_554, arg_555, arg_556);
}
pub inline fn glEvalCoord1d(arg_557: GLdouble) void {
    return glad_glEvalCoord1d.?(arg_557);
}
pub inline fn glEvalCoord1dv(arg_558: [*c]const GLdouble) void {
    return glad_glEvalCoord1dv.?(arg_558);
}
pub inline fn glEvalCoord1f(arg_559: GLfloat) void {
    return glad_glEvalCoord1f.?(arg_559);
}
pub inline fn glEvalCoord1fv(arg_560: [*c]const GLfloat) void {
    return glad_glEvalCoord1fv.?(arg_560);
}
pub inline fn glEvalCoord2d(arg_561: GLdouble, arg_562: GLdouble) void {
    return glad_glEvalCoord2d.?(arg_561, arg_562);
}
pub inline fn glEvalCoord2dv(arg_563: [*c]const GLdouble) void {
    return glad_glEvalCoord2dv.?(arg_563);
}
pub inline fn glEvalCoord2f(arg_564: GLfloat, arg_565: GLfloat) void {
    return glad_glEvalCoord2f.?(arg_564, arg_565);
}
pub inline fn glEvalCoord2fv(arg_566: [*c]const GLfloat) void {
    return glad_glEvalCoord2fv.?(arg_566);
}
pub inline fn glEvalMesh1(arg_567: GLenum, arg_568: GLint, arg_569: GLint) void {
    return glad_glEvalMesh1.?(arg_567, arg_568, arg_569);
}
pub inline fn glEvalPoint1(arg_570: GLint) void {
    return glad_glEvalPoint1.?(arg_570);
}
pub inline fn glEvalMesh2(arg_571: GLenum, arg_572: GLint, arg_573: GLint, arg_574: GLint, arg_575: GLint) void {
    return glad_glEvalMesh2.?(arg_571, arg_572, arg_573, arg_574, arg_575);
}
pub inline fn glEvalPoint2(arg_576: GLint, arg_577: GLint) void {
    return glad_glEvalPoint2.?(arg_576, arg_577);
}
pub inline fn glAlphaFunc(arg_578: GLenum, arg_579: GLfloat) void {
    return glad_glAlphaFunc.?(arg_578, arg_579);
}
pub inline fn glPixelZoom(arg_580: GLfloat, arg_581: GLfloat) void {
    return glad_glPixelZoom.?(arg_580, arg_581);
}
pub inline fn glPixelTransferf(arg_582: GLenum, arg_583: GLfloat) void {
    return glad_glPixelTransferf.?(arg_582, arg_583);
}
pub inline fn glPixelTransferi(arg_584: GLenum, arg_585: GLint) void {
    return glad_glPixelTransferi.?(arg_584, arg_585);
}
pub inline fn glPixelMapfv(arg_586: GLenum, arg_587: GLsizei, arg_588: [*c]const GLfloat) void {
    return glad_glPixelMapfv.?(arg_586, arg_587, arg_588);
}
pub inline fn glPixelMapuiv(arg_589: GLenum, arg_590: GLsizei, arg_591: [*c]const GLuint) void {
    return glad_glPixelMapuiv.?(arg_589, arg_590, arg_591);
}
pub inline fn glPixelMapusv(arg_592: GLenum, arg_593: GLsizei, arg_594: [*c]const GLushort) void {
    return glad_glPixelMapusv.?(arg_592, arg_593, arg_594);
}
pub inline fn glCopyPixels(arg_595: GLint, arg_596: GLint, arg_597: GLsizei, arg_598: GLsizei, arg_599: GLenum) void {
    return glad_glCopyPixels.?(arg_595, arg_596, arg_597, arg_598, arg_599);
}
pub inline fn glDrawPixels(arg_600: GLsizei, arg_601: GLsizei, arg_602: GLenum, arg_603: GLenum, arg_604: ?*const anyopaque) void {
    return glad_glDrawPixels.?(arg_600, arg_601, arg_602, arg_603, arg_604);
}
pub inline fn glGetClipPlane(arg_605: GLenum, arg_606: [*c]GLdouble) void {
    return glad_glGetClipPlane.?(arg_605, arg_606);
}
pub inline fn glGetLightfv(arg_607: GLenum, arg_608: GLenum, arg_609: [*c]GLfloat) void {
    return glad_glGetLightfv.?(arg_607, arg_608, arg_609);
}
pub inline fn glGetLightiv(arg_610: GLenum, arg_611: GLenum, arg_612: [*c]GLint) void {
    return glad_glGetLightiv.?(arg_610, arg_611, arg_612);
}
pub inline fn glGetMapdv(arg_613: GLenum, arg_614: GLenum, arg_615: [*c]GLdouble) void {
    return glad_glGetMapdv.?(arg_613, arg_614, arg_615);
}
pub inline fn glGetMapfv(arg_616: GLenum, arg_617: GLenum, arg_618: [*c]GLfloat) void {
    return glad_glGetMapfv.?(arg_616, arg_617, arg_618);
}
pub inline fn glGetMapiv(arg_619: GLenum, arg_620: GLenum, arg_621: [*c]GLint) void {
    return glad_glGetMapiv.?(arg_619, arg_620, arg_621);
}
pub inline fn glGetMaterialfv(arg_622: GLenum, arg_623: GLenum, arg_624: [*c]GLfloat) void {
    return glad_glGetMaterialfv.?(arg_622, arg_623, arg_624);
}
pub inline fn glGetMaterialiv(arg_625: GLenum, arg_626: GLenum, arg_627: [*c]GLint) void {
    return glad_glGetMaterialiv.?(arg_625, arg_626, arg_627);
}
pub inline fn glGetPixelMapfv(arg_628: GLenum, arg_629: [*c]GLfloat) void {
    return glad_glGetPixelMapfv.?(arg_628, arg_629);
}
pub inline fn glGetPixelMapuiv(arg_630: GLenum, arg_631: [*c]GLuint) void {
    return glad_glGetPixelMapuiv.?(arg_630, arg_631);
}
pub inline fn glGetPixelMapusv(arg_632: GLenum, arg_633: [*c]GLushort) void {
    return glad_glGetPixelMapusv.?(arg_632, arg_633);
}
pub inline fn glGetPolygonStipple(arg_634: [*c]GLubyte) void {
    return glad_glGetPolygonStipple.?(arg_634);
}
pub inline fn glGetTexEnvfv(arg_635: GLenum, arg_636: GLenum, arg_637: [*c]GLfloat) void {
    return glad_glGetTexEnvfv.?(arg_635, arg_636, arg_637);
}
pub inline fn glGetTexEnviv(arg_638: GLenum, arg_639: GLenum, arg_640: [*c]GLint) void {
    return glad_glGetTexEnviv.?(arg_638, arg_639, arg_640);
}
pub inline fn glGetTexGendv(arg_641: GLenum, arg_642: GLenum, arg_643: [*c]GLdouble) void {
    return glad_glGetTexGendv.?(arg_641, arg_642, arg_643);
}
pub inline fn glGetTexGenfv(arg_644: GLenum, arg_645: GLenum, arg_646: [*c]GLfloat) void {
    return glad_glGetTexGenfv.?(arg_644, arg_645, arg_646);
}
pub inline fn glGetTexGeniv(arg_647: GLenum, arg_648: GLenum, arg_649: [*c]GLint) void {
    return glad_glGetTexGeniv.?(arg_647, arg_648, arg_649);
}
pub inline fn glIsList(arg_650: GLuint) GLboolean {
    return glad_glIsList.?(arg_650);
}
pub inline fn glFrustum(arg_651: GLdouble, arg_652: GLdouble, arg_653: GLdouble, arg_654: GLdouble, arg_655: GLdouble, arg_656: GLdouble) void {
    return glad_glFrustum.?(arg_651, arg_652, arg_653, arg_654, arg_655, arg_656);
}
pub inline fn glLoadIdentity() void {
    return glad_glLoadIdentity.?();
}
pub inline fn glLoadMatrixf(arg_657: [*c]const GLfloat) void {
    return glad_glLoadMatrixf.?(arg_657);
}
pub inline fn glLoadMatrixd(arg_658: [*c]const GLdouble) void {
    return glad_glLoadMatrixd.?(arg_658);
}
pub inline fn glMatrixMode(arg_659: GLenum) void {
    return glad_glMatrixMode.?(arg_659);
}
pub inline fn glMultMatrixf(arg_660: [*c]const GLfloat) void {
    return glad_glMultMatrixf.?(arg_660);
}
pub inline fn glMultMatrixd(arg_661: [*c]const GLdouble) void {
    return glad_glMultMatrixd.?(arg_661);
}
pub inline fn glOrtho(arg_662: GLdouble, arg_663: GLdouble, arg_664: GLdouble, arg_665: GLdouble, arg_666: GLdouble, arg_667: GLdouble) void {
    return glad_glOrtho.?(arg_662, arg_663, arg_664, arg_665, arg_666, arg_667);
}
pub inline fn glPopMatrix() void {
    return glad_glPopMatrix.?();
}
pub inline fn glPushMatrix() void {
    return glad_glPushMatrix.?();
}
pub inline fn glRotated(arg_668: GLdouble, arg_669: GLdouble, arg_670: GLdouble, arg_671: GLdouble) void {
    return glad_glRotated.?(arg_668, arg_669, arg_670, arg_671);
}
pub inline fn glRotatef(arg_672: GLfloat, arg_673: GLfloat, arg_674: GLfloat, arg_675: GLfloat) void {
    return glad_glRotatef.?(arg_672, arg_673, arg_674, arg_675);
}
pub inline fn glScaled(arg_676: GLdouble, arg_677: GLdouble, arg_678: GLdouble) void {
    return glad_glScaled.?(arg_676, arg_677, arg_678);
}
pub inline fn glScalef(arg_679: GLfloat, arg_680: GLfloat, arg_681: GLfloat) void {
    return glad_glScalef.?(arg_679, arg_680, arg_681);
}
pub inline fn glTranslated(arg_682: GLdouble, arg_683: GLdouble, arg_684: GLdouble) void {
    return glad_glTranslated.?(arg_682, arg_683, arg_684);
}
pub inline fn glTranslatef(arg_685: GLfloat, arg_686: GLfloat, arg_687: GLfloat) void {
    return glad_glTranslatef.?(arg_685, arg_686, arg_687);
}
pub const GL_VERSION_1_1 = @as(c_int, 1);
pub inline fn glDrawArrays(arg_688: GLenum, arg_689: GLint, arg_690: GLsizei) void {
    return glad_glDrawArrays.?(arg_688, arg_689, arg_690);
}
pub inline fn glDrawElements(arg_691: GLenum, arg_692: GLsizei, arg_693: GLenum, arg_694: ?*const anyopaque) void {
    return glad_glDrawElements.?(arg_691, arg_692, arg_693, arg_694);
}
pub inline fn glGetPointerv(arg_695: GLenum, arg_696: [*c]?*anyopaque) void {
    return glad_glGetPointerv.?(arg_695, arg_696);
}
pub inline fn glPolygonOffset(arg_697: GLfloat, arg_698: GLfloat) void {
    return glad_glPolygonOffset.?(arg_697, arg_698);
}
pub inline fn glCopyTexImage1D(arg_699: GLenum, arg_700: GLint, arg_701: GLenum, arg_702: GLint, arg_703: GLint, arg_704: GLsizei, arg_705: GLint) void {
    return glad_glCopyTexImage1D.?(arg_699, arg_700, arg_701, arg_702, arg_703, arg_704, arg_705);
}
pub inline fn glCopyTexImage2D(arg_706: GLenum, arg_707: GLint, arg_708: GLenum, arg_709: GLint, arg_710: GLint, arg_711: GLsizei, arg_712: GLsizei, arg_713: GLint) void {
    return glad_glCopyTexImage2D.?(arg_706, arg_707, arg_708, arg_709, arg_710, arg_711, arg_712, arg_713);
}
pub inline fn glCopyTexSubImage1D(arg_714: GLenum, arg_715: GLint, arg_716: GLint, arg_717: GLint, arg_718: GLint, arg_719: GLsizei) void {
    return glad_glCopyTexSubImage1D.?(arg_714, arg_715, arg_716, arg_717, arg_718, arg_719);
}
pub inline fn glCopyTexSubImage2D(arg_720: GLenum, arg_721: GLint, arg_722: GLint, arg_723: GLint, arg_724: GLint, arg_725: GLint, arg_726: GLsizei, arg_727: GLsizei) void {
    return glad_glCopyTexSubImage2D.?(arg_720, arg_721, arg_722, arg_723, arg_724, arg_725, arg_726, arg_727);
}
pub inline fn glTexSubImage1D(arg_728: GLenum, arg_729: GLint, arg_730: GLint, arg_731: GLsizei, arg_732: GLenum, arg_733: GLenum, arg_734: ?*const anyopaque) void {
    return glad_glTexSubImage1D.?(arg_728, arg_729, arg_730, arg_731, arg_732, arg_733, arg_734);
}
pub inline fn glTexSubImage2D(arg_735: GLenum, arg_736: GLint, arg_737: GLint, arg_738: GLint, arg_739: GLsizei, arg_740: GLsizei, arg_741: GLenum, arg_742: GLenum, arg_743: ?*const anyopaque) void {
    return glad_glTexSubImage2D.?(arg_735, arg_736, arg_737, arg_738, arg_739, arg_740, arg_741, arg_742, arg_743);
}
pub inline fn glBindTexture(arg_744: GLenum, arg_745: GLuint) void {
    return glad_glBindTexture.?(arg_744, arg_745);
}
pub inline fn glDeleteTextures(arg_746: GLsizei, arg_747: [*c]const GLuint) void {
    return glad_glDeleteTextures.?(arg_746, arg_747);
}
pub inline fn glGenTextures(arg_748: GLsizei, arg_749: [*c]GLuint) void {
    return glad_glGenTextures.?(arg_748, arg_749);
}
pub inline fn glIsTexture(arg_750: GLuint) GLboolean {
    return glad_glIsTexture.?(arg_750);
}
pub inline fn glArrayElement(arg_751: GLint) void {
    return glad_glArrayElement.?(arg_751);
}
pub inline fn glColorPointer(arg_752: GLint, arg_753: GLenum, arg_754: GLsizei, arg_755: ?*const anyopaque) void {
    return glad_glColorPointer.?(arg_752, arg_753, arg_754, arg_755);
}
pub inline fn glDisableClientState(arg_756: GLenum) void {
    return glad_glDisableClientState.?(arg_756);
}
pub inline fn glEdgeFlagPointer(arg_757: GLsizei, arg_758: ?*const anyopaque) void {
    return glad_glEdgeFlagPointer.?(arg_757, arg_758);
}
pub inline fn glEnableClientState(arg_759: GLenum) void {
    return glad_glEnableClientState.?(arg_759);
}
pub inline fn glIndexPointer(arg_760: GLenum, arg_761: GLsizei, arg_762: ?*const anyopaque) void {
    return glad_glIndexPointer.?(arg_760, arg_761, arg_762);
}
pub inline fn glInterleavedArrays(arg_763: GLenum, arg_764: GLsizei, arg_765: ?*const anyopaque) void {
    return glad_glInterleavedArrays.?(arg_763, arg_764, arg_765);
}
pub inline fn glNormalPointer(arg_766: GLenum, arg_767: GLsizei, arg_768: ?*const anyopaque) void {
    return glad_glNormalPointer.?(arg_766, arg_767, arg_768);
}
pub inline fn glTexCoordPointer(arg_769: GLint, arg_770: GLenum, arg_771: GLsizei, arg_772: ?*const anyopaque) void {
    return glad_glTexCoordPointer.?(arg_769, arg_770, arg_771, arg_772);
}
pub inline fn glVertexPointer(arg_773: GLint, arg_774: GLenum, arg_775: GLsizei, arg_776: ?*const anyopaque) void {
    return glad_glVertexPointer.?(arg_773, arg_774, arg_775, arg_776);
}
pub inline fn glAreTexturesResident(arg_777: GLsizei, arg_778: [*c]const GLuint, arg_779: [*c]GLboolean) GLboolean {
    return glad_glAreTexturesResident.?(arg_777, arg_778, arg_779);
}
pub inline fn glPrioritizeTextures(arg_780: GLsizei, arg_781: [*c]const GLuint, arg_782: [*c]const GLfloat) void {
    return glad_glPrioritizeTextures.?(arg_780, arg_781, arg_782);
}
pub inline fn glIndexub(arg_783: GLubyte) void {
    return glad_glIndexub.?(arg_783);
}
pub inline fn glIndexubv(arg_784: [*c]const GLubyte) void {
    return glad_glIndexubv.?(arg_784);
}
pub inline fn glPopClientAttrib() void {
    return glad_glPopClientAttrib.?();
}
pub inline fn glPushClientAttrib(arg_785: GLbitfield) void {
    return glad_glPushClientAttrib.?(arg_785);
}
pub const GL_VERSION_1_2 = @as(c_int, 1);
pub inline fn glDrawRangeElements(arg_786: GLenum, arg_787: GLuint, arg_788: GLuint, arg_789: GLsizei, arg_790: GLenum, arg_791: ?*const anyopaque) void {
    return glad_glDrawRangeElements.?(arg_786, arg_787, arg_788, arg_789, arg_790, arg_791);
}
pub inline fn glTexImage3D(arg_792: GLenum, arg_793: GLint, arg_794: GLint, arg_795: GLsizei, arg_796: GLsizei, arg_797: GLsizei, arg_798: GLint, arg_799: GLenum, arg_800: GLenum, arg_801: ?*const anyopaque) void {
    return glad_glTexImage3D.?(arg_792, arg_793, arg_794, arg_795, arg_796, arg_797, arg_798, arg_799, arg_800, arg_801);
}
pub inline fn glTexSubImage3D(arg_802: GLenum, arg_803: GLint, arg_804: GLint, arg_805: GLint, arg_806: GLint, arg_807: GLsizei, arg_808: GLsizei, arg_809: GLsizei, arg_810: GLenum, arg_811: GLenum, arg_812: ?*const anyopaque) void {
    return glad_glTexSubImage3D.?(arg_802, arg_803, arg_804, arg_805, arg_806, arg_807, arg_808, arg_809, arg_810, arg_811, arg_812);
}
pub inline fn glCopyTexSubImage3D(arg_813: GLenum, arg_814: GLint, arg_815: GLint, arg_816: GLint, arg_817: GLint, arg_818: GLint, arg_819: GLint, arg_820: GLsizei, arg_821: GLsizei) void {
    return glad_glCopyTexSubImage3D.?(arg_813, arg_814, arg_815, arg_816, arg_817, arg_818, arg_819, arg_820, arg_821);
}
pub const GL_VERSION_1_3 = @as(c_int, 1);
pub inline fn glActiveTexture(arg_822: GLenum) void {
    return glad_glActiveTexture.?(arg_822);
}
pub inline fn glSampleCoverage(arg_823: GLfloat, arg_824: GLboolean) void {
    return glad_glSampleCoverage.?(arg_823, arg_824);
}
pub inline fn glCompressedTexImage3D(arg_825: GLenum, arg_826: GLint, arg_827: GLenum, arg_828: GLsizei, arg_829: GLsizei, arg_830: GLsizei, arg_831: GLint, arg_832: GLsizei, arg_833: ?*const anyopaque) void {
    return glad_glCompressedTexImage3D.?(arg_825, arg_826, arg_827, arg_828, arg_829, arg_830, arg_831, arg_832, arg_833);
}
pub inline fn glCompressedTexImage2D(arg_834: GLenum, arg_835: GLint, arg_836: GLenum, arg_837: GLsizei, arg_838: GLsizei, arg_839: GLint, arg_840: GLsizei, arg_841: ?*const anyopaque) void {
    return glad_glCompressedTexImage2D.?(arg_834, arg_835, arg_836, arg_837, arg_838, arg_839, arg_840, arg_841);
}
pub inline fn glCompressedTexImage1D(arg_842: GLenum, arg_843: GLint, arg_844: GLenum, arg_845: GLsizei, arg_846: GLint, arg_847: GLsizei, arg_848: ?*const anyopaque) void {
    return glad_glCompressedTexImage1D.?(arg_842, arg_843, arg_844, arg_845, arg_846, arg_847, arg_848);
}
pub inline fn glCompressedTexSubImage3D(arg_849: GLenum, arg_850: GLint, arg_851: GLint, arg_852: GLint, arg_853: GLint, arg_854: GLsizei, arg_855: GLsizei, arg_856: GLsizei, arg_857: GLenum, arg_858: GLsizei, arg_859: ?*const anyopaque) void {
    return glad_glCompressedTexSubImage3D.?(arg_849, arg_850, arg_851, arg_852, arg_853, arg_854, arg_855, arg_856, arg_857, arg_858, arg_859);
}
pub inline fn glCompressedTexSubImage2D(arg_860: GLenum, arg_861: GLint, arg_862: GLint, arg_863: GLint, arg_864: GLsizei, arg_865: GLsizei, arg_866: GLenum, arg_867: GLsizei, arg_868: ?*const anyopaque) void {
    return glad_glCompressedTexSubImage2D.?(arg_860, arg_861, arg_862, arg_863, arg_864, arg_865, arg_866, arg_867, arg_868);
}
pub inline fn glCompressedTexSubImage1D(arg_869: GLenum, arg_870: GLint, arg_871: GLint, arg_872: GLsizei, arg_873: GLenum, arg_874: GLsizei, arg_875: ?*const anyopaque) void {
    return glad_glCompressedTexSubImage1D.?(arg_869, arg_870, arg_871, arg_872, arg_873, arg_874, arg_875);
}
pub inline fn glGetCompressedTexImage(arg_876: GLenum, arg_877: GLint, arg_878: ?*anyopaque) void {
    return glad_glGetCompressedTexImage.?(arg_876, arg_877, arg_878);
}
pub inline fn glClientActiveTexture(arg_879: GLenum) void {
    return glad_glClientActiveTexture.?(arg_879);
}
pub inline fn glMultiTexCoord1d(arg_880: GLenum, arg_881: GLdouble) void {
    return glad_glMultiTexCoord1d.?(arg_880, arg_881);
}
pub inline fn glMultiTexCoord1dv(arg_882: GLenum, arg_883: [*c]const GLdouble) void {
    return glad_glMultiTexCoord1dv.?(arg_882, arg_883);
}
pub inline fn glMultiTexCoord1f(arg_884: GLenum, arg_885: GLfloat) void {
    return glad_glMultiTexCoord1f.?(arg_884, arg_885);
}
pub inline fn glMultiTexCoord1fv(arg_886: GLenum, arg_887: [*c]const GLfloat) void {
    return glad_glMultiTexCoord1fv.?(arg_886, arg_887);
}
pub inline fn glMultiTexCoord1i(arg_888: GLenum, arg_889: GLint) void {
    return glad_glMultiTexCoord1i.?(arg_888, arg_889);
}
pub inline fn glMultiTexCoord1iv(arg_890: GLenum, arg_891: [*c]const GLint) void {
    return glad_glMultiTexCoord1iv.?(arg_890, arg_891);
}
pub inline fn glMultiTexCoord1s(arg_892: GLenum, arg_893: GLshort) void {
    return glad_glMultiTexCoord1s.?(arg_892, arg_893);
}
pub inline fn glMultiTexCoord1sv(arg_894: GLenum, arg_895: [*c]const GLshort) void {
    return glad_glMultiTexCoord1sv.?(arg_894, arg_895);
}
pub inline fn glMultiTexCoord2d(arg_896: GLenum, arg_897: GLdouble, arg_898: GLdouble) void {
    return glad_glMultiTexCoord2d.?(arg_896, arg_897, arg_898);
}
pub inline fn glMultiTexCoord2dv(arg_899: GLenum, arg_900: [*c]const GLdouble) void {
    return glad_glMultiTexCoord2dv.?(arg_899, arg_900);
}
pub inline fn glMultiTexCoord2f(arg_901: GLenum, arg_902: GLfloat, arg_903: GLfloat) void {
    return glad_glMultiTexCoord2f.?(arg_901, arg_902, arg_903);
}
pub inline fn glMultiTexCoord2fv(arg_904: GLenum, arg_905: [*c]const GLfloat) void {
    return glad_glMultiTexCoord2fv.?(arg_904, arg_905);
}
pub inline fn glMultiTexCoord2i(arg_906: GLenum, arg_907: GLint, arg_908: GLint) void {
    return glad_glMultiTexCoord2i.?(arg_906, arg_907, arg_908);
}
pub inline fn glMultiTexCoord2iv(arg_909: GLenum, arg_910: [*c]const GLint) void {
    return glad_glMultiTexCoord2iv.?(arg_909, arg_910);
}
pub inline fn glMultiTexCoord2s(arg_911: GLenum, arg_912: GLshort, arg_913: GLshort) void {
    return glad_glMultiTexCoord2s.?(arg_911, arg_912, arg_913);
}
pub inline fn glMultiTexCoord2sv(arg_914: GLenum, arg_915: [*c]const GLshort) void {
    return glad_glMultiTexCoord2sv.?(arg_914, arg_915);
}
pub inline fn glMultiTexCoord3d(arg_916: GLenum, arg_917: GLdouble, arg_918: GLdouble, arg_919: GLdouble) void {
    return glad_glMultiTexCoord3d.?(arg_916, arg_917, arg_918, arg_919);
}
pub inline fn glMultiTexCoord3dv(arg_920: GLenum, arg_921: [*c]const GLdouble) void {
    return glad_glMultiTexCoord3dv.?(arg_920, arg_921);
}
pub inline fn glMultiTexCoord3f(arg_922: GLenum, arg_923: GLfloat, arg_924: GLfloat, arg_925: GLfloat) void {
    return glad_glMultiTexCoord3f.?(arg_922, arg_923, arg_924, arg_925);
}
pub inline fn glMultiTexCoord3fv(arg_926: GLenum, arg_927: [*c]const GLfloat) void {
    return glad_glMultiTexCoord3fv.?(arg_926, arg_927);
}
pub inline fn glMultiTexCoord3i(arg_928: GLenum, arg_929: GLint, arg_930: GLint, arg_931: GLint) void {
    return glad_glMultiTexCoord3i.?(arg_928, arg_929, arg_930, arg_931);
}
pub inline fn glMultiTexCoord3iv(arg_932: GLenum, arg_933: [*c]const GLint) void {
    return glad_glMultiTexCoord3iv.?(arg_932, arg_933);
}
pub inline fn glMultiTexCoord3s(arg_934: GLenum, arg_935: GLshort, arg_936: GLshort, arg_937: GLshort) void {
    return glad_glMultiTexCoord3s.?(arg_934, arg_935, arg_936, arg_937);
}
pub inline fn glMultiTexCoord3sv(arg_938: GLenum, arg_939: [*c]const GLshort) void {
    return glad_glMultiTexCoord3sv.?(arg_938, arg_939);
}
pub inline fn glMultiTexCoord4d(arg_940: GLenum, arg_941: GLdouble, arg_942: GLdouble, arg_943: GLdouble, arg_944: GLdouble) void {
    return glad_glMultiTexCoord4d.?(arg_940, arg_941, arg_942, arg_943, arg_944);
}
pub inline fn glMultiTexCoord4dv(arg_945: GLenum, arg_946: [*c]const GLdouble) void {
    return glad_glMultiTexCoord4dv.?(arg_945, arg_946);
}
pub inline fn glMultiTexCoord4f(arg_947: GLenum, arg_948: GLfloat, arg_949: GLfloat, arg_950: GLfloat, arg_951: GLfloat) void {
    return glad_glMultiTexCoord4f.?(arg_947, arg_948, arg_949, arg_950, arg_951);
}
pub inline fn glMultiTexCoord4fv(arg_952: GLenum, arg_953: [*c]const GLfloat) void {
    return glad_glMultiTexCoord4fv.?(arg_952, arg_953);
}
pub inline fn glMultiTexCoord4i(arg_954: GLenum, arg_955: GLint, arg_956: GLint, arg_957: GLint, arg_958: GLint) void {
    return glad_glMultiTexCoord4i.?(arg_954, arg_955, arg_956, arg_957, arg_958);
}
pub inline fn glMultiTexCoord4iv(arg_959: GLenum, arg_960: [*c]const GLint) void {
    return glad_glMultiTexCoord4iv.?(arg_959, arg_960);
}
pub inline fn glMultiTexCoord4s(arg_961: GLenum, arg_962: GLshort, arg_963: GLshort, arg_964: GLshort, arg_965: GLshort) void {
    return glad_glMultiTexCoord4s.?(arg_961, arg_962, arg_963, arg_964, arg_965);
}
pub inline fn glMultiTexCoord4sv(arg_966: GLenum, arg_967: [*c]const GLshort) void {
    return glad_glMultiTexCoord4sv.?(arg_966, arg_967);
}
pub inline fn glLoadTransposeMatrixf(arg_968: [*c]const GLfloat) void {
    return glad_glLoadTransposeMatrixf.?(arg_968);
}
pub inline fn glLoadTransposeMatrixd(arg_969: [*c]const GLdouble) void {
    return glad_glLoadTransposeMatrixd.?(arg_969);
}
pub inline fn glMultTransposeMatrixf(arg_970: [*c]const GLfloat) void {
    return glad_glMultTransposeMatrixf.?(arg_970);
}
pub inline fn glMultTransposeMatrixd(arg_971: [*c]const GLdouble) void {
    return glad_glMultTransposeMatrixd.?(arg_971);
}
pub const GL_VERSION_1_4 = @as(c_int, 1);
pub inline fn glBlendFuncSeparate(arg_972: GLenum, arg_973: GLenum, arg_974: GLenum, arg_975: GLenum) void {
    return glad_glBlendFuncSeparate.?(arg_972, arg_973, arg_974, arg_975);
}
pub inline fn glMultiDrawArrays(arg_976: GLenum, arg_977: [*c]const GLint, arg_978: [*c]const GLsizei, arg_979: GLsizei) void {
    return glad_glMultiDrawArrays.?(arg_976, arg_977, arg_978, arg_979);
}
pub inline fn glMultiDrawElements(arg_980: GLenum, arg_981: [*c]const GLsizei, arg_982: GLenum, arg_983: [*c]const ?*const anyopaque, arg_984: GLsizei) void {
    return glad_glMultiDrawElements.?(arg_980, arg_981, arg_982, arg_983, arg_984);
}
pub inline fn glPointParameterf(arg_985: GLenum, arg_986: GLfloat) void {
    return glad_glPointParameterf.?(arg_985, arg_986);
}
pub inline fn glPointParameterfv(arg_987: GLenum, arg_988: [*c]const GLfloat) void {
    return glad_glPointParameterfv.?(arg_987, arg_988);
}
pub inline fn glPointParameteri(arg_989: GLenum, arg_990: GLint) void {
    return glad_glPointParameteri.?(arg_989, arg_990);
}
pub inline fn glPointParameteriv(arg_991: GLenum, arg_992: [*c]const GLint) void {
    return glad_glPointParameteriv.?(arg_991, arg_992);
}
pub inline fn glFogCoordf(arg_993: GLfloat) void {
    return glad_glFogCoordf.?(arg_993);
}
pub inline fn glFogCoordfv(arg_994: [*c]const GLfloat) void {
    return glad_glFogCoordfv.?(arg_994);
}
pub inline fn glFogCoordd(arg_995: GLdouble) void {
    return glad_glFogCoordd.?(arg_995);
}
pub inline fn glFogCoorddv(arg_996: [*c]const GLdouble) void {
    return glad_glFogCoorddv.?(arg_996);
}
pub inline fn glFogCoordPointer(arg_997: GLenum, arg_998: GLsizei, arg_999: ?*const anyopaque) void {
    return glad_glFogCoordPointer.?(arg_997, arg_998, arg_999);
}
pub inline fn glSecondaryColor3b(arg_1000: GLbyte, arg_1001: GLbyte, arg_1002: GLbyte) void {
    return glad_glSecondaryColor3b.?(arg_1000, arg_1001, arg_1002);
}
pub inline fn glSecondaryColor3bv(arg_1003: [*c]const GLbyte) void {
    return glad_glSecondaryColor3bv.?(arg_1003);
}
pub inline fn glSecondaryColor3d(arg_1004: GLdouble, arg_1005: GLdouble, arg_1006: GLdouble) void {
    return glad_glSecondaryColor3d.?(arg_1004, arg_1005, arg_1006);
}
pub inline fn glSecondaryColor3dv(arg_1007: [*c]const GLdouble) void {
    return glad_glSecondaryColor3dv.?(arg_1007);
}
pub inline fn glSecondaryColor3f(arg_1008: GLfloat, arg_1009: GLfloat, arg_1010: GLfloat) void {
    return glad_glSecondaryColor3f.?(arg_1008, arg_1009, arg_1010);
}
pub inline fn glSecondaryColor3fv(arg_1011: [*c]const GLfloat) void {
    return glad_glSecondaryColor3fv.?(arg_1011);
}
pub inline fn glSecondaryColor3i(arg_1012: GLint, arg_1013: GLint, arg_1014: GLint) void {
    return glad_glSecondaryColor3i.?(arg_1012, arg_1013, arg_1014);
}
pub inline fn glSecondaryColor3iv(arg_1015: [*c]const GLint) void {
    return glad_glSecondaryColor3iv.?(arg_1015);
}
pub inline fn glSecondaryColor3s(arg_1016: GLshort, arg_1017: GLshort, arg_1018: GLshort) void {
    return glad_glSecondaryColor3s.?(arg_1016, arg_1017, arg_1018);
}
pub inline fn glSecondaryColor3sv(arg_1019: [*c]const GLshort) void {
    return glad_glSecondaryColor3sv.?(arg_1019);
}
pub inline fn glSecondaryColor3ub(arg_1020: GLubyte, arg_1021: GLubyte, arg_1022: GLubyte) void {
    return glad_glSecondaryColor3ub.?(arg_1020, arg_1021, arg_1022);
}
pub inline fn glSecondaryColor3ubv(arg_1023: [*c]const GLubyte) void {
    return glad_glSecondaryColor3ubv.?(arg_1023);
}
pub inline fn glSecondaryColor3ui(arg_1024: GLuint, arg_1025: GLuint, arg_1026: GLuint) void {
    return glad_glSecondaryColor3ui.?(arg_1024, arg_1025, arg_1026);
}
pub inline fn glSecondaryColor3uiv(arg_1027: [*c]const GLuint) void {
    return glad_glSecondaryColor3uiv.?(arg_1027);
}
pub inline fn glSecondaryColor3us(arg_1028: GLushort, arg_1029: GLushort, arg_1030: GLushort) void {
    return glad_glSecondaryColor3us.?(arg_1028, arg_1029, arg_1030);
}
pub inline fn glSecondaryColor3usv(arg_1031: [*c]const GLushort) void {
    return glad_glSecondaryColor3usv.?(arg_1031);
}
pub inline fn glSecondaryColorPointer(arg_1032: GLint, arg_1033: GLenum, arg_1034: GLsizei, arg_1035: ?*const anyopaque) void {
    return glad_glSecondaryColorPointer.?(arg_1032, arg_1033, arg_1034, arg_1035);
}
pub inline fn glWindowPos2d(arg_1036: GLdouble, arg_1037: GLdouble) void {
    return glad_glWindowPos2d.?(arg_1036, arg_1037);
}
pub inline fn glWindowPos2dv(arg_1038: [*c]const GLdouble) void {
    return glad_glWindowPos2dv.?(arg_1038);
}
pub inline fn glWindowPos2f(arg_1039: GLfloat, arg_1040: GLfloat) void {
    return glad_glWindowPos2f.?(arg_1039, arg_1040);
}
pub inline fn glWindowPos2fv(arg_1041: [*c]const GLfloat) void {
    return glad_glWindowPos2fv.?(arg_1041);
}
pub inline fn glWindowPos2i(arg_1042: GLint, arg_1043: GLint) void {
    return glad_glWindowPos2i.?(arg_1042, arg_1043);
}
pub inline fn glWindowPos2iv(arg_1044: [*c]const GLint) void {
    return glad_glWindowPos2iv.?(arg_1044);
}
pub inline fn glWindowPos2s(arg_1045: GLshort, arg_1046: GLshort) void {
    return glad_glWindowPos2s.?(arg_1045, arg_1046);
}
pub inline fn glWindowPos2sv(arg_1047: [*c]const GLshort) void {
    return glad_glWindowPos2sv.?(arg_1047);
}
pub inline fn glWindowPos3d(arg_1048: GLdouble, arg_1049: GLdouble, arg_1050: GLdouble) void {
    return glad_glWindowPos3d.?(arg_1048, arg_1049, arg_1050);
}
pub inline fn glWindowPos3dv(arg_1051: [*c]const GLdouble) void {
    return glad_glWindowPos3dv.?(arg_1051);
}
pub inline fn glWindowPos3f(arg_1052: GLfloat, arg_1053: GLfloat, arg_1054: GLfloat) void {
    return glad_glWindowPos3f.?(arg_1052, arg_1053, arg_1054);
}
pub inline fn glWindowPos3fv(arg_1055: [*c]const GLfloat) void {
    return glad_glWindowPos3fv.?(arg_1055);
}
pub inline fn glWindowPos3i(arg_1056: GLint, arg_1057: GLint, arg_1058: GLint) void {
    return glad_glWindowPos3i.?(arg_1056, arg_1057, arg_1058);
}
pub inline fn glWindowPos3iv(arg_1059: [*c]const GLint) void {
    return glad_glWindowPos3iv.?(arg_1059);
}
pub inline fn glWindowPos3s(arg_1060: GLshort, arg_1061: GLshort, arg_1062: GLshort) void {
    return glad_glWindowPos3s.?(arg_1060, arg_1061, arg_1062);
}
pub inline fn glWindowPos3sv(arg_1063: [*c]const GLshort) void {
    return glad_glWindowPos3sv.?(arg_1063);
}
pub inline fn glBlendColor(arg_1064: GLfloat, arg_1065: GLfloat, arg_1066: GLfloat, arg_1067: GLfloat) void {
    return glad_glBlendColor.?(arg_1064, arg_1065, arg_1066, arg_1067);
}
pub inline fn glBlendEquation(arg_1068: GLenum) void {
    return glad_glBlendEquation.?(arg_1068);
}
pub const GL_VERSION_1_5 = @as(c_int, 1);
pub inline fn glGenQueries(arg_1069: GLsizei, arg_1070: [*c]GLuint) void {
    return glad_glGenQueries.?(arg_1069, arg_1070);
}
pub inline fn glDeleteQueries(arg_1071: GLsizei, arg_1072: [*c]const GLuint) void {
    return glad_glDeleteQueries.?(arg_1071, arg_1072);
}
pub inline fn glIsQuery(arg_1073: GLuint) GLboolean {
    return glad_glIsQuery.?(arg_1073);
}
pub inline fn glBeginQuery(arg_1074: GLenum, arg_1075: GLuint) void {
    return glad_glBeginQuery.?(arg_1074, arg_1075);
}
pub inline fn glEndQuery(arg_1076: GLenum) void {
    return glad_glEndQuery.?(arg_1076);
}
pub inline fn glGetQueryiv(arg_1077: GLenum, arg_1078: GLenum, arg_1079: [*c]GLint) void {
    return glad_glGetQueryiv.?(arg_1077, arg_1078, arg_1079);
}
pub inline fn glGetQueryObjectiv(arg_1080: GLuint, arg_1081: GLenum, arg_1082: [*c]GLint) void {
    return glad_glGetQueryObjectiv.?(arg_1080, arg_1081, arg_1082);
}
pub inline fn glGetQueryObjectuiv(arg_1083: GLuint, arg_1084: GLenum, arg_1085: [*c]GLuint) void {
    return glad_glGetQueryObjectuiv.?(arg_1083, arg_1084, arg_1085);
}
pub inline fn glBindBuffer(arg_1086: GLenum, arg_1087: GLuint) void {
    return glad_glBindBuffer.?(arg_1086, arg_1087);
}
pub inline fn glDeleteBuffers(arg_1088: GLsizei, arg_1089: [*c]const GLuint) void {
    return glad_glDeleteBuffers.?(arg_1088, arg_1089);
}
pub inline fn glGenBuffers(arg_1090: GLsizei, arg_1091: [*c]GLuint) void {
    return glad_glGenBuffers.?(arg_1090, arg_1091);
}
pub inline fn glIsBuffer(arg_1092: GLuint) GLboolean {
    return glad_glIsBuffer.?(arg_1092);
}
pub inline fn glBufferData(arg_1093: GLenum, arg_1094: GLsizeiptr, arg_1095: ?*const anyopaque, arg_1096: GLenum) void {
    return glad_glBufferData.?(arg_1093, arg_1094, arg_1095, arg_1096);
}
pub inline fn glBufferSubData(arg_1097: GLenum, arg_1098: GLintptr, arg_1099: GLsizeiptr, arg_1100: ?*const anyopaque) void {
    return glad_glBufferSubData.?(arg_1097, arg_1098, arg_1099, arg_1100);
}
pub inline fn glGetBufferSubData(arg_1101: GLenum, arg_1102: GLintptr, arg_1103: GLsizeiptr, arg_1104: ?*anyopaque) void {
    return glad_glGetBufferSubData.?(arg_1101, arg_1102, arg_1103, arg_1104);
}
pub inline fn glMapBuffer(arg_1105: GLenum, arg_1106: GLenum) ?*anyopaque {
    return glad_glMapBuffer.?(arg_1105, arg_1106);
}
pub inline fn glUnmapBuffer(arg_1107: GLenum) GLboolean {
    return glad_glUnmapBuffer.?(arg_1107);
}
pub inline fn glGetBufferParameteriv(arg_1108: GLenum, arg_1109: GLenum, arg_1110: [*c]GLint) void {
    return glad_glGetBufferParameteriv.?(arg_1108, arg_1109, arg_1110);
}
pub inline fn glGetBufferPointerv(arg_1111: GLenum, arg_1112: GLenum, arg_1113: [*c]?*anyopaque) void {
    return glad_glGetBufferPointerv.?(arg_1111, arg_1112, arg_1113);
}
pub const GL_VERSION_2_0 = @as(c_int, 1);
pub inline fn glBlendEquationSeparate(arg_1114: GLenum, arg_1115: GLenum) void {
    return glad_glBlendEquationSeparate.?(arg_1114, arg_1115);
}
pub inline fn glDrawBuffers(arg_1116: GLsizei, arg_1117: [*c]const GLenum) void {
    return glad_glDrawBuffers.?(arg_1116, arg_1117);
}
pub inline fn glStencilOpSeparate(arg_1118: GLenum, arg_1119: GLenum, arg_1120: GLenum, arg_1121: GLenum) void {
    return glad_glStencilOpSeparate.?(arg_1118, arg_1119, arg_1120, arg_1121);
}
pub inline fn glStencilFuncSeparate(arg_1122: GLenum, arg_1123: GLenum, arg_1124: GLint, arg_1125: GLuint) void {
    return glad_glStencilFuncSeparate.?(arg_1122, arg_1123, arg_1124, arg_1125);
}
pub inline fn glStencilMaskSeparate(arg_1126: GLenum, arg_1127: GLuint) void {
    return glad_glStencilMaskSeparate.?(arg_1126, arg_1127);
}
pub inline fn glAttachShader(arg_1128: GLuint, arg_1129: GLuint) void {
    return glad_glAttachShader.?(arg_1128, arg_1129);
}
pub inline fn glBindAttribLocation(arg_1130: GLuint, arg_1131: GLuint, arg_1132: [*c]const GLchar) void {
    return glad_glBindAttribLocation.?(arg_1130, arg_1131, arg_1132);
}
pub inline fn glCompileShader(arg_1133: GLuint) void {
    return glad_glCompileShader.?(arg_1133);
}
pub inline fn glCreateProgram() GLuint {
    return glad_glCreateProgram.?();
}
pub inline fn glCreateShader(arg_1134: GLenum) GLuint {
    return glad_glCreateShader.?(arg_1134);
}
pub inline fn glDeleteProgram(arg_1135: GLuint) void {
    return glad_glDeleteProgram.?(arg_1135);
}
pub inline fn glDeleteShader(arg_1136: GLuint) void {
    return glad_glDeleteShader.?(arg_1136);
}
pub inline fn glDetachShader(arg_1137: GLuint, arg_1138: GLuint) void {
    return glad_glDetachShader.?(arg_1137, arg_1138);
}
pub inline fn glDisableVertexAttribArray(arg_1139: GLuint) void {
    return glad_glDisableVertexAttribArray.?(arg_1139);
}
pub inline fn glEnableVertexAttribArray(arg_1140: GLuint) void {
    return glad_glEnableVertexAttribArray.?(arg_1140);
}
pub inline fn glGetActiveAttrib(arg_1141: GLuint, arg_1142: GLuint, arg_1143: GLsizei, arg_1144: [*c]GLsizei, arg_1145: [*c]GLint, arg_1146: [*c]GLenum, arg_1147: [*c]GLchar) void {
    return glad_glGetActiveAttrib.?(arg_1141, arg_1142, arg_1143, arg_1144, arg_1145, arg_1146, arg_1147);
}
pub inline fn glGetActiveUniform(arg_1148: GLuint, arg_1149: GLuint, arg_1150: GLsizei, arg_1151: [*c]GLsizei, arg_1152: [*c]GLint, arg_1153: [*c]GLenum, arg_1154: [*c]GLchar) void {
    return glad_glGetActiveUniform.?(arg_1148, arg_1149, arg_1150, arg_1151, arg_1152, arg_1153, arg_1154);
}
pub inline fn glGetAttachedShaders(arg_1155: GLuint, arg_1156: GLsizei, arg_1157: [*c]GLsizei, arg_1158: [*c]GLuint) void {
    return glad_glGetAttachedShaders.?(arg_1155, arg_1156, arg_1157, arg_1158);
}
pub inline fn glGetAttribLocation(arg_1159: GLuint, arg_1160: [*c]const GLchar) GLint {
    return glad_glGetAttribLocation.?(arg_1159, arg_1160);
}
pub inline fn glGetProgramiv(arg_1161: GLuint, arg_1162: GLenum, arg_1163: [*c]GLint) void {
    return glad_glGetProgramiv.?(arg_1161, arg_1162, arg_1163);
}
pub inline fn glGetProgramInfoLog(arg_1164: GLuint, arg_1165: GLsizei, arg_1166: [*c]GLsizei, arg_1167: [*c]GLchar) void {
    return glad_glGetProgramInfoLog.?(arg_1164, arg_1165, arg_1166, arg_1167);
}
pub inline fn glGetShaderiv(arg_1168: GLuint, arg_1169: GLenum, arg_1170: [*c]GLint) void {
    return glad_glGetShaderiv.?(arg_1168, arg_1169, arg_1170);
}
pub inline fn glGetShaderInfoLog(arg_1171: GLuint, arg_1172: GLsizei, arg_1173: [*c]GLsizei, arg_1174: [*c]GLchar) void {
    return glad_glGetShaderInfoLog.?(arg_1171, arg_1172, arg_1173, arg_1174);
}
pub inline fn glGetShaderSource(arg_1175: GLuint, arg_1176: GLsizei, arg_1177: [*c]GLsizei, arg_1178: [*c]GLchar) void {
    return glad_glGetShaderSource.?(arg_1175, arg_1176, arg_1177, arg_1178);
}
pub inline fn glGetUniformLocation(arg_1179: GLuint, arg_1180: [*c]const GLchar) GLint {
    return glad_glGetUniformLocation.?(arg_1179, arg_1180);
}
pub inline fn glGetUniformfv(arg_1181: GLuint, arg_1182: GLint, arg_1183: [*c]GLfloat) void {
    return glad_glGetUniformfv.?(arg_1181, arg_1182, arg_1183);
}
pub inline fn glGetUniformiv(arg_1184: GLuint, arg_1185: GLint, arg_1186: [*c]GLint) void {
    return glad_glGetUniformiv.?(arg_1184, arg_1185, arg_1186);
}
pub inline fn glGetVertexAttribdv(arg_1187: GLuint, arg_1188: GLenum, arg_1189: [*c]GLdouble) void {
    return glad_glGetVertexAttribdv.?(arg_1187, arg_1188, arg_1189);
}
pub inline fn glGetVertexAttribfv(arg_1190: GLuint, arg_1191: GLenum, arg_1192: [*c]GLfloat) void {
    return glad_glGetVertexAttribfv.?(arg_1190, arg_1191, arg_1192);
}
pub inline fn glGetVertexAttribiv(arg_1193: GLuint, arg_1194: GLenum, arg_1195: [*c]GLint) void {
    return glad_glGetVertexAttribiv.?(arg_1193, arg_1194, arg_1195);
}
pub inline fn glGetVertexAttribPointerv(arg_1196: GLuint, arg_1197: GLenum, arg_1198: [*c]?*anyopaque) void {
    return glad_glGetVertexAttribPointerv.?(arg_1196, arg_1197, arg_1198);
}
pub inline fn glIsProgram(arg_1199: GLuint) GLboolean {
    return glad_glIsProgram.?(arg_1199);
}
pub inline fn glIsShader(arg_1200: GLuint) GLboolean {
    return glad_glIsShader.?(arg_1200);
}
pub inline fn glLinkProgram(arg_1201: GLuint) void {
    return glad_glLinkProgram.?(arg_1201);
}
pub inline fn glShaderSource(arg_1202: GLuint, arg_1203: GLsizei, arg_1204: [*c]const [*c]const GLchar, arg_1205: [*c]const GLint) void {
    return glad_glShaderSource.?(arg_1202, arg_1203, arg_1204, arg_1205);
}
pub inline fn glUseProgram(arg_1206: GLuint) void {
    return glad_glUseProgram.?(arg_1206);
}
pub inline fn glUniform1f(arg_1207: GLint, arg_1208: GLfloat) void {
    return glad_glUniform1f.?(arg_1207, arg_1208);
}
pub inline fn glUniform2f(arg_1209: GLint, arg_1210: GLfloat, arg_1211: GLfloat) void {
    return glad_glUniform2f.?(arg_1209, arg_1210, arg_1211);
}
pub inline fn glUniform3f(arg_1212: GLint, arg_1213: GLfloat, arg_1214: GLfloat, arg_1215: GLfloat) void {
    return glad_glUniform3f.?(arg_1212, arg_1213, arg_1214, arg_1215);
}
pub inline fn glUniform4f(arg_1216: GLint, arg_1217: GLfloat, arg_1218: GLfloat, arg_1219: GLfloat, arg_1220: GLfloat) void {
    return glad_glUniform4f.?(arg_1216, arg_1217, arg_1218, arg_1219, arg_1220);
}
pub inline fn glUniform1i(arg_1221: GLint, arg_1222: GLint) void {
    return glad_glUniform1i.?(arg_1221, arg_1222);
}
pub inline fn glUniform2i(arg_1223: GLint, arg_1224: GLint, arg_1225: GLint) void {
    return glad_glUniform2i.?(arg_1223, arg_1224, arg_1225);
}
pub inline fn glUniform3i(arg_1226: GLint, arg_1227: GLint, arg_1228: GLint, arg_1229: GLint) void {
    return glad_glUniform3i.?(arg_1226, arg_1227, arg_1228, arg_1229);
}
pub inline fn glUniform4i(arg_1230: GLint, arg_1231: GLint, arg_1232: GLint, arg_1233: GLint, arg_1234: GLint) void {
    return glad_glUniform4i.?(arg_1230, arg_1231, arg_1232, arg_1233, arg_1234);
}
pub inline fn glUniform1fv(arg_1235: GLint, arg_1236: GLsizei, arg_1237: [*c]const GLfloat) void {
    return glad_glUniform1fv.?(arg_1235, arg_1236, arg_1237);
}
pub inline fn glUniform2fv(arg_1238: GLint, arg_1239: GLsizei, arg_1240: [*c]const GLfloat) void {
    return glad_glUniform2fv.?(arg_1238, arg_1239, arg_1240);
}
pub inline fn glUniform3fv(arg_1241: GLint, arg_1242: GLsizei, arg_1243: [*c]const GLfloat) void {
    return glad_glUniform3fv.?(arg_1241, arg_1242, arg_1243);
}
pub inline fn glUniform4fv(arg_1244: GLint, arg_1245: GLsizei, arg_1246: [*c]const GLfloat) void {
    return glad_glUniform4fv.?(arg_1244, arg_1245, arg_1246);
}
pub inline fn glUniform1iv(arg_1247: GLint, arg_1248: GLsizei, arg_1249: [*c]const GLint) void {
    return glad_glUniform1iv.?(arg_1247, arg_1248, arg_1249);
}
pub inline fn glUniform2iv(arg_1250: GLint, arg_1251: GLsizei, arg_1252: [*c]const GLint) void {
    return glad_glUniform2iv.?(arg_1250, arg_1251, arg_1252);
}
pub inline fn glUniform3iv(arg_1253: GLint, arg_1254: GLsizei, arg_1255: [*c]const GLint) void {
    return glad_glUniform3iv.?(arg_1253, arg_1254, arg_1255);
}
pub inline fn glUniform4iv(arg_1256: GLint, arg_1257: GLsizei, arg_1258: [*c]const GLint) void {
    return glad_glUniform4iv.?(arg_1256, arg_1257, arg_1258);
}
pub inline fn glUniformMatrix2fv(arg_1259: GLint, arg_1260: GLsizei, arg_1261: GLboolean, arg_1262: [*c]const GLfloat) void {
    return glad_glUniformMatrix2fv.?(arg_1259, arg_1260, arg_1261, arg_1262);
}
pub inline fn glUniformMatrix3fv(arg_1263: GLint, arg_1264: GLsizei, arg_1265: GLboolean, arg_1266: [*c]const GLfloat) void {
    return glad_glUniformMatrix3fv.?(arg_1263, arg_1264, arg_1265, arg_1266);
}
pub inline fn glUniformMatrix4fv(arg_1267: GLint, arg_1268: GLsizei, arg_1269: GLboolean, arg_1270: [*c]const GLfloat) void {
    return glad_glUniformMatrix4fv.?(arg_1267, arg_1268, arg_1269, arg_1270);
}
pub inline fn glValidateProgram(arg_1271: GLuint) void {
    return glad_glValidateProgram.?(arg_1271);
}
pub inline fn glVertexAttrib1d(arg_1272: GLuint, arg_1273: GLdouble) void {
    return glad_glVertexAttrib1d.?(arg_1272, arg_1273);
}
pub inline fn glVertexAttrib1dv(arg_1274: GLuint, arg_1275: [*c]const GLdouble) void {
    return glad_glVertexAttrib1dv.?(arg_1274, arg_1275);
}
pub inline fn glVertexAttrib1f(arg_1276: GLuint, arg_1277: GLfloat) void {
    return glad_glVertexAttrib1f.?(arg_1276, arg_1277);
}
pub inline fn glVertexAttrib1fv(arg_1278: GLuint, arg_1279: [*c]const GLfloat) void {
    return glad_glVertexAttrib1fv.?(arg_1278, arg_1279);
}
pub inline fn glVertexAttrib1s(arg_1280: GLuint, arg_1281: GLshort) void {
    return glad_glVertexAttrib1s.?(arg_1280, arg_1281);
}
pub inline fn glVertexAttrib1sv(arg_1282: GLuint, arg_1283: [*c]const GLshort) void {
    return glad_glVertexAttrib1sv.?(arg_1282, arg_1283);
}
pub inline fn glVertexAttrib2d(arg_1284: GLuint, arg_1285: GLdouble, arg_1286: GLdouble) void {
    return glad_glVertexAttrib2d.?(arg_1284, arg_1285, arg_1286);
}
pub inline fn glVertexAttrib2dv(arg_1287: GLuint, arg_1288: [*c]const GLdouble) void {
    return glad_glVertexAttrib2dv.?(arg_1287, arg_1288);
}
pub inline fn glVertexAttrib2f(arg_1289: GLuint, arg_1290: GLfloat, arg_1291: GLfloat) void {
    return glad_glVertexAttrib2f.?(arg_1289, arg_1290, arg_1291);
}
pub inline fn glVertexAttrib2fv(arg_1292: GLuint, arg_1293: [*c]const GLfloat) void {
    return glad_glVertexAttrib2fv.?(arg_1292, arg_1293);
}
pub inline fn glVertexAttrib2s(arg_1294: GLuint, arg_1295: GLshort, arg_1296: GLshort) void {
    return glad_glVertexAttrib2s.?(arg_1294, arg_1295, arg_1296);
}
pub inline fn glVertexAttrib2sv(arg_1297: GLuint, arg_1298: [*c]const GLshort) void {
    return glad_glVertexAttrib2sv.?(arg_1297, arg_1298);
}
pub inline fn glVertexAttrib3d(arg_1299: GLuint, arg_1300: GLdouble, arg_1301: GLdouble, arg_1302: GLdouble) void {
    return glad_glVertexAttrib3d.?(arg_1299, arg_1300, arg_1301, arg_1302);
}
pub inline fn glVertexAttrib3dv(arg_1303: GLuint, arg_1304: [*c]const GLdouble) void {
    return glad_glVertexAttrib3dv.?(arg_1303, arg_1304);
}
pub inline fn glVertexAttrib3f(arg_1305: GLuint, arg_1306: GLfloat, arg_1307: GLfloat, arg_1308: GLfloat) void {
    return glad_glVertexAttrib3f.?(arg_1305, arg_1306, arg_1307, arg_1308);
}
pub inline fn glVertexAttrib3fv(arg_1309: GLuint, arg_1310: [*c]const GLfloat) void {
    return glad_glVertexAttrib3fv.?(arg_1309, arg_1310);
}
pub inline fn glVertexAttrib3s(arg_1311: GLuint, arg_1312: GLshort, arg_1313: GLshort, arg_1314: GLshort) void {
    return glad_glVertexAttrib3s.?(arg_1311, arg_1312, arg_1313, arg_1314);
}
pub inline fn glVertexAttrib3sv(arg_1315: GLuint, arg_1316: [*c]const GLshort) void {
    return glad_glVertexAttrib3sv.?(arg_1315, arg_1316);
}
pub inline fn glVertexAttrib4Nbv(arg_1317: GLuint, arg_1318: [*c]const GLbyte) void {
    return glad_glVertexAttrib4Nbv.?(arg_1317, arg_1318);
}
pub inline fn glVertexAttrib4Niv(arg_1319: GLuint, arg_1320: [*c]const GLint) void {
    return glad_glVertexAttrib4Niv.?(arg_1319, arg_1320);
}
pub inline fn glVertexAttrib4Nsv(arg_1321: GLuint, arg_1322: [*c]const GLshort) void {
    return glad_glVertexAttrib4Nsv.?(arg_1321, arg_1322);
}
pub inline fn glVertexAttrib4Nub(arg_1323: GLuint, arg_1324: GLubyte, arg_1325: GLubyte, arg_1326: GLubyte, arg_1327: GLubyte) void {
    return glad_glVertexAttrib4Nub.?(arg_1323, arg_1324, arg_1325, arg_1326, arg_1327);
}
pub inline fn glVertexAttrib4Nubv(arg_1328: GLuint, arg_1329: [*c]const GLubyte) void {
    return glad_glVertexAttrib4Nubv.?(arg_1328, arg_1329);
}
pub inline fn glVertexAttrib4Nuiv(arg_1330: GLuint, arg_1331: [*c]const GLuint) void {
    return glad_glVertexAttrib4Nuiv.?(arg_1330, arg_1331);
}
pub inline fn glVertexAttrib4Nusv(arg_1332: GLuint, arg_1333: [*c]const GLushort) void {
    return glad_glVertexAttrib4Nusv.?(arg_1332, arg_1333);
}
pub inline fn glVertexAttrib4bv(arg_1334: GLuint, arg_1335: [*c]const GLbyte) void {
    return glad_glVertexAttrib4bv.?(arg_1334, arg_1335);
}
pub inline fn glVertexAttrib4d(arg_1336: GLuint, arg_1337: GLdouble, arg_1338: GLdouble, arg_1339: GLdouble, arg_1340: GLdouble) void {
    return glad_glVertexAttrib4d.?(arg_1336, arg_1337, arg_1338, arg_1339, arg_1340);
}
pub inline fn glVertexAttrib4dv(arg_1341: GLuint, arg_1342: [*c]const GLdouble) void {
    return glad_glVertexAttrib4dv.?(arg_1341, arg_1342);
}
pub inline fn glVertexAttrib4f(arg_1343: GLuint, arg_1344: GLfloat, arg_1345: GLfloat, arg_1346: GLfloat, arg_1347: GLfloat) void {
    return glad_glVertexAttrib4f.?(arg_1343, arg_1344, arg_1345, arg_1346, arg_1347);
}
pub inline fn glVertexAttrib4fv(arg_1348: GLuint, arg_1349: [*c]const GLfloat) void {
    return glad_glVertexAttrib4fv.?(arg_1348, arg_1349);
}
pub inline fn glVertexAttrib4iv(arg_1350: GLuint, arg_1351: [*c]const GLint) void {
    return glad_glVertexAttrib4iv.?(arg_1350, arg_1351);
}
pub inline fn glVertexAttrib4s(arg_1352: GLuint, arg_1353: GLshort, arg_1354: GLshort, arg_1355: GLshort, arg_1356: GLshort) void {
    return glad_glVertexAttrib4s.?(arg_1352, arg_1353, arg_1354, arg_1355, arg_1356);
}
pub inline fn glVertexAttrib4sv(arg_1357: GLuint, arg_1358: [*c]const GLshort) void {
    return glad_glVertexAttrib4sv.?(arg_1357, arg_1358);
}
pub inline fn glVertexAttrib4ubv(arg_1359: GLuint, arg_1360: [*c]const GLubyte) void {
    return glad_glVertexAttrib4ubv.?(arg_1359, arg_1360);
}
pub inline fn glVertexAttrib4uiv(arg_1361: GLuint, arg_1362: [*c]const GLuint) void {
    return glad_glVertexAttrib4uiv.?(arg_1361, arg_1362);
}
pub inline fn glVertexAttrib4usv(arg_1363: GLuint, arg_1364: [*c]const GLushort) void {
    return glad_glVertexAttrib4usv.?(arg_1363, arg_1364);
}
pub inline fn glVertexAttribPointer(arg_1365: GLuint, arg_1366: GLint, arg_1367: GLenum, arg_1368: GLboolean, arg_1369: GLsizei, arg_1370: ?*const anyopaque) void {
    return glad_glVertexAttribPointer.?(arg_1365, arg_1366, arg_1367, arg_1368, arg_1369, arg_1370);
}
pub const GL_VERSION_2_1 = @as(c_int, 1);
pub inline fn glUniformMatrix2x3fv(arg_1371: GLint, arg_1372: GLsizei, arg_1373: GLboolean, arg_1374: [*c]const GLfloat) void {
    return glad_glUniformMatrix2x3fv.?(arg_1371, arg_1372, arg_1373, arg_1374);
}
pub inline fn glUniformMatrix3x2fv(arg_1375: GLint, arg_1376: GLsizei, arg_1377: GLboolean, arg_1378: [*c]const GLfloat) void {
    return glad_glUniformMatrix3x2fv.?(arg_1375, arg_1376, arg_1377, arg_1378);
}
pub inline fn glUniformMatrix2x4fv(arg_1379: GLint, arg_1380: GLsizei, arg_1381: GLboolean, arg_1382: [*c]const GLfloat) void {
    return glad_glUniformMatrix2x4fv.?(arg_1379, arg_1380, arg_1381, arg_1382);
}
pub inline fn glUniformMatrix4x2fv(arg_1383: GLint, arg_1384: GLsizei, arg_1385: GLboolean, arg_1386: [*c]const GLfloat) void {
    return glad_glUniformMatrix4x2fv.?(arg_1383, arg_1384, arg_1385, arg_1386);
}
pub inline fn glUniformMatrix3x4fv(arg_1387: GLint, arg_1388: GLsizei, arg_1389: GLboolean, arg_1390: [*c]const GLfloat) void {
    return glad_glUniformMatrix3x4fv.?(arg_1387, arg_1388, arg_1389, arg_1390);
}
pub inline fn glUniformMatrix4x3fv(arg_1391: GLint, arg_1392: GLsizei, arg_1393: GLboolean, arg_1394: [*c]const GLfloat) void {
    return glad_glUniformMatrix4x3fv.?(arg_1391, arg_1392, arg_1393, arg_1394);
}
pub const GL_VERSION_3_0 = @as(c_int, 1);
pub inline fn glColorMaski(arg_1395: GLuint, arg_1396: GLboolean, arg_1397: GLboolean, arg_1398: GLboolean, arg_1399: GLboolean) void {
    return glad_glColorMaski.?(arg_1395, arg_1396, arg_1397, arg_1398, arg_1399);
}
pub inline fn glGetBooleani_v(arg_1400: GLenum, arg_1401: GLuint, arg_1402: [*c]GLboolean) void {
    return glad_glGetBooleani_v.?(arg_1400, arg_1401, arg_1402);
}
pub inline fn glGetIntegeri_v(arg_1403: GLenum, arg_1404: GLuint, arg_1405: [*c]GLint) void {
    return glad_glGetIntegeri_v.?(arg_1403, arg_1404, arg_1405);
}
pub inline fn glEnablei(arg_1406: GLenum, arg_1407: GLuint) void {
    return glad_glEnablei.?(arg_1406, arg_1407);
}
pub inline fn glDisablei(arg_1408: GLenum, arg_1409: GLuint) void {
    return glad_glDisablei.?(arg_1408, arg_1409);
}
pub inline fn glIsEnabledi(arg_1410: GLenum, arg_1411: GLuint) GLboolean {
    return glad_glIsEnabledi.?(arg_1410, arg_1411);
}
pub inline fn glBeginTransformFeedback(arg_1412: GLenum) void {
    return glad_glBeginTransformFeedback.?(arg_1412);
}
pub inline fn glEndTransformFeedback() void {
    return glad_glEndTransformFeedback.?();
}
pub inline fn glBindBufferRange(arg_1413: GLenum, arg_1414: GLuint, arg_1415: GLuint, arg_1416: GLintptr, arg_1417: GLsizeiptr) void {
    return glad_glBindBufferRange.?(arg_1413, arg_1414, arg_1415, arg_1416, arg_1417);
}
pub inline fn glBindBufferBase(arg_1418: GLenum, arg_1419: GLuint, arg_1420: GLuint) void {
    return glad_glBindBufferBase.?(arg_1418, arg_1419, arg_1420);
}
pub inline fn glTransformFeedbackVaryings(arg_1421: GLuint, arg_1422: GLsizei, arg_1423: [*c]const [*c]const GLchar, arg_1424: GLenum) void {
    return glad_glTransformFeedbackVaryings.?(arg_1421, arg_1422, arg_1423, arg_1424);
}
pub inline fn glGetTransformFeedbackVarying(arg_1425: GLuint, arg_1426: GLuint, arg_1427: GLsizei, arg_1428: [*c]GLsizei, arg_1429: [*c]GLsizei, arg_1430: [*c]GLenum, arg_1431: [*c]GLchar) void {
    return glad_glGetTransformFeedbackVarying.?(arg_1425, arg_1426, arg_1427, arg_1428, arg_1429, arg_1430, arg_1431);
}
pub inline fn glClampColor(arg_1432: GLenum, arg_1433: GLenum) void {
    return glad_glClampColor.?(arg_1432, arg_1433);
}
pub inline fn glBeginConditionalRender(arg_1434: GLuint, arg_1435: GLenum) void {
    return glad_glBeginConditionalRender.?(arg_1434, arg_1435);
}
pub inline fn glEndConditionalRender() void {
    return glad_glEndConditionalRender.?();
}
pub inline fn glVertexAttribIPointer(arg_1436: GLuint, arg_1437: GLint, arg_1438: GLenum, arg_1439: GLsizei, arg_1440: ?*const anyopaque) void {
    return glad_glVertexAttribIPointer.?(arg_1436, arg_1437, arg_1438, arg_1439, arg_1440);
}
pub inline fn glGetVertexAttribIiv(arg_1441: GLuint, arg_1442: GLenum, arg_1443: [*c]GLint) void {
    return glad_glGetVertexAttribIiv.?(arg_1441, arg_1442, arg_1443);
}
pub inline fn glGetVertexAttribIuiv(arg_1444: GLuint, arg_1445: GLenum, arg_1446: [*c]GLuint) void {
    return glad_glGetVertexAttribIuiv.?(arg_1444, arg_1445, arg_1446);
}
pub inline fn glVertexAttribI1i(arg_1447: GLuint, arg_1448: GLint) void {
    return glad_glVertexAttribI1i.?(arg_1447, arg_1448);
}
pub inline fn glVertexAttribI2i(arg_1449: GLuint, arg_1450: GLint, arg_1451: GLint) void {
    return glad_glVertexAttribI2i.?(arg_1449, arg_1450, arg_1451);
}
pub inline fn glVertexAttribI3i(arg_1452: GLuint, arg_1453: GLint, arg_1454: GLint, arg_1455: GLint) void {
    return glad_glVertexAttribI3i.?(arg_1452, arg_1453, arg_1454, arg_1455);
}
pub inline fn glVertexAttribI4i(arg_1456: GLuint, arg_1457: GLint, arg_1458: GLint, arg_1459: GLint, arg_1460: GLint) void {
    return glad_glVertexAttribI4i.?(arg_1456, arg_1457, arg_1458, arg_1459, arg_1460);
}
pub inline fn glVertexAttribI1ui(arg_1461: GLuint, arg_1462: GLuint) void {
    return glad_glVertexAttribI1ui.?(arg_1461, arg_1462);
}
pub inline fn glVertexAttribI2ui(arg_1463: GLuint, arg_1464: GLuint, arg_1465: GLuint) void {
    return glad_glVertexAttribI2ui.?(arg_1463, arg_1464, arg_1465);
}
pub inline fn glVertexAttribI3ui(arg_1466: GLuint, arg_1467: GLuint, arg_1468: GLuint, arg_1469: GLuint) void {
    return glad_glVertexAttribI3ui.?(arg_1466, arg_1467, arg_1468, arg_1469);
}
pub inline fn glVertexAttribI4ui(arg_1470: GLuint, arg_1471: GLuint, arg_1472: GLuint, arg_1473: GLuint, arg_1474: GLuint) void {
    return glad_glVertexAttribI4ui.?(arg_1470, arg_1471, arg_1472, arg_1473, arg_1474);
}
pub inline fn glVertexAttribI1iv(arg_1475: GLuint, arg_1476: [*c]const GLint) void {
    return glad_glVertexAttribI1iv.?(arg_1475, arg_1476);
}
pub inline fn glVertexAttribI2iv(arg_1477: GLuint, arg_1478: [*c]const GLint) void {
    return glad_glVertexAttribI2iv.?(arg_1477, arg_1478);
}
pub inline fn glVertexAttribI3iv(arg_1479: GLuint, arg_1480: [*c]const GLint) void {
    return glad_glVertexAttribI3iv.?(arg_1479, arg_1480);
}
pub inline fn glVertexAttribI4iv(arg_1481: GLuint, arg_1482: [*c]const GLint) void {
    return glad_glVertexAttribI4iv.?(arg_1481, arg_1482);
}
pub inline fn glVertexAttribI1uiv(arg_1483: GLuint, arg_1484: [*c]const GLuint) void {
    return glad_glVertexAttribI1uiv.?(arg_1483, arg_1484);
}
pub inline fn glVertexAttribI2uiv(arg_1485: GLuint, arg_1486: [*c]const GLuint) void {
    return glad_glVertexAttribI2uiv.?(arg_1485, arg_1486);
}
pub inline fn glVertexAttribI3uiv(arg_1487: GLuint, arg_1488: [*c]const GLuint) void {
    return glad_glVertexAttribI3uiv.?(arg_1487, arg_1488);
}
pub inline fn glVertexAttribI4uiv(arg_1489: GLuint, arg_1490: [*c]const GLuint) void {
    return glad_glVertexAttribI4uiv.?(arg_1489, arg_1490);
}
pub inline fn glVertexAttribI4bv(arg_1491: GLuint, arg_1492: [*c]const GLbyte) void {
    return glad_glVertexAttribI4bv.?(arg_1491, arg_1492);
}
pub inline fn glVertexAttribI4sv(arg_1493: GLuint, arg_1494: [*c]const GLshort) void {
    return glad_glVertexAttribI4sv.?(arg_1493, arg_1494);
}
pub inline fn glVertexAttribI4ubv(arg_1495: GLuint, arg_1496: [*c]const GLubyte) void {
    return glad_glVertexAttribI4ubv.?(arg_1495, arg_1496);
}
pub inline fn glVertexAttribI4usv(arg_1497: GLuint, arg_1498: [*c]const GLushort) void {
    return glad_glVertexAttribI4usv.?(arg_1497, arg_1498);
}
pub inline fn glGetUniformuiv(arg_1499: GLuint, arg_1500: GLint, arg_1501: [*c]GLuint) void {
    return glad_glGetUniformuiv.?(arg_1499, arg_1500, arg_1501);
}
pub inline fn glBindFragDataLocation(arg_1502: GLuint, arg_1503: GLuint, arg_1504: [*c]const GLchar) void {
    return glad_glBindFragDataLocation.?(arg_1502, arg_1503, arg_1504);
}
pub inline fn glGetFragDataLocation(arg_1505: GLuint, arg_1506: [*c]const GLchar) GLint {
    return glad_glGetFragDataLocation.?(arg_1505, arg_1506);
}
pub inline fn glUniform1ui(arg_1507: GLint, arg_1508: GLuint) void {
    return glad_glUniform1ui.?(arg_1507, arg_1508);
}
pub inline fn glUniform2ui(arg_1509: GLint, arg_1510: GLuint, arg_1511: GLuint) void {
    return glad_glUniform2ui.?(arg_1509, arg_1510, arg_1511);
}
pub inline fn glUniform3ui(arg_1512: GLint, arg_1513: GLuint, arg_1514: GLuint, arg_1515: GLuint) void {
    return glad_glUniform3ui.?(arg_1512, arg_1513, arg_1514, arg_1515);
}
pub inline fn glUniform4ui(arg_1516: GLint, arg_1517: GLuint, arg_1518: GLuint, arg_1519: GLuint, arg_1520: GLuint) void {
    return glad_glUniform4ui.?(arg_1516, arg_1517, arg_1518, arg_1519, arg_1520);
}
pub inline fn glUniform1uiv(arg_1521: GLint, arg_1522: GLsizei, arg_1523: [*c]const GLuint) void {
    return glad_glUniform1uiv.?(arg_1521, arg_1522, arg_1523);
}
pub inline fn glUniform2uiv(arg_1524: GLint, arg_1525: GLsizei, arg_1526: [*c]const GLuint) void {
    return glad_glUniform2uiv.?(arg_1524, arg_1525, arg_1526);
}
pub inline fn glUniform3uiv(arg_1527: GLint, arg_1528: GLsizei, arg_1529: [*c]const GLuint) void {
    return glad_glUniform3uiv.?(arg_1527, arg_1528, arg_1529);
}
pub inline fn glUniform4uiv(arg_1530: GLint, arg_1531: GLsizei, arg_1532: [*c]const GLuint) void {
    return glad_glUniform4uiv.?(arg_1530, arg_1531, arg_1532);
}
pub inline fn glTexParameterIiv(arg_1533: GLenum, arg_1534: GLenum, arg_1535: [*c]const GLint) void {
    return glad_glTexParameterIiv.?(arg_1533, arg_1534, arg_1535);
}
pub inline fn glTexParameterIuiv(arg_1536: GLenum, arg_1537: GLenum, arg_1538: [*c]const GLuint) void {
    return glad_glTexParameterIuiv.?(arg_1536, arg_1537, arg_1538);
}
pub inline fn glGetTexParameterIiv(arg_1539: GLenum, arg_1540: GLenum, arg_1541: [*c]GLint) void {
    return glad_glGetTexParameterIiv.?(arg_1539, arg_1540, arg_1541);
}
pub inline fn glGetTexParameterIuiv(arg_1542: GLenum, arg_1543: GLenum, arg_1544: [*c]GLuint) void {
    return glad_glGetTexParameterIuiv.?(arg_1542, arg_1543, arg_1544);
}
pub inline fn glClearBufferiv(arg_1545: GLenum, arg_1546: GLint, arg_1547: [*c]const GLint) void {
    return glad_glClearBufferiv.?(arg_1545, arg_1546, arg_1547);
}
pub inline fn glClearBufferuiv(arg_1548: GLenum, arg_1549: GLint, arg_1550: [*c]const GLuint) void {
    return glad_glClearBufferuiv.?(arg_1548, arg_1549, arg_1550);
}
pub inline fn glClearBufferfv(arg_1551: GLenum, arg_1552: GLint, arg_1553: [*c]const GLfloat) void {
    return glad_glClearBufferfv.?(arg_1551, arg_1552, arg_1553);
}
pub inline fn glClearBufferfi(arg_1554: GLenum, arg_1555: GLint, arg_1556: GLfloat, arg_1557: GLint) void {
    return glad_glClearBufferfi.?(arg_1554, arg_1555, arg_1556, arg_1557);
}
pub inline fn glGetStringi(arg_1558: GLenum, arg_1559: GLuint) [*c]const GLubyte {
    return glad_glGetStringi.?(arg_1558, arg_1559);
}
pub inline fn glIsRenderbuffer(arg_1560: GLuint) GLboolean {
    return glad_glIsRenderbuffer.?(arg_1560);
}
pub inline fn glBindRenderbuffer(arg_1561: GLenum, arg_1562: GLuint) void {
    return glad_glBindRenderbuffer.?(arg_1561, arg_1562);
}
pub inline fn glDeleteRenderbuffers(arg_1563: GLsizei, arg_1564: [*c]const GLuint) void {
    return glad_glDeleteRenderbuffers.?(arg_1563, arg_1564);
}
pub inline fn glGenRenderbuffers(arg_1565: GLsizei, arg_1566: [*c]GLuint) void {
    return glad_glGenRenderbuffers.?(arg_1565, arg_1566);
}
pub inline fn glRenderbufferStorage(arg_1567: GLenum, arg_1568: GLenum, arg_1569: GLsizei, arg_1570: GLsizei) void {
    return glad_glRenderbufferStorage.?(arg_1567, arg_1568, arg_1569, arg_1570);
}
pub inline fn glGetRenderbufferParameteriv(arg_1571: GLenum, arg_1572: GLenum, arg_1573: [*c]GLint) void {
    return glad_glGetRenderbufferParameteriv.?(arg_1571, arg_1572, arg_1573);
}
pub inline fn glIsFramebuffer(arg_1574: GLuint) GLboolean {
    return glad_glIsFramebuffer.?(arg_1574);
}
pub inline fn glBindFramebuffer(arg_1575: GLenum, arg_1576: GLuint) void {
    return glad_glBindFramebuffer.?(arg_1575, arg_1576);
}
pub inline fn glDeleteFramebuffers(arg_1577: GLsizei, arg_1578: [*c]const GLuint) void {
    return glad_glDeleteFramebuffers.?(arg_1577, arg_1578);
}
pub inline fn glGenFramebuffers(arg_1579: GLsizei, arg_1580: [*c]GLuint) void {
    return glad_glGenFramebuffers.?(arg_1579, arg_1580);
}
pub inline fn glCheckFramebufferStatus(arg_1581: GLenum) GLenum {
    return glad_glCheckFramebufferStatus.?(arg_1581);
}
pub inline fn glFramebufferTexture1D(arg_1582: GLenum, arg_1583: GLenum, arg_1584: GLenum, arg_1585: GLuint, arg_1586: GLint) void {
    return glad_glFramebufferTexture1D.?(arg_1582, arg_1583, arg_1584, arg_1585, arg_1586);
}
pub inline fn glFramebufferTexture2D(arg_1587: GLenum, arg_1588: GLenum, arg_1589: GLenum, arg_1590: GLuint, arg_1591: GLint) void {
    return glad_glFramebufferTexture2D.?(arg_1587, arg_1588, arg_1589, arg_1590, arg_1591);
}
pub inline fn glFramebufferTexture3D(arg_1592: GLenum, arg_1593: GLenum, arg_1594: GLenum, arg_1595: GLuint, arg_1596: GLint, arg_1597: GLint) void {
    return glad_glFramebufferTexture3D.?(arg_1592, arg_1593, arg_1594, arg_1595, arg_1596, arg_1597);
}
pub inline fn glFramebufferRenderbuffer(arg_1598: GLenum, arg_1599: GLenum, arg_1600: GLenum, arg_1601: GLuint) void {
    return glad_glFramebufferRenderbuffer.?(arg_1598, arg_1599, arg_1600, arg_1601);
}
pub inline fn glGetFramebufferAttachmentParameteriv(arg_1602: GLenum, arg_1603: GLenum, arg_1604: GLenum, arg_1605: [*c]GLint) void {
    return glad_glGetFramebufferAttachmentParameteriv.?(arg_1602, arg_1603, arg_1604, arg_1605);
}
pub inline fn glGenerateMipmap(arg_1606: GLenum) void {
    return glad_glGenerateMipmap.?(arg_1606);
}
pub inline fn glBlitFramebuffer(arg_1607: GLint, arg_1608: GLint, arg_1609: GLint, arg_1610: GLint, arg_1611: GLint, arg_1612: GLint, arg_1613: GLint, arg_1614: GLint, arg_1615: GLbitfield, arg_1616: GLenum) void {
    return glad_glBlitFramebuffer.?(arg_1607, arg_1608, arg_1609, arg_1610, arg_1611, arg_1612, arg_1613, arg_1614, arg_1615, arg_1616);
}
pub inline fn glRenderbufferStorageMultisample(arg_1617: GLenum, arg_1618: GLsizei, arg_1619: GLenum, arg_1620: GLsizei, arg_1621: GLsizei) void {
    return glad_glRenderbufferStorageMultisample.?(arg_1617, arg_1618, arg_1619, arg_1620, arg_1621);
}
pub inline fn glFramebufferTextureLayer(arg_1622: GLenum, arg_1623: GLenum, arg_1624: GLuint, arg_1625: GLint, arg_1626: GLint) void {
    return glad_glFramebufferTextureLayer.?(arg_1622, arg_1623, arg_1624, arg_1625, arg_1626);
}
pub inline fn glMapBufferRange(arg_1627: GLenum, arg_1628: GLintptr, arg_1629: GLsizeiptr, arg_1630: GLbitfield) ?*anyopaque {
    return glad_glMapBufferRange.?(arg_1627, arg_1628, arg_1629, arg_1630);
}
pub inline fn glFlushMappedBufferRange(arg_1631: GLenum, arg_1632: GLintptr, arg_1633: GLsizeiptr) void {
    return glad_glFlushMappedBufferRange.?(arg_1631, arg_1632, arg_1633);
}
pub inline fn glBindVertexArray(arg_1634: GLuint) void {
    return glad_glBindVertexArray.?(arg_1634);
}
pub inline fn glDeleteVertexArrays(arg_1635: GLsizei, arg_1636: [*c]const GLuint) void {
    return glad_glDeleteVertexArrays.?(arg_1635, arg_1636);
}
pub inline fn glGenVertexArrays(arg_1637: GLsizei, arg_1638: [*c]GLuint) void {
    return glad_glGenVertexArrays.?(arg_1637, arg_1638);
}
pub inline fn glIsVertexArray(arg_1639: GLuint) GLboolean {
    return glad_glIsVertexArray.?(arg_1639);
}
pub const GL_VERSION_3_1 = @as(c_int, 1);
pub inline fn glDrawArraysInstanced(arg_1640: GLenum, arg_1641: GLint, arg_1642: GLsizei, arg_1643: GLsizei) void {
    return glad_glDrawArraysInstanced.?(arg_1640, arg_1641, arg_1642, arg_1643);
}
pub inline fn glDrawElementsInstanced(arg_1644: GLenum, arg_1645: GLsizei, arg_1646: GLenum, arg_1647: ?*const anyopaque, arg_1648: GLsizei) void {
    return glad_glDrawElementsInstanced.?(arg_1644, arg_1645, arg_1646, arg_1647, arg_1648);
}
pub inline fn glTexBuffer(arg_1649: GLenum, arg_1650: GLenum, arg_1651: GLuint) void {
    return glad_glTexBuffer.?(arg_1649, arg_1650, arg_1651);
}
pub inline fn glPrimitiveRestartIndex(arg_1652: GLuint) void {
    return glad_glPrimitiveRestartIndex.?(arg_1652);
}
pub inline fn glCopyBufferSubData(arg_1653: GLenum, arg_1654: GLenum, arg_1655: GLintptr, arg_1656: GLintptr, arg_1657: GLsizeiptr) void {
    return glad_glCopyBufferSubData.?(arg_1653, arg_1654, arg_1655, arg_1656, arg_1657);
}
pub inline fn glGetUniformIndices(arg_1658: GLuint, arg_1659: GLsizei, arg_1660: [*c]const [*c]const GLchar, arg_1661: [*c]GLuint) void {
    return glad_glGetUniformIndices.?(arg_1658, arg_1659, arg_1660, arg_1661);
}
pub inline fn glGetActiveUniformsiv(arg_1662: GLuint, arg_1663: GLsizei, arg_1664: [*c]const GLuint, arg_1665: GLenum, arg_1666: [*c]GLint) void {
    return glad_glGetActiveUniformsiv.?(arg_1662, arg_1663, arg_1664, arg_1665, arg_1666);
}
pub inline fn glGetActiveUniformName(arg_1667: GLuint, arg_1668: GLuint, arg_1669: GLsizei, arg_1670: [*c]GLsizei, arg_1671: [*c]GLchar) void {
    return glad_glGetActiveUniformName.?(arg_1667, arg_1668, arg_1669, arg_1670, arg_1671);
}
pub inline fn glGetUniformBlockIndex(arg_1672: GLuint, arg_1673: [*c]const GLchar) GLuint {
    return glad_glGetUniformBlockIndex.?(arg_1672, arg_1673);
}
pub inline fn glGetActiveUniformBlockiv(arg_1674: GLuint, arg_1675: GLuint, arg_1676: GLenum, arg_1677: [*c]GLint) void {
    return glad_glGetActiveUniformBlockiv.?(arg_1674, arg_1675, arg_1676, arg_1677);
}
pub inline fn glGetActiveUniformBlockName(arg_1678: GLuint, arg_1679: GLuint, arg_1680: GLsizei, arg_1681: [*c]GLsizei, arg_1682: [*c]GLchar) void {
    return glad_glGetActiveUniformBlockName.?(arg_1678, arg_1679, arg_1680, arg_1681, arg_1682);
}
pub inline fn glUniformBlockBinding(arg_1683: GLuint, arg_1684: GLuint, arg_1685: GLuint) void {
    return glad_glUniformBlockBinding.?(arg_1683, arg_1684, arg_1685);
}
pub const GL_VERSION_3_2 = @as(c_int, 1);
pub inline fn glDrawElementsBaseVertex(arg_1686: GLenum, arg_1687: GLsizei, arg_1688: GLenum, arg_1689: ?*const anyopaque, arg_1690: GLint) void {
    return glad_glDrawElementsBaseVertex.?(arg_1686, arg_1687, arg_1688, arg_1689, arg_1690);
}
pub inline fn glDrawRangeElementsBaseVertex(arg_1691: GLenum, arg_1692: GLuint, arg_1693: GLuint, arg_1694: GLsizei, arg_1695: GLenum, arg_1696: ?*const anyopaque, arg_1697: GLint) void {
    return glad_glDrawRangeElementsBaseVertex.?(arg_1691, arg_1692, arg_1693, arg_1694, arg_1695, arg_1696, arg_1697);
}
pub inline fn glDrawElementsInstancedBaseVertex(arg_1698: GLenum, arg_1699: GLsizei, arg_1700: GLenum, arg_1701: ?*const anyopaque, arg_1702: GLsizei, arg_1703: GLint) void {
    return glad_glDrawElementsInstancedBaseVertex.?(arg_1698, arg_1699, arg_1700, arg_1701, arg_1702, arg_1703);
}
pub inline fn glMultiDrawElementsBaseVertex(arg_1704: GLenum, arg_1705: [*c]const GLsizei, arg_1706: GLenum, arg_1707: [*c]const ?*const anyopaque, arg_1708: GLsizei, arg_1709: [*c]const GLint) void {
    return glad_glMultiDrawElementsBaseVertex.?(arg_1704, arg_1705, arg_1706, arg_1707, arg_1708, arg_1709);
}
pub inline fn glProvokingVertex(arg_1710: GLenum) void {
    return glad_glProvokingVertex.?(arg_1710);
}
pub inline fn glFenceSync(arg_1711: GLenum, arg_1712: GLbitfield) GLsync {
    return glad_glFenceSync.?(arg_1711, arg_1712);
}
pub inline fn glIsSync(arg_1713: GLsync) GLboolean {
    return glad_glIsSync.?(arg_1713);
}
pub inline fn glDeleteSync(arg_1714: GLsync) void {
    return glad_glDeleteSync.?(arg_1714);
}
pub inline fn glClientWaitSync(arg_1715: GLsync, arg_1716: GLbitfield, arg_1717: GLuint64) GLenum {
    return glad_glClientWaitSync.?(arg_1715, arg_1716, arg_1717);
}
pub inline fn glWaitSync(arg_1718: GLsync, arg_1719: GLbitfield, arg_1720: GLuint64) void {
    return glad_glWaitSync.?(arg_1718, arg_1719, arg_1720);
}
pub inline fn glGetInteger64v(arg_1721: GLenum, arg_1722: [*c]GLint64) void {
    return glad_glGetInteger64v.?(arg_1721, arg_1722);
}
pub inline fn glGetSynciv(arg_1723: GLsync, arg_1724: GLenum, arg_1725: GLsizei, arg_1726: [*c]GLsizei, arg_1727: [*c]GLint) void {
    return glad_glGetSynciv.?(arg_1723, arg_1724, arg_1725, arg_1726, arg_1727);
}
pub inline fn glGetInteger64i_v(arg_1728: GLenum, arg_1729: GLuint, arg_1730: [*c]GLint64) void {
    return glad_glGetInteger64i_v.?(arg_1728, arg_1729, arg_1730);
}
pub inline fn glGetBufferParameteri64v(arg_1731: GLenum, arg_1732: GLenum, arg_1733: [*c]GLint64) void {
    return glad_glGetBufferParameteri64v.?(arg_1731, arg_1732, arg_1733);
}
pub inline fn glFramebufferTexture(arg_1734: GLenum, arg_1735: GLenum, arg_1736: GLuint, arg_1737: GLint) void {
    return glad_glFramebufferTexture.?(arg_1734, arg_1735, arg_1736, arg_1737);
}
pub inline fn glTexImage2DMultisample(arg_1738: GLenum, arg_1739: GLsizei, arg_1740: GLenum, arg_1741: GLsizei, arg_1742: GLsizei, arg_1743: GLboolean) void {
    return glad_glTexImage2DMultisample.?(arg_1738, arg_1739, arg_1740, arg_1741, arg_1742, arg_1743);
}
pub inline fn glTexImage3DMultisample(arg_1744: GLenum, arg_1745: GLsizei, arg_1746: GLenum, arg_1747: GLsizei, arg_1748: GLsizei, arg_1749: GLsizei, arg_1750: GLboolean) void {
    return glad_glTexImage3DMultisample.?(arg_1744, arg_1745, arg_1746, arg_1747, arg_1748, arg_1749, arg_1750);
}
pub inline fn glGetMultisamplefv(arg_1751: GLenum, arg_1752: GLuint, arg_1753: [*c]GLfloat) void {
    return glad_glGetMultisamplefv.?(arg_1751, arg_1752, arg_1753);
}
pub inline fn glSampleMaski(arg_1754: GLuint, arg_1755: GLbitfield) void {
    return glad_glSampleMaski.?(arg_1754, arg_1755);
}
pub const GL_VERSION_3_3 = @as(c_int, 1);
pub inline fn glBindFragDataLocationIndexed(arg_1756: GLuint, arg_1757: GLuint, arg_1758: GLuint, arg_1759: [*c]const GLchar) void {
    return glad_glBindFragDataLocationIndexed.?(arg_1756, arg_1757, arg_1758, arg_1759);
}
pub inline fn glGetFragDataIndex(arg_1760: GLuint, arg_1761: [*c]const GLchar) GLint {
    return glad_glGetFragDataIndex.?(arg_1760, arg_1761);
}
pub inline fn glGenSamplers(arg_1762: GLsizei, arg_1763: [*c]GLuint) void {
    return glad_glGenSamplers.?(arg_1762, arg_1763);
}
pub inline fn glDeleteSamplers(arg_1764: GLsizei, arg_1765: [*c]const GLuint) void {
    return glad_glDeleteSamplers.?(arg_1764, arg_1765);
}
pub inline fn glIsSampler(arg_1766: GLuint) GLboolean {
    return glad_glIsSampler.?(arg_1766);
}
pub inline fn glBindSampler(arg_1767: GLuint, arg_1768: GLuint) void {
    return glad_glBindSampler.?(arg_1767, arg_1768);
}
pub inline fn glSamplerParameteri(arg_1769: GLuint, arg_1770: GLenum, arg_1771: GLint) void {
    return glad_glSamplerParameteri.?(arg_1769, arg_1770, arg_1771);
}
pub inline fn glSamplerParameteriv(arg_1772: GLuint, arg_1773: GLenum, arg_1774: [*c]const GLint) void {
    return glad_glSamplerParameteriv.?(arg_1772, arg_1773, arg_1774);
}
pub inline fn glSamplerParameterf(arg_1775: GLuint, arg_1776: GLenum, arg_1777: GLfloat) void {
    return glad_glSamplerParameterf.?(arg_1775, arg_1776, arg_1777);
}
pub inline fn glSamplerParameterfv(arg_1778: GLuint, arg_1779: GLenum, arg_1780: [*c]const GLfloat) void {
    return glad_glSamplerParameterfv.?(arg_1778, arg_1779, arg_1780);
}
pub inline fn glSamplerParameterIiv(arg_1781: GLuint, arg_1782: GLenum, arg_1783: [*c]const GLint) void {
    return glad_glSamplerParameterIiv.?(arg_1781, arg_1782, arg_1783);
}
pub inline fn glSamplerParameterIuiv(arg_1784: GLuint, arg_1785: GLenum, arg_1786: [*c]const GLuint) void {
    return glad_glSamplerParameterIuiv.?(arg_1784, arg_1785, arg_1786);
}
pub inline fn glGetSamplerParameteriv(arg_1787: GLuint, arg_1788: GLenum, arg_1789: [*c]GLint) void {
    return glad_glGetSamplerParameteriv.?(arg_1787, arg_1788, arg_1789);
}
pub inline fn glGetSamplerParameterIiv(arg_1790: GLuint, arg_1791: GLenum, arg_1792: [*c]GLint) void {
    return glad_glGetSamplerParameterIiv.?(arg_1790, arg_1791, arg_1792);
}
pub inline fn glGetSamplerParameterfv(arg_1793: GLuint, arg_1794: GLenum, arg_1795: [*c]GLfloat) void {
    return glad_glGetSamplerParameterfv.?(arg_1793, arg_1794, arg_1795);
}
pub inline fn glGetSamplerParameterIuiv(arg_1796: GLuint, arg_1797: GLenum, arg_1798: [*c]GLuint) void {
    return glad_glGetSamplerParameterIuiv.?(arg_1796, arg_1797, arg_1798);
}
pub inline fn glQueryCounter(arg_1799: GLuint, arg_1800: GLenum) void {
    return glad_glQueryCounter.?(arg_1799, arg_1800);
}
pub inline fn glGetQueryObjecti64v(arg_1801: GLuint, arg_1802: GLenum, arg_1803: [*c]GLint64) void {
    return glad_glGetQueryObjecti64v.?(arg_1801, arg_1802, arg_1803);
}
pub inline fn glGetQueryObjectui64v(arg_1804: GLuint, arg_1805: GLenum, arg_1806: [*c]GLuint64) void {
    return glad_glGetQueryObjectui64v.?(arg_1804, arg_1805, arg_1806);
}
pub inline fn glVertexAttribDivisor(arg_1807: GLuint, arg_1808: GLuint) void {
    return glad_glVertexAttribDivisor.?(arg_1807, arg_1808);
}
pub inline fn glVertexAttribP1ui(arg_1809: GLuint, arg_1810: GLenum, arg_1811: GLboolean, arg_1812: GLuint) void {
    return glad_glVertexAttribP1ui.?(arg_1809, arg_1810, arg_1811, arg_1812);
}
pub inline fn glVertexAttribP1uiv(arg_1813: GLuint, arg_1814: GLenum, arg_1815: GLboolean, arg_1816: [*c]const GLuint) void {
    return glad_glVertexAttribP1uiv.?(arg_1813, arg_1814, arg_1815, arg_1816);
}
pub inline fn glVertexAttribP2ui(arg_1817: GLuint, arg_1818: GLenum, arg_1819: GLboolean, arg_1820: GLuint) void {
    return glad_glVertexAttribP2ui.?(arg_1817, arg_1818, arg_1819, arg_1820);
}
pub inline fn glVertexAttribP2uiv(arg_1821: GLuint, arg_1822: GLenum, arg_1823: GLboolean, arg_1824: [*c]const GLuint) void {
    return glad_glVertexAttribP2uiv.?(arg_1821, arg_1822, arg_1823, arg_1824);
}
pub inline fn glVertexAttribP3ui(arg_1825: GLuint, arg_1826: GLenum, arg_1827: GLboolean, arg_1828: GLuint) void {
    return glad_glVertexAttribP3ui.?(arg_1825, arg_1826, arg_1827, arg_1828);
}
pub inline fn glVertexAttribP3uiv(arg_1829: GLuint, arg_1830: GLenum, arg_1831: GLboolean, arg_1832: [*c]const GLuint) void {
    return glad_glVertexAttribP3uiv.?(arg_1829, arg_1830, arg_1831, arg_1832);
}
pub inline fn glVertexAttribP4ui(arg_1833: GLuint, arg_1834: GLenum, arg_1835: GLboolean, arg_1836: GLuint) void {
    return glad_glVertexAttribP4ui.?(arg_1833, arg_1834, arg_1835, arg_1836);
}
pub inline fn glVertexAttribP4uiv(arg_1837: GLuint, arg_1838: GLenum, arg_1839: GLboolean, arg_1840: [*c]const GLuint) void {
    return glad_glVertexAttribP4uiv.?(arg_1837, arg_1838, arg_1839, arg_1840);
}
pub inline fn glVertexP2ui(arg_1841: GLenum, arg_1842: GLuint) void {
    return glad_glVertexP2ui.?(arg_1841, arg_1842);
}
pub inline fn glVertexP2uiv(arg_1843: GLenum, arg_1844: [*c]const GLuint) void {
    return glad_glVertexP2uiv.?(arg_1843, arg_1844);
}
pub inline fn glVertexP3ui(arg_1845: GLenum, arg_1846: GLuint) void {
    return glad_glVertexP3ui.?(arg_1845, arg_1846);
}
pub inline fn glVertexP3uiv(arg_1847: GLenum, arg_1848: [*c]const GLuint) void {
    return glad_glVertexP3uiv.?(arg_1847, arg_1848);
}
pub inline fn glVertexP4ui(arg_1849: GLenum, arg_1850: GLuint) void {
    return glad_glVertexP4ui.?(arg_1849, arg_1850);
}
pub inline fn glVertexP4uiv(arg_1851: GLenum, arg_1852: [*c]const GLuint) void {
    return glad_glVertexP4uiv.?(arg_1851, arg_1852);
}
pub inline fn glTexCoordP1ui(arg_1853: GLenum, arg_1854: GLuint) void {
    return glad_glTexCoordP1ui.?(arg_1853, arg_1854);
}
pub inline fn glTexCoordP1uiv(arg_1855: GLenum, arg_1856: [*c]const GLuint) void {
    return glad_glTexCoordP1uiv.?(arg_1855, arg_1856);
}
pub inline fn glTexCoordP2ui(arg_1857: GLenum, arg_1858: GLuint) void {
    return glad_glTexCoordP2ui.?(arg_1857, arg_1858);
}
pub inline fn glTexCoordP2uiv(arg_1859: GLenum, arg_1860: [*c]const GLuint) void {
    return glad_glTexCoordP2uiv.?(arg_1859, arg_1860);
}
pub inline fn glTexCoordP3ui(arg_1861: GLenum, arg_1862: GLuint) void {
    return glad_glTexCoordP3ui.?(arg_1861, arg_1862);
}
pub inline fn glTexCoordP3uiv(arg_1863: GLenum, arg_1864: [*c]const GLuint) void {
    return glad_glTexCoordP3uiv.?(arg_1863, arg_1864);
}
pub inline fn glTexCoordP4ui(arg_1865: GLenum, arg_1866: GLuint) void {
    return glad_glTexCoordP4ui.?(arg_1865, arg_1866);
}
pub inline fn glTexCoordP4uiv(arg_1867: GLenum, arg_1868: [*c]const GLuint) void {
    return glad_glTexCoordP4uiv.?(arg_1867, arg_1868);
}
pub inline fn glMultiTexCoordP1ui(arg_1869: GLenum, arg_1870: GLenum, arg_1871: GLuint) void {
    return glad_glMultiTexCoordP1ui.?(arg_1869, arg_1870, arg_1871);
}
pub inline fn glMultiTexCoordP1uiv(arg_1872: GLenum, arg_1873: GLenum, arg_1874: [*c]const GLuint) void {
    return glad_glMultiTexCoordP1uiv.?(arg_1872, arg_1873, arg_1874);
}
pub inline fn glMultiTexCoordP2ui(arg_1875: GLenum, arg_1876: GLenum, arg_1877: GLuint) void {
    return glad_glMultiTexCoordP2ui.?(arg_1875, arg_1876, arg_1877);
}
pub inline fn glMultiTexCoordP2uiv(arg_1878: GLenum, arg_1879: GLenum, arg_1880: [*c]const GLuint) void {
    return glad_glMultiTexCoordP2uiv.?(arg_1878, arg_1879, arg_1880);
}
pub inline fn glMultiTexCoordP3ui(arg_1881: GLenum, arg_1882: GLenum, arg_1883: GLuint) void {
    return glad_glMultiTexCoordP3ui.?(arg_1881, arg_1882, arg_1883);
}
pub inline fn glMultiTexCoordP3uiv(arg_1884: GLenum, arg_1885: GLenum, arg_1886: [*c]const GLuint) void {
    return glad_glMultiTexCoordP3uiv.?(arg_1884, arg_1885, arg_1886);
}
pub inline fn glMultiTexCoordP4ui(arg_1887: GLenum, arg_1888: GLenum, arg_1889: GLuint) void {
    return glad_glMultiTexCoordP4ui.?(arg_1887, arg_1888, arg_1889);
}
pub inline fn glMultiTexCoordP4uiv(arg_1890: GLenum, arg_1891: GLenum, arg_1892: [*c]const GLuint) void {
    return glad_glMultiTexCoordP4uiv.?(arg_1890, arg_1891, arg_1892);
}
pub inline fn glNormalP3ui(arg_1893: GLenum, arg_1894: GLuint) void {
    return glad_glNormalP3ui.?(arg_1893, arg_1894);
}
pub inline fn glNormalP3uiv(arg_1895: GLenum, arg_1896: [*c]const GLuint) void {
    return glad_glNormalP3uiv.?(arg_1895, arg_1896);
}
pub inline fn glColorP3ui(arg_1897: GLenum, arg_1898: GLuint) void {
    return glad_glColorP3ui.?(arg_1897, arg_1898);
}
pub inline fn glColorP3uiv(arg_1899: GLenum, arg_1900: [*c]const GLuint) void {
    return glad_glColorP3uiv.?(arg_1899, arg_1900);
}
pub inline fn glColorP4ui(arg_1901: GLenum, arg_1902: GLuint) void {
    return glad_glColorP4ui.?(arg_1901, arg_1902);
}
pub inline fn glColorP4uiv(arg_1903: GLenum, arg_1904: [*c]const GLuint) void {
    return glad_glColorP4uiv.?(arg_1903, arg_1904);
}
pub inline fn glSecondaryColorP3ui(arg_1905: GLenum, arg_1906: GLuint) void {
    return glad_glSecondaryColorP3ui.?(arg_1905, arg_1906);
}
pub inline fn glSecondaryColorP3uiv(arg_1907: GLenum, arg_1908: [*c]const GLuint) void {
    return glad_glSecondaryColorP3uiv.?(arg_1907, arg_1908);
}
pub const GL_VERSION_4_0 = @as(c_int, 1);
pub inline fn glMinSampleShading(arg_1909: GLfloat) void {
    return glad_glMinSampleShading.?(arg_1909);
}
pub inline fn glBlendEquationi(arg_1910: GLuint, arg_1911: GLenum) void {
    return glad_glBlendEquationi.?(arg_1910, arg_1911);
}
pub inline fn glBlendEquationSeparatei(arg_1912: GLuint, arg_1913: GLenum, arg_1914: GLenum) void {
    return glad_glBlendEquationSeparatei.?(arg_1912, arg_1913, arg_1914);
}
pub inline fn glBlendFunci(arg_1915: GLuint, arg_1916: GLenum, arg_1917: GLenum) void {
    return glad_glBlendFunci.?(arg_1915, arg_1916, arg_1917);
}
pub inline fn glBlendFuncSeparatei(arg_1918: GLuint, arg_1919: GLenum, arg_1920: GLenum, arg_1921: GLenum, arg_1922: GLenum) void {
    return glad_glBlendFuncSeparatei.?(arg_1918, arg_1919, arg_1920, arg_1921, arg_1922);
}
pub inline fn glDrawArraysIndirect(arg_1923: GLenum, arg_1924: ?*const anyopaque) void {
    return glad_glDrawArraysIndirect.?(arg_1923, arg_1924);
}
pub inline fn glDrawElementsIndirect(arg_1925: GLenum, arg_1926: GLenum, arg_1927: ?*const anyopaque) void {
    return glad_glDrawElementsIndirect.?(arg_1925, arg_1926, arg_1927);
}
pub inline fn glUniform1d(arg_1928: GLint, arg_1929: GLdouble) void {
    return glad_glUniform1d.?(arg_1928, arg_1929);
}
pub inline fn glUniform2d(arg_1930: GLint, arg_1931: GLdouble, arg_1932: GLdouble) void {
    return glad_glUniform2d.?(arg_1930, arg_1931, arg_1932);
}
pub inline fn glUniform3d(arg_1933: GLint, arg_1934: GLdouble, arg_1935: GLdouble, arg_1936: GLdouble) void {
    return glad_glUniform3d.?(arg_1933, arg_1934, arg_1935, arg_1936);
}
pub inline fn glUniform4d(arg_1937: GLint, arg_1938: GLdouble, arg_1939: GLdouble, arg_1940: GLdouble, arg_1941: GLdouble) void {
    return glad_glUniform4d.?(arg_1937, arg_1938, arg_1939, arg_1940, arg_1941);
}
pub inline fn glUniform1dv(arg_1942: GLint, arg_1943: GLsizei, arg_1944: [*c]const GLdouble) void {
    return glad_glUniform1dv.?(arg_1942, arg_1943, arg_1944);
}
pub inline fn glUniform2dv(arg_1945: GLint, arg_1946: GLsizei, arg_1947: [*c]const GLdouble) void {
    return glad_glUniform2dv.?(arg_1945, arg_1946, arg_1947);
}
pub inline fn glUniform3dv(arg_1948: GLint, arg_1949: GLsizei, arg_1950: [*c]const GLdouble) void {
    return glad_glUniform3dv.?(arg_1948, arg_1949, arg_1950);
}
pub inline fn glUniform4dv(arg_1951: GLint, arg_1952: GLsizei, arg_1953: [*c]const GLdouble) void {
    return glad_glUniform4dv.?(arg_1951, arg_1952, arg_1953);
}
pub inline fn glUniformMatrix2dv(arg_1954: GLint, arg_1955: GLsizei, arg_1956: GLboolean, arg_1957: [*c]const GLdouble) void {
    return glad_glUniformMatrix2dv.?(arg_1954, arg_1955, arg_1956, arg_1957);
}
pub inline fn glUniformMatrix3dv(arg_1958: GLint, arg_1959: GLsizei, arg_1960: GLboolean, arg_1961: [*c]const GLdouble) void {
    return glad_glUniformMatrix3dv.?(arg_1958, arg_1959, arg_1960, arg_1961);
}
pub inline fn glUniformMatrix4dv(arg_1962: GLint, arg_1963: GLsizei, arg_1964: GLboolean, arg_1965: [*c]const GLdouble) void {
    return glad_glUniformMatrix4dv.?(arg_1962, arg_1963, arg_1964, arg_1965);
}
pub inline fn glUniformMatrix2x3dv(arg_1966: GLint, arg_1967: GLsizei, arg_1968: GLboolean, arg_1969: [*c]const GLdouble) void {
    return glad_glUniformMatrix2x3dv.?(arg_1966, arg_1967, arg_1968, arg_1969);
}
pub inline fn glUniformMatrix2x4dv(arg_1970: GLint, arg_1971: GLsizei, arg_1972: GLboolean, arg_1973: [*c]const GLdouble) void {
    return glad_glUniformMatrix2x4dv.?(arg_1970, arg_1971, arg_1972, arg_1973);
}
pub inline fn glUniformMatrix3x2dv(arg_1974: GLint, arg_1975: GLsizei, arg_1976: GLboolean, arg_1977: [*c]const GLdouble) void {
    return glad_glUniformMatrix3x2dv.?(arg_1974, arg_1975, arg_1976, arg_1977);
}
pub inline fn glUniformMatrix3x4dv(arg_1978: GLint, arg_1979: GLsizei, arg_1980: GLboolean, arg_1981: [*c]const GLdouble) void {
    return glad_glUniformMatrix3x4dv.?(arg_1978, arg_1979, arg_1980, arg_1981);
}
pub inline fn glUniformMatrix4x2dv(arg_1982: GLint, arg_1983: GLsizei, arg_1984: GLboolean, arg_1985: [*c]const GLdouble) void {
    return glad_glUniformMatrix4x2dv.?(arg_1982, arg_1983, arg_1984, arg_1985);
}
pub inline fn glUniformMatrix4x3dv(arg_1986: GLint, arg_1987: GLsizei, arg_1988: GLboolean, arg_1989: [*c]const GLdouble) void {
    return glad_glUniformMatrix4x3dv.?(arg_1986, arg_1987, arg_1988, arg_1989);
}
pub inline fn glGetUniformdv(arg_1990: GLuint, arg_1991: GLint, arg_1992: [*c]GLdouble) void {
    return glad_glGetUniformdv.?(arg_1990, arg_1991, arg_1992);
}
pub inline fn glGetSubroutineUniformLocation(arg_1993: GLuint, arg_1994: GLenum, arg_1995: [*c]const GLchar) GLint {
    return glad_glGetSubroutineUniformLocation.?(arg_1993, arg_1994, arg_1995);
}
pub inline fn glGetSubroutineIndex(arg_1996: GLuint, arg_1997: GLenum, arg_1998: [*c]const GLchar) GLuint {
    return glad_glGetSubroutineIndex.?(arg_1996, arg_1997, arg_1998);
}
pub inline fn glGetActiveSubroutineUniformiv(arg_1999: GLuint, arg_2000: GLenum, arg_2001: GLuint, arg_2002: GLenum, arg_2003: [*c]GLint) void {
    return glad_glGetActiveSubroutineUniformiv.?(arg_1999, arg_2000, arg_2001, arg_2002, arg_2003);
}
pub inline fn glGetActiveSubroutineUniformName(arg_2004: GLuint, arg_2005: GLenum, arg_2006: GLuint, arg_2007: GLsizei, arg_2008: [*c]GLsizei, arg_2009: [*c]GLchar) void {
    return glad_glGetActiveSubroutineUniformName.?(arg_2004, arg_2005, arg_2006, arg_2007, arg_2008, arg_2009);
}
pub inline fn glGetActiveSubroutineName(arg_2010: GLuint, arg_2011: GLenum, arg_2012: GLuint, arg_2013: GLsizei, arg_2014: [*c]GLsizei, arg_2015: [*c]GLchar) void {
    return glad_glGetActiveSubroutineName.?(arg_2010, arg_2011, arg_2012, arg_2013, arg_2014, arg_2015);
}
pub inline fn glUniformSubroutinesuiv(arg_2016: GLenum, arg_2017: GLsizei, arg_2018: [*c]const GLuint) void {
    return glad_glUniformSubroutinesuiv.?(arg_2016, arg_2017, arg_2018);
}
pub inline fn glGetUniformSubroutineuiv(arg_2019: GLenum, arg_2020: GLint, arg_2021: [*c]GLuint) void {
    return glad_glGetUniformSubroutineuiv.?(arg_2019, arg_2020, arg_2021);
}
pub inline fn glGetProgramStageiv(arg_2022: GLuint, arg_2023: GLenum, arg_2024: GLenum, arg_2025: [*c]GLint) void {
    return glad_glGetProgramStageiv.?(arg_2022, arg_2023, arg_2024, arg_2025);
}
pub inline fn glPatchParameteri(arg_2026: GLenum, arg_2027: GLint) void {
    return glad_glPatchParameteri.?(arg_2026, arg_2027);
}
pub inline fn glPatchParameterfv(arg_2028: GLenum, arg_2029: [*c]const GLfloat) void {
    return glad_glPatchParameterfv.?(arg_2028, arg_2029);
}
pub inline fn glBindTransformFeedback(arg_2030: GLenum, arg_2031: GLuint) void {
    return glad_glBindTransformFeedback.?(arg_2030, arg_2031);
}
pub inline fn glDeleteTransformFeedbacks(arg_2032: GLsizei, arg_2033: [*c]const GLuint) void {
    return glad_glDeleteTransformFeedbacks.?(arg_2032, arg_2033);
}
pub inline fn glGenTransformFeedbacks(arg_2034: GLsizei, arg_2035: [*c]GLuint) void {
    return glad_glGenTransformFeedbacks.?(arg_2034, arg_2035);
}
pub inline fn glIsTransformFeedback(arg_2036: GLuint) GLboolean {
    return glad_glIsTransformFeedback.?(arg_2036);
}
pub inline fn glPauseTransformFeedback() void {
    return glad_glPauseTransformFeedback.?();
}
pub inline fn glResumeTransformFeedback() void {
    return glad_glResumeTransformFeedback.?();
}
pub inline fn glDrawTransformFeedback(arg_2037: GLenum, arg_2038: GLuint) void {
    return glad_glDrawTransformFeedback.?(arg_2037, arg_2038);
}
pub inline fn glDrawTransformFeedbackStream(arg_2039: GLenum, arg_2040: GLuint, arg_2041: GLuint) void {
    return glad_glDrawTransformFeedbackStream.?(arg_2039, arg_2040, arg_2041);
}
pub inline fn glBeginQueryIndexed(arg_2042: GLenum, arg_2043: GLuint, arg_2044: GLuint) void {
    return glad_glBeginQueryIndexed.?(arg_2042, arg_2043, arg_2044);
}
pub inline fn glEndQueryIndexed(arg_2045: GLenum, arg_2046: GLuint) void {
    return glad_glEndQueryIndexed.?(arg_2045, arg_2046);
}
pub inline fn glGetQueryIndexediv(arg_2047: GLenum, arg_2048: GLuint, arg_2049: GLenum, arg_2050: [*c]GLint) void {
    return glad_glGetQueryIndexediv.?(arg_2047, arg_2048, arg_2049, arg_2050);
}
pub const GL_VERSION_4_1 = @as(c_int, 1);
pub inline fn glReleaseShaderCompiler() void {
    return glad_glReleaseShaderCompiler.?();
}
pub inline fn glShaderBinary(arg_2051: GLsizei, arg_2052: [*c]const GLuint, arg_2053: GLenum, arg_2054: ?*const anyopaque, arg_2055: GLsizei) void {
    return glad_glShaderBinary.?(arg_2051, arg_2052, arg_2053, arg_2054, arg_2055);
}
pub inline fn glGetShaderPrecisionFormat(arg_2056: GLenum, arg_2057: GLenum, arg_2058: [*c]GLint, arg_2059: [*c]GLint) void {
    return glad_glGetShaderPrecisionFormat.?(arg_2056, arg_2057, arg_2058, arg_2059);
}
pub inline fn glDepthRangef(arg_2060: GLfloat, arg_2061: GLfloat) void {
    return glad_glDepthRangef.?(arg_2060, arg_2061);
}
pub inline fn glClearDepthf(arg_2062: GLfloat) void {
    return glad_glClearDepthf.?(arg_2062);
}
pub inline fn glGetProgramBinary(arg_2063: GLuint, arg_2064: GLsizei, arg_2065: [*c]GLsizei, arg_2066: [*c]GLenum, arg_2067: ?*anyopaque) void {
    return glad_glGetProgramBinary.?(arg_2063, arg_2064, arg_2065, arg_2066, arg_2067);
}
pub inline fn glProgramBinary(arg_2068: GLuint, arg_2069: GLenum, arg_2070: ?*const anyopaque, arg_2071: GLsizei) void {
    return glad_glProgramBinary.?(arg_2068, arg_2069, arg_2070, arg_2071);
}
pub inline fn glProgramParameteri(arg_2072: GLuint, arg_2073: GLenum, arg_2074: GLint) void {
    return glad_glProgramParameteri.?(arg_2072, arg_2073, arg_2074);
}
pub inline fn glUseProgramStages(arg_2075: GLuint, arg_2076: GLbitfield, arg_2077: GLuint) void {
    return glad_glUseProgramStages.?(arg_2075, arg_2076, arg_2077);
}
pub inline fn glActiveShaderProgram(arg_2078: GLuint, arg_2079: GLuint) void {
    return glad_glActiveShaderProgram.?(arg_2078, arg_2079);
}
pub inline fn glCreateShaderProgramv(arg_2080: GLenum, arg_2081: GLsizei, arg_2082: [*c]const [*c]const GLchar) GLuint {
    return glad_glCreateShaderProgramv.?(arg_2080, arg_2081, arg_2082);
}
pub inline fn glBindProgramPipeline(arg_2083: GLuint) void {
    return glad_glBindProgramPipeline.?(arg_2083);
}
pub inline fn glDeleteProgramPipelines(arg_2084: GLsizei, arg_2085: [*c]const GLuint) void {
    return glad_glDeleteProgramPipelines.?(arg_2084, arg_2085);
}
pub inline fn glGenProgramPipelines(arg_2086: GLsizei, arg_2087: [*c]GLuint) void {
    return glad_glGenProgramPipelines.?(arg_2086, arg_2087);
}
pub inline fn glIsProgramPipeline(arg_2088: GLuint) GLboolean {
    return glad_glIsProgramPipeline.?(arg_2088);
}
pub inline fn glGetProgramPipelineiv(arg_2089: GLuint, arg_2090: GLenum, arg_2091: [*c]GLint) void {
    return glad_glGetProgramPipelineiv.?(arg_2089, arg_2090, arg_2091);
}
pub inline fn glProgramUniform1i(arg_2092: GLuint, arg_2093: GLint, arg_2094: GLint) void {
    return glad_glProgramUniform1i.?(arg_2092, arg_2093, arg_2094);
}
pub inline fn glProgramUniform1iv(arg_2095: GLuint, arg_2096: GLint, arg_2097: GLsizei, arg_2098: [*c]const GLint) void {
    return glad_glProgramUniform1iv.?(arg_2095, arg_2096, arg_2097, arg_2098);
}
pub inline fn glProgramUniform1f(arg_2099: GLuint, arg_2100: GLint, arg_2101: GLfloat) void {
    return glad_glProgramUniform1f.?(arg_2099, arg_2100, arg_2101);
}
pub inline fn glProgramUniform1fv(arg_2102: GLuint, arg_2103: GLint, arg_2104: GLsizei, arg_2105: [*c]const GLfloat) void {
    return glad_glProgramUniform1fv.?(arg_2102, arg_2103, arg_2104, arg_2105);
}
pub inline fn glProgramUniform1d(arg_2106: GLuint, arg_2107: GLint, arg_2108: GLdouble) void {
    return glad_glProgramUniform1d.?(arg_2106, arg_2107, arg_2108);
}
pub inline fn glProgramUniform1dv(arg_2109: GLuint, arg_2110: GLint, arg_2111: GLsizei, arg_2112: [*c]const GLdouble) void {
    return glad_glProgramUniform1dv.?(arg_2109, arg_2110, arg_2111, arg_2112);
}
pub inline fn glProgramUniform1ui(arg_2113: GLuint, arg_2114: GLint, arg_2115: GLuint) void {
    return glad_glProgramUniform1ui.?(arg_2113, arg_2114, arg_2115);
}
pub inline fn glProgramUniform1uiv(arg_2116: GLuint, arg_2117: GLint, arg_2118: GLsizei, arg_2119: [*c]const GLuint) void {
    return glad_glProgramUniform1uiv.?(arg_2116, arg_2117, arg_2118, arg_2119);
}
pub inline fn glProgramUniform2i(arg_2120: GLuint, arg_2121: GLint, arg_2122: GLint, arg_2123: GLint) void {
    return glad_glProgramUniform2i.?(arg_2120, arg_2121, arg_2122, arg_2123);
}
pub inline fn glProgramUniform2iv(arg_2124: GLuint, arg_2125: GLint, arg_2126: GLsizei, arg_2127: [*c]const GLint) void {
    return glad_glProgramUniform2iv.?(arg_2124, arg_2125, arg_2126, arg_2127);
}
pub inline fn glProgramUniform2f(arg_2128: GLuint, arg_2129: GLint, arg_2130: GLfloat, arg_2131: GLfloat) void {
    return glad_glProgramUniform2f.?(arg_2128, arg_2129, arg_2130, arg_2131);
}
pub inline fn glProgramUniform2fv(arg_2132: GLuint, arg_2133: GLint, arg_2134: GLsizei, arg_2135: [*c]const GLfloat) void {
    return glad_glProgramUniform2fv.?(arg_2132, arg_2133, arg_2134, arg_2135);
}
pub inline fn glProgramUniform2d(arg_2136: GLuint, arg_2137: GLint, arg_2138: GLdouble, arg_2139: GLdouble) void {
    return glad_glProgramUniform2d.?(arg_2136, arg_2137, arg_2138, arg_2139);
}
pub inline fn glProgramUniform2dv(arg_2140: GLuint, arg_2141: GLint, arg_2142: GLsizei, arg_2143: [*c]const GLdouble) void {
    return glad_glProgramUniform2dv.?(arg_2140, arg_2141, arg_2142, arg_2143);
}
pub inline fn glProgramUniform2ui(arg_2144: GLuint, arg_2145: GLint, arg_2146: GLuint, arg_2147: GLuint) void {
    return glad_glProgramUniform2ui.?(arg_2144, arg_2145, arg_2146, arg_2147);
}
pub inline fn glProgramUniform2uiv(arg_2148: GLuint, arg_2149: GLint, arg_2150: GLsizei, arg_2151: [*c]const GLuint) void {
    return glad_glProgramUniform2uiv.?(arg_2148, arg_2149, arg_2150, arg_2151);
}
pub inline fn glProgramUniform3i(arg_2152: GLuint, arg_2153: GLint, arg_2154: GLint, arg_2155: GLint, arg_2156: GLint) void {
    return glad_glProgramUniform3i.?(arg_2152, arg_2153, arg_2154, arg_2155, arg_2156);
}
pub inline fn glProgramUniform3iv(arg_2157: GLuint, arg_2158: GLint, arg_2159: GLsizei, arg_2160: [*c]const GLint) void {
    return glad_glProgramUniform3iv.?(arg_2157, arg_2158, arg_2159, arg_2160);
}
pub inline fn glProgramUniform3f(arg_2161: GLuint, arg_2162: GLint, arg_2163: GLfloat, arg_2164: GLfloat, arg_2165: GLfloat) void {
    return glad_glProgramUniform3f.?(arg_2161, arg_2162, arg_2163, arg_2164, arg_2165);
}
pub inline fn glProgramUniform3fv(arg_2166: GLuint, arg_2167: GLint, arg_2168: GLsizei, arg_2169: [*c]const GLfloat) void {
    return glad_glProgramUniform3fv.?(arg_2166, arg_2167, arg_2168, arg_2169);
}
pub inline fn glProgramUniform3d(arg_2170: GLuint, arg_2171: GLint, arg_2172: GLdouble, arg_2173: GLdouble, arg_2174: GLdouble) void {
    return glad_glProgramUniform3d.?(arg_2170, arg_2171, arg_2172, arg_2173, arg_2174);
}
pub inline fn glProgramUniform3dv(arg_2175: GLuint, arg_2176: GLint, arg_2177: GLsizei, arg_2178: [*c]const GLdouble) void {
    return glad_glProgramUniform3dv.?(arg_2175, arg_2176, arg_2177, arg_2178);
}
pub inline fn glProgramUniform3ui(arg_2179: GLuint, arg_2180: GLint, arg_2181: GLuint, arg_2182: GLuint, arg_2183: GLuint) void {
    return glad_glProgramUniform3ui.?(arg_2179, arg_2180, arg_2181, arg_2182, arg_2183);
}
pub inline fn glProgramUniform3uiv(arg_2184: GLuint, arg_2185: GLint, arg_2186: GLsizei, arg_2187: [*c]const GLuint) void {
    return glad_glProgramUniform3uiv.?(arg_2184, arg_2185, arg_2186, arg_2187);
}
pub inline fn glProgramUniform4i(arg_2188: GLuint, arg_2189: GLint, arg_2190: GLint, arg_2191: GLint, arg_2192: GLint, arg_2193: GLint) void {
    return glad_glProgramUniform4i.?(arg_2188, arg_2189, arg_2190, arg_2191, arg_2192, arg_2193);
}
pub inline fn glProgramUniform4iv(arg_2194: GLuint, arg_2195: GLint, arg_2196: GLsizei, arg_2197: [*c]const GLint) void {
    return glad_glProgramUniform4iv.?(arg_2194, arg_2195, arg_2196, arg_2197);
}
pub inline fn glProgramUniform4f(arg_2198: GLuint, arg_2199: GLint, arg_2200: GLfloat, arg_2201: GLfloat, arg_2202: GLfloat, arg_2203: GLfloat) void {
    return glad_glProgramUniform4f.?(arg_2198, arg_2199, arg_2200, arg_2201, arg_2202, arg_2203);
}
pub inline fn glProgramUniform4fv(arg_2204: GLuint, arg_2205: GLint, arg_2206: GLsizei, arg_2207: [*c]const GLfloat) void {
    return glad_glProgramUniform4fv.?(arg_2204, arg_2205, arg_2206, arg_2207);
}
pub inline fn glProgramUniform4d(arg_2208: GLuint, arg_2209: GLint, arg_2210: GLdouble, arg_2211: GLdouble, arg_2212: GLdouble, arg_2213: GLdouble) void {
    return glad_glProgramUniform4d.?(arg_2208, arg_2209, arg_2210, arg_2211, arg_2212, arg_2213);
}
pub inline fn glProgramUniform4dv(arg_2214: GLuint, arg_2215: GLint, arg_2216: GLsizei, arg_2217: [*c]const GLdouble) void {
    return glad_glProgramUniform4dv.?(arg_2214, arg_2215, arg_2216, arg_2217);
}
pub inline fn glProgramUniform4ui(arg_2218: GLuint, arg_2219: GLint, arg_2220: GLuint, arg_2221: GLuint, arg_2222: GLuint, arg_2223: GLuint) void {
    return glad_glProgramUniform4ui.?(arg_2218, arg_2219, arg_2220, arg_2221, arg_2222, arg_2223);
}
pub inline fn glProgramUniform4uiv(arg_2224: GLuint, arg_2225: GLint, arg_2226: GLsizei, arg_2227: [*c]const GLuint) void {
    return glad_glProgramUniform4uiv.?(arg_2224, arg_2225, arg_2226, arg_2227);
}
pub inline fn glProgramUniformMatrix2fv(arg_2228: GLuint, arg_2229: GLint, arg_2230: GLsizei, arg_2231: GLboolean, arg_2232: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix2fv.?(arg_2228, arg_2229, arg_2230, arg_2231, arg_2232);
}
pub inline fn glProgramUniformMatrix3fv(arg_2233: GLuint, arg_2234: GLint, arg_2235: GLsizei, arg_2236: GLboolean, arg_2237: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix3fv.?(arg_2233, arg_2234, arg_2235, arg_2236, arg_2237);
}
pub inline fn glProgramUniformMatrix4fv(arg_2238: GLuint, arg_2239: GLint, arg_2240: GLsizei, arg_2241: GLboolean, arg_2242: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix4fv.?(arg_2238, arg_2239, arg_2240, arg_2241, arg_2242);
}
pub inline fn glProgramUniformMatrix2dv(arg_2243: GLuint, arg_2244: GLint, arg_2245: GLsizei, arg_2246: GLboolean, arg_2247: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix2dv.?(arg_2243, arg_2244, arg_2245, arg_2246, arg_2247);
}
pub inline fn glProgramUniformMatrix3dv(arg_2248: GLuint, arg_2249: GLint, arg_2250: GLsizei, arg_2251: GLboolean, arg_2252: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix3dv.?(arg_2248, arg_2249, arg_2250, arg_2251, arg_2252);
}
pub inline fn glProgramUniformMatrix4dv(arg_2253: GLuint, arg_2254: GLint, arg_2255: GLsizei, arg_2256: GLboolean, arg_2257: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix4dv.?(arg_2253, arg_2254, arg_2255, arg_2256, arg_2257);
}
pub inline fn glProgramUniformMatrix2x3fv(arg_2258: GLuint, arg_2259: GLint, arg_2260: GLsizei, arg_2261: GLboolean, arg_2262: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix2x3fv.?(arg_2258, arg_2259, arg_2260, arg_2261, arg_2262);
}
pub inline fn glProgramUniformMatrix3x2fv(arg_2263: GLuint, arg_2264: GLint, arg_2265: GLsizei, arg_2266: GLboolean, arg_2267: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix3x2fv.?(arg_2263, arg_2264, arg_2265, arg_2266, arg_2267);
}
pub inline fn glProgramUniformMatrix2x4fv(arg_2268: GLuint, arg_2269: GLint, arg_2270: GLsizei, arg_2271: GLboolean, arg_2272: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix2x4fv.?(arg_2268, arg_2269, arg_2270, arg_2271, arg_2272);
}
pub inline fn glProgramUniformMatrix4x2fv(arg_2273: GLuint, arg_2274: GLint, arg_2275: GLsizei, arg_2276: GLboolean, arg_2277: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix4x2fv.?(arg_2273, arg_2274, arg_2275, arg_2276, arg_2277);
}
pub inline fn glProgramUniformMatrix3x4fv(arg_2278: GLuint, arg_2279: GLint, arg_2280: GLsizei, arg_2281: GLboolean, arg_2282: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix3x4fv.?(arg_2278, arg_2279, arg_2280, arg_2281, arg_2282);
}
pub inline fn glProgramUniformMatrix4x3fv(arg_2283: GLuint, arg_2284: GLint, arg_2285: GLsizei, arg_2286: GLboolean, arg_2287: [*c]const GLfloat) void {
    return glad_glProgramUniformMatrix4x3fv.?(arg_2283, arg_2284, arg_2285, arg_2286, arg_2287);
}
pub inline fn glProgramUniformMatrix2x3dv(arg_2288: GLuint, arg_2289: GLint, arg_2290: GLsizei, arg_2291: GLboolean, arg_2292: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix2x3dv.?(arg_2288, arg_2289, arg_2290, arg_2291, arg_2292);
}
pub inline fn glProgramUniformMatrix3x2dv(arg_2293: GLuint, arg_2294: GLint, arg_2295: GLsizei, arg_2296: GLboolean, arg_2297: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix3x2dv.?(arg_2293, arg_2294, arg_2295, arg_2296, arg_2297);
}
pub inline fn glProgramUniformMatrix2x4dv(arg_2298: GLuint, arg_2299: GLint, arg_2300: GLsizei, arg_2301: GLboolean, arg_2302: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix2x4dv.?(arg_2298, arg_2299, arg_2300, arg_2301, arg_2302);
}
pub inline fn glProgramUniformMatrix4x2dv(arg_2303: GLuint, arg_2304: GLint, arg_2305: GLsizei, arg_2306: GLboolean, arg_2307: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix4x2dv.?(arg_2303, arg_2304, arg_2305, arg_2306, arg_2307);
}
pub inline fn glProgramUniformMatrix3x4dv(arg_2308: GLuint, arg_2309: GLint, arg_2310: GLsizei, arg_2311: GLboolean, arg_2312: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix3x4dv.?(arg_2308, arg_2309, arg_2310, arg_2311, arg_2312);
}
pub inline fn glProgramUniformMatrix4x3dv(arg_2313: GLuint, arg_2314: GLint, arg_2315: GLsizei, arg_2316: GLboolean, arg_2317: [*c]const GLdouble) void {
    return glad_glProgramUniformMatrix4x3dv.?(arg_2313, arg_2314, arg_2315, arg_2316, arg_2317);
}
pub inline fn glValidateProgramPipeline(arg_2318: GLuint) void {
    return glad_glValidateProgramPipeline.?(arg_2318);
}
pub inline fn glGetProgramPipelineInfoLog(arg_2319: GLuint, arg_2320: GLsizei, arg_2321: [*c]GLsizei, arg_2322: [*c]GLchar) void {
    return glad_glGetProgramPipelineInfoLog.?(arg_2319, arg_2320, arg_2321, arg_2322);
}
pub inline fn glVertexAttribL1d(arg_2323: GLuint, arg_2324: GLdouble) void {
    return glad_glVertexAttribL1d.?(arg_2323, arg_2324);
}
pub inline fn glVertexAttribL2d(arg_2325: GLuint, arg_2326: GLdouble, arg_2327: GLdouble) void {
    return glad_glVertexAttribL2d.?(arg_2325, arg_2326, arg_2327);
}
pub inline fn glVertexAttribL3d(arg_2328: GLuint, arg_2329: GLdouble, arg_2330: GLdouble, arg_2331: GLdouble) void {
    return glad_glVertexAttribL3d.?(arg_2328, arg_2329, arg_2330, arg_2331);
}
pub inline fn glVertexAttribL4d(arg_2332: GLuint, arg_2333: GLdouble, arg_2334: GLdouble, arg_2335: GLdouble, arg_2336: GLdouble) void {
    return glad_glVertexAttribL4d.?(arg_2332, arg_2333, arg_2334, arg_2335, arg_2336);
}
pub inline fn glVertexAttribL1dv(arg_2337: GLuint, arg_2338: [*c]const GLdouble) void {
    return glad_glVertexAttribL1dv.?(arg_2337, arg_2338);
}
pub inline fn glVertexAttribL2dv(arg_2339: GLuint, arg_2340: [*c]const GLdouble) void {
    return glad_glVertexAttribL2dv.?(arg_2339, arg_2340);
}
pub inline fn glVertexAttribL3dv(arg_2341: GLuint, arg_2342: [*c]const GLdouble) void {
    return glad_glVertexAttribL3dv.?(arg_2341, arg_2342);
}
pub inline fn glVertexAttribL4dv(arg_2343: GLuint, arg_2344: [*c]const GLdouble) void {
    return glad_glVertexAttribL4dv.?(arg_2343, arg_2344);
}
pub inline fn glVertexAttribLPointer(arg_2345: GLuint, arg_2346: GLint, arg_2347: GLenum, arg_2348: GLsizei, arg_2349: ?*const anyopaque) void {
    return glad_glVertexAttribLPointer.?(arg_2345, arg_2346, arg_2347, arg_2348, arg_2349);
}
pub inline fn glGetVertexAttribLdv(arg_2350: GLuint, arg_2351: GLenum, arg_2352: [*c]GLdouble) void {
    return glad_glGetVertexAttribLdv.?(arg_2350, arg_2351, arg_2352);
}
pub inline fn glViewportArrayv(arg_2353: GLuint, arg_2354: GLsizei, arg_2355: [*c]const GLfloat) void {
    return glad_glViewportArrayv.?(arg_2353, arg_2354, arg_2355);
}
pub inline fn glViewportIndexedf(arg_2356: GLuint, arg_2357: GLfloat, arg_2358: GLfloat, arg_2359: GLfloat, arg_2360: GLfloat) void {
    return glad_glViewportIndexedf.?(arg_2356, arg_2357, arg_2358, arg_2359, arg_2360);
}
pub inline fn glViewportIndexedfv(arg_2361: GLuint, arg_2362: [*c]const GLfloat) void {
    return glad_glViewportIndexedfv.?(arg_2361, arg_2362);
}
pub inline fn glScissorArrayv(arg_2363: GLuint, arg_2364: GLsizei, arg_2365: [*c]const GLint) void {
    return glad_glScissorArrayv.?(arg_2363, arg_2364, arg_2365);
}
pub inline fn glScissorIndexed(arg_2366: GLuint, arg_2367: GLint, arg_2368: GLint, arg_2369: GLsizei, arg_2370: GLsizei) void {
    return glad_glScissorIndexed.?(arg_2366, arg_2367, arg_2368, arg_2369, arg_2370);
}
pub inline fn glScissorIndexedv(arg_2371: GLuint, arg_2372: [*c]const GLint) void {
    return glad_glScissorIndexedv.?(arg_2371, arg_2372);
}
pub inline fn glDepthRangeArrayv(arg_2373: GLuint, arg_2374: GLsizei, arg_2375: [*c]const GLdouble) void {
    return glad_glDepthRangeArrayv.?(arg_2373, arg_2374, arg_2375);
}
pub inline fn glDepthRangeIndexed(arg_2376: GLuint, arg_2377: GLdouble, arg_2378: GLdouble) void {
    return glad_glDepthRangeIndexed.?(arg_2376, arg_2377, arg_2378);
}
pub inline fn glGetFloati_v(arg_2379: GLenum, arg_2380: GLuint, arg_2381: [*c]GLfloat) void {
    return glad_glGetFloati_v.?(arg_2379, arg_2380, arg_2381);
}
pub inline fn glGetDoublei_v(arg_2382: GLenum, arg_2383: GLuint, arg_2384: [*c]GLdouble) void {
    return glad_glGetDoublei_v.?(arg_2382, arg_2383, arg_2384);
}
pub const GL_VERSION_4_2 = @as(c_int, 1);
pub inline fn glDrawArraysInstancedBaseInstance(arg_2385: GLenum, arg_2386: GLint, arg_2387: GLsizei, arg_2388: GLsizei, arg_2389: GLuint) void {
    return glad_glDrawArraysInstancedBaseInstance.?(arg_2385, arg_2386, arg_2387, arg_2388, arg_2389);
}
pub inline fn glDrawElementsInstancedBaseInstance(arg_2390: GLenum, arg_2391: GLsizei, arg_2392: GLenum, arg_2393: ?*const anyopaque, arg_2394: GLsizei, arg_2395: GLuint) void {
    return glad_glDrawElementsInstancedBaseInstance.?(arg_2390, arg_2391, arg_2392, arg_2393, arg_2394, arg_2395);
}
pub inline fn glDrawElementsInstancedBaseVertexBaseInstance(arg_2396: GLenum, arg_2397: GLsizei, arg_2398: GLenum, arg_2399: ?*const anyopaque, arg_2400: GLsizei, arg_2401: GLint, arg_2402: GLuint) void {
    return glad_glDrawElementsInstancedBaseVertexBaseInstance.?(arg_2396, arg_2397, arg_2398, arg_2399, arg_2400, arg_2401, arg_2402);
}
pub inline fn glGetInternalformativ(arg_2403: GLenum, arg_2404: GLenum, arg_2405: GLenum, arg_2406: GLsizei, arg_2407: [*c]GLint) void {
    return glad_glGetInternalformativ.?(arg_2403, arg_2404, arg_2405, arg_2406, arg_2407);
}
pub inline fn glGetActiveAtomicCounterBufferiv(arg_2408: GLuint, arg_2409: GLuint, arg_2410: GLenum, arg_2411: [*c]GLint) void {
    return glad_glGetActiveAtomicCounterBufferiv.?(arg_2408, arg_2409, arg_2410, arg_2411);
}
pub inline fn glBindImageTexture(arg_2412: GLuint, arg_2413: GLuint, arg_2414: GLint, arg_2415: GLboolean, arg_2416: GLint, arg_2417: GLenum, arg_2418: GLenum) void {
    return glad_glBindImageTexture.?(arg_2412, arg_2413, arg_2414, arg_2415, arg_2416, arg_2417, arg_2418);
}
pub inline fn glMemoryBarrier(arg_2419: GLbitfield) void {
    return glad_glMemoryBarrier.?(arg_2419);
}
pub inline fn glTexStorage1D(arg_2420: GLenum, arg_2421: GLsizei, arg_2422: GLenum, arg_2423: GLsizei) void {
    return glad_glTexStorage1D.?(arg_2420, arg_2421, arg_2422, arg_2423);
}
pub inline fn glTexStorage2D(arg_2424: GLenum, arg_2425: GLsizei, arg_2426: GLenum, arg_2427: GLsizei, arg_2428: GLsizei) void {
    return glad_glTexStorage2D.?(arg_2424, arg_2425, arg_2426, arg_2427, arg_2428);
}
pub inline fn glTexStorage3D(arg_2429: GLenum, arg_2430: GLsizei, arg_2431: GLenum, arg_2432: GLsizei, arg_2433: GLsizei, arg_2434: GLsizei) void {
    return glad_glTexStorage3D.?(arg_2429, arg_2430, arg_2431, arg_2432, arg_2433, arg_2434);
}
pub inline fn glDrawTransformFeedbackInstanced(arg_2435: GLenum, arg_2436: GLuint, arg_2437: GLsizei) void {
    return glad_glDrawTransformFeedbackInstanced.?(arg_2435, arg_2436, arg_2437);
}
pub inline fn glDrawTransformFeedbackStreamInstanced(arg_2438: GLenum, arg_2439: GLuint, arg_2440: GLuint, arg_2441: GLsizei) void {
    return glad_glDrawTransformFeedbackStreamInstanced.?(arg_2438, arg_2439, arg_2440, arg_2441);
}
pub const GL_VERSION_4_3 = @as(c_int, 1);
pub inline fn glClearBufferData(arg_2442: GLenum, arg_2443: GLenum, arg_2444: GLenum, arg_2445: GLenum, arg_2446: ?*const anyopaque) void {
    return glad_glClearBufferData.?(arg_2442, arg_2443, arg_2444, arg_2445, arg_2446);
}
pub inline fn glClearBufferSubData(arg_2447: GLenum, arg_2448: GLenum, arg_2449: GLintptr, arg_2450: GLsizeiptr, arg_2451: GLenum, arg_2452: GLenum, arg_2453: ?*const anyopaque) void {
    return glad_glClearBufferSubData.?(arg_2447, arg_2448, arg_2449, arg_2450, arg_2451, arg_2452, arg_2453);
}
pub inline fn glDispatchCompute(arg_2454: GLuint, arg_2455: GLuint, arg_2456: GLuint) void {
    return glad_glDispatchCompute.?(arg_2454, arg_2455, arg_2456);
}
pub inline fn glDispatchComputeIndirect(arg_2457: GLintptr) void {
    return glad_glDispatchComputeIndirect.?(arg_2457);
}
pub inline fn glCopyImageSubData(arg_2458: GLuint, arg_2459: GLenum, arg_2460: GLint, arg_2461: GLint, arg_2462: GLint, arg_2463: GLint, arg_2464: GLuint, arg_2465: GLenum, arg_2466: GLint, arg_2467: GLint, arg_2468: GLint, arg_2469: GLint, arg_2470: GLsizei, arg_2471: GLsizei, arg_2472: GLsizei) void {
    return glad_glCopyImageSubData.?(arg_2458, arg_2459, arg_2460, arg_2461, arg_2462, arg_2463, arg_2464, arg_2465, arg_2466, arg_2467, arg_2468, arg_2469, arg_2470, arg_2471, arg_2472);
}
pub inline fn glFramebufferParameteri(arg_2473: GLenum, arg_2474: GLenum, arg_2475: GLint) void {
    return glad_glFramebufferParameteri.?(arg_2473, arg_2474, arg_2475);
}
pub inline fn glGetFramebufferParameteriv(arg_2476: GLenum, arg_2477: GLenum, arg_2478: [*c]GLint) void {
    return glad_glGetFramebufferParameteriv.?(arg_2476, arg_2477, arg_2478);
}
pub inline fn glGetInternalformati64v(arg_2479: GLenum, arg_2480: GLenum, arg_2481: GLenum, arg_2482: GLsizei, arg_2483: [*c]GLint64) void {
    return glad_glGetInternalformati64v.?(arg_2479, arg_2480, arg_2481, arg_2482, arg_2483);
}
pub inline fn glInvalidateTexSubImage(arg_2484: GLuint, arg_2485: GLint, arg_2486: GLint, arg_2487: GLint, arg_2488: GLint, arg_2489: GLsizei, arg_2490: GLsizei, arg_2491: GLsizei) void {
    return glad_glInvalidateTexSubImage.?(arg_2484, arg_2485, arg_2486, arg_2487, arg_2488, arg_2489, arg_2490, arg_2491);
}
pub inline fn glInvalidateTexImage(arg_2492: GLuint, arg_2493: GLint) void {
    return glad_glInvalidateTexImage.?(arg_2492, arg_2493);
}
pub inline fn glInvalidateBufferSubData(arg_2494: GLuint, arg_2495: GLintptr, arg_2496: GLsizeiptr) void {
    return glad_glInvalidateBufferSubData.?(arg_2494, arg_2495, arg_2496);
}
pub inline fn glInvalidateBufferData(arg_2497: GLuint) void {
    return glad_glInvalidateBufferData.?(arg_2497);
}
pub inline fn glInvalidateFramebuffer(arg_2498: GLenum, arg_2499: GLsizei, arg_2500: [*c]const GLenum) void {
    return glad_glInvalidateFramebuffer.?(arg_2498, arg_2499, arg_2500);
}
pub inline fn glInvalidateSubFramebuffer(arg_2501: GLenum, arg_2502: GLsizei, arg_2503: [*c]const GLenum, arg_2504: GLint, arg_2505: GLint, arg_2506: GLsizei, arg_2507: GLsizei) void {
    return glad_glInvalidateSubFramebuffer.?(arg_2501, arg_2502, arg_2503, arg_2504, arg_2505, arg_2506, arg_2507);
}
pub inline fn glMultiDrawArraysIndirect(arg_2508: GLenum, arg_2509: ?*const anyopaque, arg_2510: GLsizei, arg_2511: GLsizei) void {
    return glad_glMultiDrawArraysIndirect.?(arg_2508, arg_2509, arg_2510, arg_2511);
}
pub inline fn glMultiDrawElementsIndirect(arg_2512: GLenum, arg_2513: GLenum, arg_2514: ?*const anyopaque, arg_2515: GLsizei, arg_2516: GLsizei) void {
    return glad_glMultiDrawElementsIndirect.?(arg_2512, arg_2513, arg_2514, arg_2515, arg_2516);
}
pub inline fn glGetProgramInterfaceiv(arg_2517: GLuint, arg_2518: GLenum, arg_2519: GLenum, arg_2520: [*c]GLint) void {
    return glad_glGetProgramInterfaceiv.?(arg_2517, arg_2518, arg_2519, arg_2520);
}
pub inline fn glGetProgramResourceIndex(arg_2521: GLuint, arg_2522: GLenum, arg_2523: [*c]const GLchar) GLuint {
    return glad_glGetProgramResourceIndex.?(arg_2521, arg_2522, arg_2523);
}
pub inline fn glGetProgramResourceName(arg_2524: GLuint, arg_2525: GLenum, arg_2526: GLuint, arg_2527: GLsizei, arg_2528: [*c]GLsizei, arg_2529: [*c]GLchar) void {
    return glad_glGetProgramResourceName.?(arg_2524, arg_2525, arg_2526, arg_2527, arg_2528, arg_2529);
}
pub inline fn glGetProgramResourceiv(arg_2530: GLuint, arg_2531: GLenum, arg_2532: GLuint, arg_2533: GLsizei, arg_2534: [*c]const GLenum, arg_2535: GLsizei, arg_2536: [*c]GLsizei, arg_2537: [*c]GLint) void {
    return glad_glGetProgramResourceiv.?(arg_2530, arg_2531, arg_2532, arg_2533, arg_2534, arg_2535, arg_2536, arg_2537);
}
pub inline fn glGetProgramResourceLocation(arg_2538: GLuint, arg_2539: GLenum, arg_2540: [*c]const GLchar) GLint {
    return glad_glGetProgramResourceLocation.?(arg_2538, arg_2539, arg_2540);
}
pub inline fn glGetProgramResourceLocationIndex(arg_2541: GLuint, arg_2542: GLenum, arg_2543: [*c]const GLchar) GLint {
    return glad_glGetProgramResourceLocationIndex.?(arg_2541, arg_2542, arg_2543);
}
pub inline fn glShaderStorageBlockBinding(arg_2544: GLuint, arg_2545: GLuint, arg_2546: GLuint) void {
    return glad_glShaderStorageBlockBinding.?(arg_2544, arg_2545, arg_2546);
}
pub inline fn glTexBufferRange(arg_2547: GLenum, arg_2548: GLenum, arg_2549: GLuint, arg_2550: GLintptr, arg_2551: GLsizeiptr) void {
    return glad_glTexBufferRange.?(arg_2547, arg_2548, arg_2549, arg_2550, arg_2551);
}
pub inline fn glTexStorage2DMultisample(arg_2552: GLenum, arg_2553: GLsizei, arg_2554: GLenum, arg_2555: GLsizei, arg_2556: GLsizei, arg_2557: GLboolean) void {
    return glad_glTexStorage2DMultisample.?(arg_2552, arg_2553, arg_2554, arg_2555, arg_2556, arg_2557);
}
pub inline fn glTexStorage3DMultisample(arg_2558: GLenum, arg_2559: GLsizei, arg_2560: GLenum, arg_2561: GLsizei, arg_2562: GLsizei, arg_2563: GLsizei, arg_2564: GLboolean) void {
    return glad_glTexStorage3DMultisample.?(arg_2558, arg_2559, arg_2560, arg_2561, arg_2562, arg_2563, arg_2564);
}
pub inline fn glTextureView(arg_2565: GLuint, arg_2566: GLenum, arg_2567: GLuint, arg_2568: GLenum, arg_2569: GLuint, arg_2570: GLuint, arg_2571: GLuint, arg_2572: GLuint) void {
    return glad_glTextureView.?(arg_2565, arg_2566, arg_2567, arg_2568, arg_2569, arg_2570, arg_2571, arg_2572);
}
pub inline fn glBindVertexBuffer(arg_2573: GLuint, arg_2574: GLuint, arg_2575: GLintptr, arg_2576: GLsizei) void {
    return glad_glBindVertexBuffer.?(arg_2573, arg_2574, arg_2575, arg_2576);
}
pub inline fn glVertexAttribFormat(arg_2577: GLuint, arg_2578: GLint, arg_2579: GLenum, arg_2580: GLboolean, arg_2581: GLuint) void {
    return glad_glVertexAttribFormat.?(arg_2577, arg_2578, arg_2579, arg_2580, arg_2581);
}
pub inline fn glVertexAttribIFormat(arg_2582: GLuint, arg_2583: GLint, arg_2584: GLenum, arg_2585: GLuint) void {
    return glad_glVertexAttribIFormat.?(arg_2582, arg_2583, arg_2584, arg_2585);
}
pub inline fn glVertexAttribLFormat(arg_2586: GLuint, arg_2587: GLint, arg_2588: GLenum, arg_2589: GLuint) void {
    return glad_glVertexAttribLFormat.?(arg_2586, arg_2587, arg_2588, arg_2589);
}
pub inline fn glVertexAttribBinding(arg_2590: GLuint, arg_2591: GLuint) void {
    return glad_glVertexAttribBinding.?(arg_2590, arg_2591);
}
pub inline fn glVertexBindingDivisor(arg_2592: GLuint, arg_2593: GLuint) void {
    return glad_glVertexBindingDivisor.?(arg_2592, arg_2593);
}
pub inline fn glDebugMessageControl(arg_2594: GLenum, arg_2595: GLenum, arg_2596: GLenum, arg_2597: GLsizei, arg_2598: [*c]const GLuint, arg_2599: GLboolean) void {
    return glad_glDebugMessageControl.?(arg_2594, arg_2595, arg_2596, arg_2597, arg_2598, arg_2599);
}
pub inline fn glDebugMessageInsert(arg_2600: GLenum, arg_2601: GLenum, arg_2602: GLuint, arg_2603: GLenum, arg_2604: GLsizei, arg_2605: [*c]const GLchar) void {
    return glad_glDebugMessageInsert.?(arg_2600, arg_2601, arg_2602, arg_2603, arg_2604, arg_2605);
}
pub inline fn glDebugMessageCallback(arg_2606: GLDEBUGPROC, arg_2607: ?*const anyopaque) void {
    return glad_glDebugMessageCallback.?(arg_2606, arg_2607);
}
pub inline fn glGetDebugMessageLog(arg_2608: GLuint, arg_2609: GLsizei, arg_2610: [*c]GLenum, arg_2611: [*c]GLenum, arg_2612: [*c]GLuint, arg_2613: [*c]GLenum, arg_2614: [*c]GLsizei, arg_2615: [*c]GLchar) GLuint {
    return glad_glGetDebugMessageLog.?(arg_2608, arg_2609, arg_2610, arg_2611, arg_2612, arg_2613, arg_2614, arg_2615);
}
pub inline fn glPushDebugGroup(arg_2616: GLenum, arg_2617: GLuint, arg_2618: GLsizei, arg_2619: [*c]const GLchar) void {
    return glad_glPushDebugGroup.?(arg_2616, arg_2617, arg_2618, arg_2619);
}
pub inline fn glPopDebugGroup() void {
    return glad_glPopDebugGroup.?();
}
pub inline fn glObjectLabel(arg_2620: GLenum, arg_2621: GLuint, arg_2622: GLsizei, arg_2623: [*c]const GLchar) void {
    return glad_glObjectLabel.?(arg_2620, arg_2621, arg_2622, arg_2623);
}
pub inline fn glGetObjectLabel(arg_2624: GLenum, arg_2625: GLuint, arg_2626: GLsizei, arg_2627: [*c]GLsizei, arg_2628: [*c]GLchar) void {
    return glad_glGetObjectLabel.?(arg_2624, arg_2625, arg_2626, arg_2627, arg_2628);
}
pub inline fn glObjectPtrLabel(arg_2629: ?*const anyopaque, arg_2630: GLsizei, arg_2631: [*c]const GLchar) void {
    return glad_glObjectPtrLabel.?(arg_2629, arg_2630, arg_2631);
}
pub inline fn glGetObjectPtrLabel(arg_2632: ?*const anyopaque, arg_2633: GLsizei, arg_2634: [*c]GLsizei, arg_2635: [*c]GLchar) void {
    return glad_glGetObjectPtrLabel.?(arg_2632, arg_2633, arg_2634, arg_2635);
}
pub const GL_VERSION_4_4 = @as(c_int, 1);
pub inline fn glBufferStorage(arg_2636: GLenum, arg_2637: GLsizeiptr, arg_2638: ?*const anyopaque, arg_2639: GLbitfield) void {
    return glad_glBufferStorage.?(arg_2636, arg_2637, arg_2638, arg_2639);
}
pub inline fn glClearTexImage(arg_2640: GLuint, arg_2641: GLint, arg_2642: GLenum, arg_2643: GLenum, arg_2644: ?*const anyopaque) void {
    return glad_glClearTexImage.?(arg_2640, arg_2641, arg_2642, arg_2643, arg_2644);
}
pub inline fn glClearTexSubImage(arg_2645: GLuint, arg_2646: GLint, arg_2647: GLint, arg_2648: GLint, arg_2649: GLint, arg_2650: GLsizei, arg_2651: GLsizei, arg_2652: GLsizei, arg_2653: GLenum, arg_2654: GLenum, arg_2655: ?*const anyopaque) void {
    return glad_glClearTexSubImage.?(arg_2645, arg_2646, arg_2647, arg_2648, arg_2649, arg_2650, arg_2651, arg_2652, arg_2653, arg_2654, arg_2655);
}
pub inline fn glBindBuffersBase(arg_2656: GLenum, arg_2657: GLuint, arg_2658: GLsizei, arg_2659: [*c]const GLuint) void {
    return glad_glBindBuffersBase.?(arg_2656, arg_2657, arg_2658, arg_2659);
}
pub inline fn glBindBuffersRange(arg_2660: GLenum, arg_2661: GLuint, arg_2662: GLsizei, arg_2663: [*c]const GLuint, arg_2664: [*c]const GLintptr, arg_2665: [*c]const GLsizeiptr) void {
    return glad_glBindBuffersRange.?(arg_2660, arg_2661, arg_2662, arg_2663, arg_2664, arg_2665);
}
pub inline fn glBindTextures(arg_2666: GLuint, arg_2667: GLsizei, arg_2668: [*c]const GLuint) void {
    return glad_glBindTextures.?(arg_2666, arg_2667, arg_2668);
}
pub inline fn glBindSamplers(arg_2669: GLuint, arg_2670: GLsizei, arg_2671: [*c]const GLuint) void {
    return glad_glBindSamplers.?(arg_2669, arg_2670, arg_2671);
}
pub inline fn glBindImageTextures(arg_2672: GLuint, arg_2673: GLsizei, arg_2674: [*c]const GLuint) void {
    return glad_glBindImageTextures.?(arg_2672, arg_2673, arg_2674);
}
pub inline fn glBindVertexBuffers(arg_2675: GLuint, arg_2676: GLsizei, arg_2677: [*c]const GLuint, arg_2678: [*c]const GLintptr, arg_2679: [*c]const GLsizei) void {
    return glad_glBindVertexBuffers.?(arg_2675, arg_2676, arg_2677, arg_2678, arg_2679);
}
pub const GL_VERSION_4_5 = @as(c_int, 1);
pub inline fn glClipControl(arg_2680: GLenum, arg_2681: GLenum) void {
    return glad_glClipControl.?(arg_2680, arg_2681);
}
pub inline fn glCreateTransformFeedbacks(arg_2682: GLsizei, arg_2683: [*c]GLuint) void {
    return glad_glCreateTransformFeedbacks.?(arg_2682, arg_2683);
}
pub inline fn glTransformFeedbackBufferBase(arg_2684: GLuint, arg_2685: GLuint, arg_2686: GLuint) void {
    return glad_glTransformFeedbackBufferBase.?(arg_2684, arg_2685, arg_2686);
}
pub inline fn glTransformFeedbackBufferRange(arg_2687: GLuint, arg_2688: GLuint, arg_2689: GLuint, arg_2690: GLintptr, arg_2691: GLsizeiptr) void {
    return glad_glTransformFeedbackBufferRange.?(arg_2687, arg_2688, arg_2689, arg_2690, arg_2691);
}
pub inline fn glGetTransformFeedbackiv(arg_2692: GLuint, arg_2693: GLenum, arg_2694: [*c]GLint) void {
    return glad_glGetTransformFeedbackiv.?(arg_2692, arg_2693, arg_2694);
}
pub inline fn glGetTransformFeedbacki_v(arg_2695: GLuint, arg_2696: GLenum, arg_2697: GLuint, arg_2698: [*c]GLint) void {
    return glad_glGetTransformFeedbacki_v.?(arg_2695, arg_2696, arg_2697, arg_2698);
}
pub inline fn glGetTransformFeedbacki64_v(arg_2699: GLuint, arg_2700: GLenum, arg_2701: GLuint, arg_2702: [*c]GLint64) void {
    return glad_glGetTransformFeedbacki64_v.?(arg_2699, arg_2700, arg_2701, arg_2702);
}
pub inline fn glCreateBuffers(arg_2703: GLsizei, arg_2704: [*c]GLuint) void {
    return glad_glCreateBuffers.?(arg_2703, arg_2704);
}
pub inline fn glNamedBufferStorage(arg_2705: GLuint, arg_2706: GLsizeiptr, arg_2707: ?*const anyopaque, arg_2708: GLbitfield) void {
    return glad_glNamedBufferStorage.?(arg_2705, arg_2706, arg_2707, arg_2708);
}
pub inline fn glNamedBufferData(arg_2709: GLuint, arg_2710: GLsizeiptr, arg_2711: ?*const anyopaque, arg_2712: GLenum) void {
    return glad_glNamedBufferData.?(arg_2709, arg_2710, arg_2711, arg_2712);
}
pub inline fn glNamedBufferSubData(arg_2713: GLuint, arg_2714: GLintptr, arg_2715: GLsizeiptr, arg_2716: ?*const anyopaque) void {
    return glad_glNamedBufferSubData.?(arg_2713, arg_2714, arg_2715, arg_2716);
}
pub inline fn glCopyNamedBufferSubData(arg_2717: GLuint, arg_2718: GLuint, arg_2719: GLintptr, arg_2720: GLintptr, arg_2721: GLsizeiptr) void {
    return glad_glCopyNamedBufferSubData.?(arg_2717, arg_2718, arg_2719, arg_2720, arg_2721);
}
pub inline fn glClearNamedBufferData(arg_2722: GLuint, arg_2723: GLenum, arg_2724: GLenum, arg_2725: GLenum, arg_2726: ?*const anyopaque) void {
    return glad_glClearNamedBufferData.?(arg_2722, arg_2723, arg_2724, arg_2725, arg_2726);
}
pub inline fn glClearNamedBufferSubData(arg_2727: GLuint, arg_2728: GLenum, arg_2729: GLintptr, arg_2730: GLsizeiptr, arg_2731: GLenum, arg_2732: GLenum, arg_2733: ?*const anyopaque) void {
    return glad_glClearNamedBufferSubData.?(arg_2727, arg_2728, arg_2729, arg_2730, arg_2731, arg_2732, arg_2733);
}
pub inline fn glMapNamedBuffer(arg_2734: GLuint, arg_2735: GLenum) ?*anyopaque {
    return glad_glMapNamedBuffer.?(arg_2734, arg_2735);
}
pub inline fn glMapNamedBufferRange(arg_2736: GLuint, arg_2737: GLintptr, arg_2738: GLsizeiptr, arg_2739: GLbitfield) ?*anyopaque {
    return glad_glMapNamedBufferRange.?(arg_2736, arg_2737, arg_2738, arg_2739);
}
pub inline fn glUnmapNamedBuffer(arg_2740: GLuint) GLboolean {
    return glad_glUnmapNamedBuffer.?(arg_2740);
}
pub inline fn glFlushMappedNamedBufferRange(arg_2741: GLuint, arg_2742: GLintptr, arg_2743: GLsizeiptr) void {
    return glad_glFlushMappedNamedBufferRange.?(arg_2741, arg_2742, arg_2743);
}
pub inline fn glGetNamedBufferParameteriv(arg_2744: GLuint, arg_2745: GLenum, arg_2746: [*c]GLint) void {
    return glad_glGetNamedBufferParameteriv.?(arg_2744, arg_2745, arg_2746);
}
pub inline fn glGetNamedBufferParameteri64v(arg_2747: GLuint, arg_2748: GLenum, arg_2749: [*c]GLint64) void {
    return glad_glGetNamedBufferParameteri64v.?(arg_2747, arg_2748, arg_2749);
}
pub inline fn glGetNamedBufferPointerv(arg_2750: GLuint, arg_2751: GLenum, arg_2752: [*c]?*anyopaque) void {
    return glad_glGetNamedBufferPointerv.?(arg_2750, arg_2751, arg_2752);
}
pub inline fn glGetNamedBufferSubData(arg_2753: GLuint, arg_2754: GLintptr, arg_2755: GLsizeiptr, arg_2756: ?*anyopaque) void {
    return glad_glGetNamedBufferSubData.?(arg_2753, arg_2754, arg_2755, arg_2756);
}
pub inline fn glCreateFramebuffers(arg_2757: GLsizei, arg_2758: [*c]GLuint) void {
    return glad_glCreateFramebuffers.?(arg_2757, arg_2758);
}
pub inline fn glNamedFramebufferRenderbuffer(arg_2759: GLuint, arg_2760: GLenum, arg_2761: GLenum, arg_2762: GLuint) void {
    return glad_glNamedFramebufferRenderbuffer.?(arg_2759, arg_2760, arg_2761, arg_2762);
}
pub inline fn glNamedFramebufferParameteri(arg_2763: GLuint, arg_2764: GLenum, arg_2765: GLint) void {
    return glad_glNamedFramebufferParameteri.?(arg_2763, arg_2764, arg_2765);
}
pub inline fn glNamedFramebufferTexture(arg_2766: GLuint, arg_2767: GLenum, arg_2768: GLuint, arg_2769: GLint) void {
    return glad_glNamedFramebufferTexture.?(arg_2766, arg_2767, arg_2768, arg_2769);
}
pub inline fn glNamedFramebufferTextureLayer(arg_2770: GLuint, arg_2771: GLenum, arg_2772: GLuint, arg_2773: GLint, arg_2774: GLint) void {
    return glad_glNamedFramebufferTextureLayer.?(arg_2770, arg_2771, arg_2772, arg_2773, arg_2774);
}
pub inline fn glNamedFramebufferDrawBuffer(arg_2775: GLuint, arg_2776: GLenum) void {
    return glad_glNamedFramebufferDrawBuffer.?(arg_2775, arg_2776);
}
pub inline fn glNamedFramebufferDrawBuffers(arg_2777: GLuint, arg_2778: GLsizei, arg_2779: [*c]const GLenum) void {
    return glad_glNamedFramebufferDrawBuffers.?(arg_2777, arg_2778, arg_2779);
}
pub inline fn glNamedFramebufferReadBuffer(arg_2780: GLuint, arg_2781: GLenum) void {
    return glad_glNamedFramebufferReadBuffer.?(arg_2780, arg_2781);
}
pub inline fn glInvalidateNamedFramebufferData(arg_2782: GLuint, arg_2783: GLsizei, arg_2784: [*c]const GLenum) void {
    return glad_glInvalidateNamedFramebufferData.?(arg_2782, arg_2783, arg_2784);
}
pub inline fn glInvalidateNamedFramebufferSubData(arg_2785: GLuint, arg_2786: GLsizei, arg_2787: [*c]const GLenum, arg_2788: GLint, arg_2789: GLint, arg_2790: GLsizei, arg_2791: GLsizei) void {
    return glad_glInvalidateNamedFramebufferSubData.?(arg_2785, arg_2786, arg_2787, arg_2788, arg_2789, arg_2790, arg_2791);
}
pub inline fn glClearNamedFramebufferiv(arg_2792: GLuint, arg_2793: GLenum, arg_2794: GLint, arg_2795: [*c]const GLint) void {
    return glad_glClearNamedFramebufferiv.?(arg_2792, arg_2793, arg_2794, arg_2795);
}
pub inline fn glClearNamedFramebufferuiv(arg_2796: GLuint, arg_2797: GLenum, arg_2798: GLint, arg_2799: [*c]const GLuint) void {
    return glad_glClearNamedFramebufferuiv.?(arg_2796, arg_2797, arg_2798, arg_2799);
}
pub inline fn glClearNamedFramebufferfv(arg_2800: GLuint, arg_2801: GLenum, arg_2802: GLint, arg_2803: [*c]const GLfloat) void {
    return glad_glClearNamedFramebufferfv.?(arg_2800, arg_2801, arg_2802, arg_2803);
}
pub inline fn glClearNamedFramebufferfi(arg_2804: GLuint, arg_2805: GLenum, arg_2806: GLint, arg_2807: GLfloat, arg_2808: GLint) void {
    return glad_glClearNamedFramebufferfi.?(arg_2804, arg_2805, arg_2806, arg_2807, arg_2808);
}
pub inline fn glBlitNamedFramebuffer(arg_2809: GLuint, arg_2810: GLuint, arg_2811: GLint, arg_2812: GLint, arg_2813: GLint, arg_2814: GLint, arg_2815: GLint, arg_2816: GLint, arg_2817: GLint, arg_2818: GLint, arg_2819: GLbitfield, arg_2820: GLenum) void {
    return glad_glBlitNamedFramebuffer.?(arg_2809, arg_2810, arg_2811, arg_2812, arg_2813, arg_2814, arg_2815, arg_2816, arg_2817, arg_2818, arg_2819, arg_2820);
}
pub inline fn glCheckNamedFramebufferStatus(arg_2821: GLuint, arg_2822: GLenum) GLenum {
    return glad_glCheckNamedFramebufferStatus.?(arg_2821, arg_2822);
}
pub inline fn glGetNamedFramebufferParameteriv(arg_2823: GLuint, arg_2824: GLenum, arg_2825: [*c]GLint) void {
    return glad_glGetNamedFramebufferParameteriv.?(arg_2823, arg_2824, arg_2825);
}
pub inline fn glGetNamedFramebufferAttachmentParameteriv(arg_2826: GLuint, arg_2827: GLenum, arg_2828: GLenum, arg_2829: [*c]GLint) void {
    return glad_glGetNamedFramebufferAttachmentParameteriv.?(arg_2826, arg_2827, arg_2828, arg_2829);
}
pub inline fn glCreateRenderbuffers(arg_2830: GLsizei, arg_2831: [*c]GLuint) void {
    return glad_glCreateRenderbuffers.?(arg_2830, arg_2831);
}
pub inline fn glNamedRenderbufferStorage(arg_2832: GLuint, arg_2833: GLenum, arg_2834: GLsizei, arg_2835: GLsizei) void {
    return glad_glNamedRenderbufferStorage.?(arg_2832, arg_2833, arg_2834, arg_2835);
}
pub inline fn glNamedRenderbufferStorageMultisample(arg_2836: GLuint, arg_2837: GLsizei, arg_2838: GLenum, arg_2839: GLsizei, arg_2840: GLsizei) void {
    return glad_glNamedRenderbufferStorageMultisample.?(arg_2836, arg_2837, arg_2838, arg_2839, arg_2840);
}
pub inline fn glGetNamedRenderbufferParameteriv(arg_2841: GLuint, arg_2842: GLenum, arg_2843: [*c]GLint) void {
    return glad_glGetNamedRenderbufferParameteriv.?(arg_2841, arg_2842, arg_2843);
}
pub inline fn glCreateTextures(arg_2844: GLenum, arg_2845: GLsizei, arg_2846: [*c]GLuint) void {
    return glad_glCreateTextures.?(arg_2844, arg_2845, arg_2846);
}
pub inline fn glTextureBuffer(arg_2847: GLuint, arg_2848: GLenum, arg_2849: GLuint) void {
    return glad_glTextureBuffer.?(arg_2847, arg_2848, arg_2849);
}
pub inline fn glTextureBufferRange(arg_2850: GLuint, arg_2851: GLenum, arg_2852: GLuint, arg_2853: GLintptr, arg_2854: GLsizeiptr) void {
    return glad_glTextureBufferRange.?(arg_2850, arg_2851, arg_2852, arg_2853, arg_2854);
}
pub inline fn glTextureStorage1D(arg_2855: GLuint, arg_2856: GLsizei, arg_2857: GLenum, arg_2858: GLsizei) void {
    return glad_glTextureStorage1D.?(arg_2855, arg_2856, arg_2857, arg_2858);
}
pub inline fn glTextureStorage2D(arg_2859: GLuint, arg_2860: GLsizei, arg_2861: GLenum, arg_2862: GLsizei, arg_2863: GLsizei) void {
    return glad_glTextureStorage2D.?(arg_2859, arg_2860, arg_2861, arg_2862, arg_2863);
}
pub inline fn glTextureStorage3D(arg_2864: GLuint, arg_2865: GLsizei, arg_2866: GLenum, arg_2867: GLsizei, arg_2868: GLsizei, arg_2869: GLsizei) void {
    return glad_glTextureStorage3D.?(arg_2864, arg_2865, arg_2866, arg_2867, arg_2868, arg_2869);
}
pub inline fn glTextureStorage2DMultisample(arg_2870: GLuint, arg_2871: GLsizei, arg_2872: GLenum, arg_2873: GLsizei, arg_2874: GLsizei, arg_2875: GLboolean) void {
    return glad_glTextureStorage2DMultisample.?(arg_2870, arg_2871, arg_2872, arg_2873, arg_2874, arg_2875);
}
pub inline fn glTextureStorage3DMultisample(arg_2876: GLuint, arg_2877: GLsizei, arg_2878: GLenum, arg_2879: GLsizei, arg_2880: GLsizei, arg_2881: GLsizei, arg_2882: GLboolean) void {
    return glad_glTextureStorage3DMultisample.?(arg_2876, arg_2877, arg_2878, arg_2879, arg_2880, arg_2881, arg_2882);
}
pub inline fn glTextureSubImage1D(arg_2883: GLuint, arg_2884: GLint, arg_2885: GLint, arg_2886: GLsizei, arg_2887: GLenum, arg_2888: GLenum, arg_2889: ?*const anyopaque) void {
    return glad_glTextureSubImage1D.?(arg_2883, arg_2884, arg_2885, arg_2886, arg_2887, arg_2888, arg_2889);
}
pub inline fn glTextureSubImage2D(arg_2890: GLuint, arg_2891: GLint, arg_2892: GLint, arg_2893: GLint, arg_2894: GLsizei, arg_2895: GLsizei, arg_2896: GLenum, arg_2897: GLenum, arg_2898: ?*const anyopaque) void {
    return glad_glTextureSubImage2D.?(arg_2890, arg_2891, arg_2892, arg_2893, arg_2894, arg_2895, arg_2896, arg_2897, arg_2898);
}
pub inline fn glTextureSubImage3D(arg_2899: GLuint, arg_2900: GLint, arg_2901: GLint, arg_2902: GLint, arg_2903: GLint, arg_2904: GLsizei, arg_2905: GLsizei, arg_2906: GLsizei, arg_2907: GLenum, arg_2908: GLenum, arg_2909: ?*const anyopaque) void {
    return glad_glTextureSubImage3D.?(arg_2899, arg_2900, arg_2901, arg_2902, arg_2903, arg_2904, arg_2905, arg_2906, arg_2907, arg_2908, arg_2909);
}
pub inline fn glCompressedTextureSubImage1D(arg_2910: GLuint, arg_2911: GLint, arg_2912: GLint, arg_2913: GLsizei, arg_2914: GLenum, arg_2915: GLsizei, arg_2916: ?*const anyopaque) void {
    return glad_glCompressedTextureSubImage1D.?(arg_2910, arg_2911, arg_2912, arg_2913, arg_2914, arg_2915, arg_2916);
}
pub inline fn glCompressedTextureSubImage2D(arg_2917: GLuint, arg_2918: GLint, arg_2919: GLint, arg_2920: GLint, arg_2921: GLsizei, arg_2922: GLsizei, arg_2923: GLenum, arg_2924: GLsizei, arg_2925: ?*const anyopaque) void {
    return glad_glCompressedTextureSubImage2D.?(arg_2917, arg_2918, arg_2919, arg_2920, arg_2921, arg_2922, arg_2923, arg_2924, arg_2925);
}
pub inline fn glCompressedTextureSubImage3D(arg_2926: GLuint, arg_2927: GLint, arg_2928: GLint, arg_2929: GLint, arg_2930: GLint, arg_2931: GLsizei, arg_2932: GLsizei, arg_2933: GLsizei, arg_2934: GLenum, arg_2935: GLsizei, arg_2936: ?*const anyopaque) void {
    return glad_glCompressedTextureSubImage3D.?(arg_2926, arg_2927, arg_2928, arg_2929, arg_2930, arg_2931, arg_2932, arg_2933, arg_2934, arg_2935, arg_2936);
}
pub inline fn glCopyTextureSubImage1D(arg_2937: GLuint, arg_2938: GLint, arg_2939: GLint, arg_2940: GLint, arg_2941: GLint, arg_2942: GLsizei) void {
    return glad_glCopyTextureSubImage1D.?(arg_2937, arg_2938, arg_2939, arg_2940, arg_2941, arg_2942);
}
pub inline fn glCopyTextureSubImage2D(arg_2943: GLuint, arg_2944: GLint, arg_2945: GLint, arg_2946: GLint, arg_2947: GLint, arg_2948: GLint, arg_2949: GLsizei, arg_2950: GLsizei) void {
    return glad_glCopyTextureSubImage2D.?(arg_2943, arg_2944, arg_2945, arg_2946, arg_2947, arg_2948, arg_2949, arg_2950);
}
pub inline fn glCopyTextureSubImage3D(arg_2951: GLuint, arg_2952: GLint, arg_2953: GLint, arg_2954: GLint, arg_2955: GLint, arg_2956: GLint, arg_2957: GLint, arg_2958: GLsizei, arg_2959: GLsizei) void {
    return glad_glCopyTextureSubImage3D.?(arg_2951, arg_2952, arg_2953, arg_2954, arg_2955, arg_2956, arg_2957, arg_2958, arg_2959);
}
pub inline fn glTextureParameterf(arg_2960: GLuint, arg_2961: GLenum, arg_2962: GLfloat) void {
    return glad_glTextureParameterf.?(arg_2960, arg_2961, arg_2962);
}
pub inline fn glTextureParameterfv(arg_2963: GLuint, arg_2964: GLenum, arg_2965: [*c]const GLfloat) void {
    return glad_glTextureParameterfv.?(arg_2963, arg_2964, arg_2965);
}
pub inline fn glTextureParameteri(arg_2966: GLuint, arg_2967: GLenum, arg_2968: GLint) void {
    return glad_glTextureParameteri.?(arg_2966, arg_2967, arg_2968);
}
pub inline fn glTextureParameterIiv(arg_2969: GLuint, arg_2970: GLenum, arg_2971: [*c]const GLint) void {
    return glad_glTextureParameterIiv.?(arg_2969, arg_2970, arg_2971);
}
pub inline fn glTextureParameterIuiv(arg_2972: GLuint, arg_2973: GLenum, arg_2974: [*c]const GLuint) void {
    return glad_glTextureParameterIuiv.?(arg_2972, arg_2973, arg_2974);
}
pub inline fn glTextureParameteriv(arg_2975: GLuint, arg_2976: GLenum, arg_2977: [*c]const GLint) void {
    return glad_glTextureParameteriv.?(arg_2975, arg_2976, arg_2977);
}
pub inline fn glGenerateTextureMipmap(arg_2978: GLuint) void {
    return glad_glGenerateTextureMipmap.?(arg_2978);
}
pub inline fn glBindTextureUnit(arg_2979: GLuint, arg_2980: GLuint) void {
    return glad_glBindTextureUnit.?(arg_2979, arg_2980);
}
pub inline fn glGetTextureImage(arg_2981: GLuint, arg_2982: GLint, arg_2983: GLenum, arg_2984: GLenum, arg_2985: GLsizei, arg_2986: ?*anyopaque) void {
    return glad_glGetTextureImage.?(arg_2981, arg_2982, arg_2983, arg_2984, arg_2985, arg_2986);
}
pub inline fn glGetCompressedTextureImage(arg_2987: GLuint, arg_2988: GLint, arg_2989: GLsizei, arg_2990: ?*anyopaque) void {
    return glad_glGetCompressedTextureImage.?(arg_2987, arg_2988, arg_2989, arg_2990);
}
pub inline fn glGetTextureLevelParameterfv(arg_2991: GLuint, arg_2992: GLint, arg_2993: GLenum, arg_2994: [*c]GLfloat) void {
    return glad_glGetTextureLevelParameterfv.?(arg_2991, arg_2992, arg_2993, arg_2994);
}
pub inline fn glGetTextureLevelParameteriv(arg_2995: GLuint, arg_2996: GLint, arg_2997: GLenum, arg_2998: [*c]GLint) void {
    return glad_glGetTextureLevelParameteriv.?(arg_2995, arg_2996, arg_2997, arg_2998);
}
pub inline fn glGetTextureParameterfv(arg_2999: GLuint, arg_3000: GLenum, arg_3001: [*c]GLfloat) void {
    return glad_glGetTextureParameterfv.?(arg_2999, arg_3000, arg_3001);
}
pub inline fn glGetTextureParameterIiv(arg_3002: GLuint, arg_3003: GLenum, arg_3004: [*c]GLint) void {
    return glad_glGetTextureParameterIiv.?(arg_3002, arg_3003, arg_3004);
}
pub inline fn glGetTextureParameterIuiv(arg_3005: GLuint, arg_3006: GLenum, arg_3007: [*c]GLuint) void {
    return glad_glGetTextureParameterIuiv.?(arg_3005, arg_3006, arg_3007);
}
pub inline fn glGetTextureParameteriv(arg_3008: GLuint, arg_3009: GLenum, arg_3010: [*c]GLint) void {
    return glad_glGetTextureParameteriv.?(arg_3008, arg_3009, arg_3010);
}
pub inline fn glCreateVertexArrays(arg_3011: GLsizei, arg_3012: [*c]GLuint) void {
    return glad_glCreateVertexArrays.?(arg_3011, arg_3012);
}
pub inline fn glDisableVertexArrayAttrib(arg_3013: GLuint, arg_3014: GLuint) void {
    return glad_glDisableVertexArrayAttrib.?(arg_3013, arg_3014);
}
pub inline fn glEnableVertexArrayAttrib(arg_3015: GLuint, arg_3016: GLuint) void {
    return glad_glEnableVertexArrayAttrib.?(arg_3015, arg_3016);
}
pub inline fn glVertexArrayElementBuffer(arg_3017: GLuint, arg_3018: GLuint) void {
    return glad_glVertexArrayElementBuffer.?(arg_3017, arg_3018);
}
pub inline fn glVertexArrayVertexBuffer(arg_3019: GLuint, arg_3020: GLuint, arg_3021: GLuint, arg_3022: GLintptr, arg_3023: GLsizei) void {
    return glad_glVertexArrayVertexBuffer.?(arg_3019, arg_3020, arg_3021, arg_3022, arg_3023);
}
pub inline fn glVertexArrayVertexBuffers(arg_3024: GLuint, arg_3025: GLuint, arg_3026: GLsizei, arg_3027: [*c]const GLuint, arg_3028: [*c]const GLintptr, arg_3029: [*c]const GLsizei) void {
    return glad_glVertexArrayVertexBuffers.?(arg_3024, arg_3025, arg_3026, arg_3027, arg_3028, arg_3029);
}
pub inline fn glVertexArrayAttribBinding(arg_3030: GLuint, arg_3031: GLuint, arg_3032: GLuint) void {
    return glad_glVertexArrayAttribBinding.?(arg_3030, arg_3031, arg_3032);
}
pub inline fn glVertexArrayAttribFormat(arg_3033: GLuint, arg_3034: GLuint, arg_3035: GLint, arg_3036: GLenum, arg_3037: GLboolean, arg_3038: GLuint) void {
    return glad_glVertexArrayAttribFormat.?(arg_3033, arg_3034, arg_3035, arg_3036, arg_3037, arg_3038);
}
pub inline fn glVertexArrayAttribIFormat(arg_3039: GLuint, arg_3040: GLuint, arg_3041: GLint, arg_3042: GLenum, arg_3043: GLuint) void {
    return glad_glVertexArrayAttribIFormat.?(arg_3039, arg_3040, arg_3041, arg_3042, arg_3043);
}
pub inline fn glVertexArrayAttribLFormat(arg_3044: GLuint, arg_3045: GLuint, arg_3046: GLint, arg_3047: GLenum, arg_3048: GLuint) void {
    return glad_glVertexArrayAttribLFormat.?(arg_3044, arg_3045, arg_3046, arg_3047, arg_3048);
}
pub inline fn glVertexArrayBindingDivisor(arg_3049: GLuint, arg_3050: GLuint, arg_3051: GLuint) void {
    return glad_glVertexArrayBindingDivisor.?(arg_3049, arg_3050, arg_3051);
}
pub inline fn glGetVertexArrayiv(arg_3052: GLuint, arg_3053: GLenum, arg_3054: [*c]GLint) void {
    return glad_glGetVertexArrayiv.?(arg_3052, arg_3053, arg_3054);
}
pub inline fn glGetVertexArrayIndexediv(arg_3055: GLuint, arg_3056: GLuint, arg_3057: GLenum, arg_3058: [*c]GLint) void {
    return glad_glGetVertexArrayIndexediv.?(arg_3055, arg_3056, arg_3057, arg_3058);
}
pub inline fn glGetVertexArrayIndexed64iv(arg_3059: GLuint, arg_3060: GLuint, arg_3061: GLenum, arg_3062: [*c]GLint64) void {
    return glad_glGetVertexArrayIndexed64iv.?(arg_3059, arg_3060, arg_3061, arg_3062);
}
pub inline fn glCreateSamplers(arg_3063: GLsizei, arg_3064: [*c]GLuint) void {
    return glad_glCreateSamplers.?(arg_3063, arg_3064);
}
pub inline fn glCreateProgramPipelines(arg_3065: GLsizei, arg_3066: [*c]GLuint) void {
    return glad_glCreateProgramPipelines.?(arg_3065, arg_3066);
}
pub inline fn glCreateQueries(arg_3067: GLenum, arg_3068: GLsizei, arg_3069: [*c]GLuint) void {
    return glad_glCreateQueries.?(arg_3067, arg_3068, arg_3069);
}
pub inline fn glGetQueryBufferObjecti64v(arg_3070: GLuint, arg_3071: GLuint, arg_3072: GLenum, arg_3073: GLintptr) void {
    return glad_glGetQueryBufferObjecti64v.?(arg_3070, arg_3071, arg_3072, arg_3073);
}
pub inline fn glGetQueryBufferObjectiv(arg_3074: GLuint, arg_3075: GLuint, arg_3076: GLenum, arg_3077: GLintptr) void {
    return glad_glGetQueryBufferObjectiv.?(arg_3074, arg_3075, arg_3076, arg_3077);
}
pub inline fn glGetQueryBufferObjectui64v(arg_3078: GLuint, arg_3079: GLuint, arg_3080: GLenum, arg_3081: GLintptr) void {
    return glad_glGetQueryBufferObjectui64v.?(arg_3078, arg_3079, arg_3080, arg_3081);
}
pub inline fn glGetQueryBufferObjectuiv(arg_3082: GLuint, arg_3083: GLuint, arg_3084: GLenum, arg_3085: GLintptr) void {
    return glad_glGetQueryBufferObjectuiv.?(arg_3082, arg_3083, arg_3084, arg_3085);
}
pub inline fn glMemoryBarrierByRegion(arg_3086: GLbitfield) void {
    return glad_glMemoryBarrierByRegion.?(arg_3086);
}
pub inline fn glGetTextureSubImage(arg_3087: GLuint, arg_3088: GLint, arg_3089: GLint, arg_3090: GLint, arg_3091: GLint, arg_3092: GLsizei, arg_3093: GLsizei, arg_3094: GLsizei, arg_3095: GLenum, arg_3096: GLenum, arg_3097: GLsizei, arg_3098: ?*anyopaque) void {
    return glad_glGetTextureSubImage.?(arg_3087, arg_3088, arg_3089, arg_3090, arg_3091, arg_3092, arg_3093, arg_3094, arg_3095, arg_3096, arg_3097, arg_3098);
}
pub inline fn glGetCompressedTextureSubImage(arg_3099: GLuint, arg_3100: GLint, arg_3101: GLint, arg_3102: GLint, arg_3103: GLint, arg_3104: GLsizei, arg_3105: GLsizei, arg_3106: GLsizei, arg_3107: GLsizei, arg_3108: ?*anyopaque) void {
    return glad_glGetCompressedTextureSubImage.?(arg_3099, arg_3100, arg_3101, arg_3102, arg_3103, arg_3104, arg_3105, arg_3106, arg_3107, arg_3108);
}
pub inline fn glGetGraphicsResetStatus() GLenum {
    return glad_glGetGraphicsResetStatus.?();
}
pub inline fn glGetnCompressedTexImage(arg_3109: GLenum, arg_3110: GLint, arg_3111: GLsizei, arg_3112: ?*anyopaque) void {
    return glad_glGetnCompressedTexImage.?(arg_3109, arg_3110, arg_3111, arg_3112);
}
pub inline fn glGetnTexImage(arg_3113: GLenum, arg_3114: GLint, arg_3115: GLenum, arg_3116: GLenum, arg_3117: GLsizei, arg_3118: ?*anyopaque) void {
    return glad_glGetnTexImage.?(arg_3113, arg_3114, arg_3115, arg_3116, arg_3117, arg_3118);
}
pub inline fn glGetnUniformdv(arg_3119: GLuint, arg_3120: GLint, arg_3121: GLsizei, arg_3122: [*c]GLdouble) void {
    return glad_glGetnUniformdv.?(arg_3119, arg_3120, arg_3121, arg_3122);
}
pub inline fn glGetnUniformfv(arg_3123: GLuint, arg_3124: GLint, arg_3125: GLsizei, arg_3126: [*c]GLfloat) void {
    return glad_glGetnUniformfv.?(arg_3123, arg_3124, arg_3125, arg_3126);
}
pub inline fn glGetnUniformiv(arg_3127: GLuint, arg_3128: GLint, arg_3129: GLsizei, arg_3130: [*c]GLint) void {
    return glad_glGetnUniformiv.?(arg_3127, arg_3128, arg_3129, arg_3130);
}
pub inline fn glGetnUniformuiv(arg_3131: GLuint, arg_3132: GLint, arg_3133: GLsizei, arg_3134: [*c]GLuint) void {
    return glad_glGetnUniformuiv.?(arg_3131, arg_3132, arg_3133, arg_3134);
}
pub inline fn glReadnPixels(arg_3135: GLint, arg_3136: GLint, arg_3137: GLsizei, arg_3138: GLsizei, arg_3139: GLenum, arg_3140: GLenum, arg_3141: GLsizei, arg_3142: ?*anyopaque) void {
    return glad_glReadnPixels.?(arg_3135, arg_3136, arg_3137, arg_3138, arg_3139, arg_3140, arg_3141, arg_3142);
}
pub inline fn glGetnMapdv(arg_3143: GLenum, arg_3144: GLenum, arg_3145: GLsizei, arg_3146: [*c]GLdouble) void {
    return glad_glGetnMapdv.?(arg_3143, arg_3144, arg_3145, arg_3146);
}
pub inline fn glGetnMapfv(arg_3147: GLenum, arg_3148: GLenum, arg_3149: GLsizei, arg_3150: [*c]GLfloat) void {
    return glad_glGetnMapfv.?(arg_3147, arg_3148, arg_3149, arg_3150);
}
pub inline fn glGetnMapiv(arg_3151: GLenum, arg_3152: GLenum, arg_3153: GLsizei, arg_3154: [*c]GLint) void {
    return glad_glGetnMapiv.?(arg_3151, arg_3152, arg_3153, arg_3154);
}
pub inline fn glGetnPixelMapfv(arg_3155: GLenum, arg_3156: GLsizei, arg_3157: [*c]GLfloat) void {
    return glad_glGetnPixelMapfv.?(arg_3155, arg_3156, arg_3157);
}
pub inline fn glGetnPixelMapuiv(arg_3158: GLenum, arg_3159: GLsizei, arg_3160: [*c]GLuint) void {
    return glad_glGetnPixelMapuiv.?(arg_3158, arg_3159, arg_3160);
}
pub inline fn glGetnPixelMapusv(arg_3161: GLenum, arg_3162: GLsizei, arg_3163: [*c]GLushort) void {
    return glad_glGetnPixelMapusv.?(arg_3161, arg_3162, arg_3163);
}
pub inline fn glGetnPolygonStipple(arg_3164: GLsizei, arg_3165: [*c]GLubyte) void {
    return glad_glGetnPolygonStipple.?(arg_3164, arg_3165);
}
pub inline fn glGetnColorTable(arg_3166: GLenum, arg_3167: GLenum, arg_3168: GLenum, arg_3169: GLsizei, arg_3170: ?*anyopaque) void {
    return glad_glGetnColorTable.?(arg_3166, arg_3167, arg_3168, arg_3169, arg_3170);
}
pub inline fn glGetnConvolutionFilter(arg_3171: GLenum, arg_3172: GLenum, arg_3173: GLenum, arg_3174: GLsizei, arg_3175: ?*anyopaque) void {
    return glad_glGetnConvolutionFilter.?(arg_3171, arg_3172, arg_3173, arg_3174, arg_3175);
}
pub inline fn glGetnSeparableFilter(arg_3176: GLenum, arg_3177: GLenum, arg_3178: GLenum, arg_3179: GLsizei, arg_3180: ?*anyopaque, arg_3181: GLsizei, arg_3182: ?*anyopaque, arg_3183: ?*anyopaque) void {
    return glad_glGetnSeparableFilter.?(arg_3176, arg_3177, arg_3178, arg_3179, arg_3180, arg_3181, arg_3182, arg_3183);
}
pub inline fn glGetnHistogram(arg_3184: GLenum, arg_3185: GLboolean, arg_3186: GLenum, arg_3187: GLenum, arg_3188: GLsizei, arg_3189: ?*anyopaque) void {
    return glad_glGetnHistogram.?(arg_3184, arg_3185, arg_3186, arg_3187, arg_3188, arg_3189);
}
pub inline fn glGetnMinmax(arg_3190: GLenum, arg_3191: GLboolean, arg_3192: GLenum, arg_3193: GLenum, arg_3194: GLsizei, arg_3195: ?*anyopaque) void {
    return glad_glGetnMinmax.?(arg_3190, arg_3191, arg_3192, arg_3193, arg_3194, arg_3195);
}
pub inline fn glTextureBarrier() void {
    return glad_glTextureBarrier.?();
}
pub const GL_VERSION_4_6 = @as(c_int, 1);
pub inline fn glSpecializeShader(arg_3196: GLuint, arg_3197: [*c]const GLchar, arg_3198: GLuint, arg_3199: [*c]const GLuint, arg_3200: [*c]const GLuint) void {
    return glad_glSpecializeShader.?(arg_3196, arg_3197, arg_3198, arg_3199, arg_3200);
}
pub inline fn glMultiDrawArraysIndirectCount(arg_3201: GLenum, arg_3202: ?*const anyopaque, arg_3203: GLintptr, arg_3204: GLsizei, arg_3205: GLsizei) void {
    return glad_glMultiDrawArraysIndirectCount.?(arg_3201, arg_3202, arg_3203, arg_3204, arg_3205);
}
pub inline fn glMultiDrawElementsIndirectCount(arg_3206: GLenum, arg_3207: GLenum, arg_3208: ?*const anyopaque, arg_3209: GLintptr, arg_3210: GLsizei, arg_3211: GLsizei) void {
    return glad_glMultiDrawElementsIndirectCount.?(arg_3206, arg_3207, arg_3208, arg_3209, arg_3210, arg_3211);
}
pub inline fn glPolygonOffsetClamp(arg_3212: GLfloat, arg_3213: GLfloat, arg_3214: GLfloat) void {
    return glad_glPolygonOffsetClamp.?(arg_3212, arg_3213, arg_3214);
}
pub const _glfw3_h_ = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const GLFW_WINGDIAPI_DEFINED = "";
pub const GLFW_CALLBACK_DEFINED = "";
pub const GLFWAPI = "";
pub const GLFW_VERSION_MAJOR = @as(c_int, 3);
pub const GLFW_VERSION_MINOR = @as(c_int, 4);
pub const GLFW_VERSION_REVISION = @as(c_int, 0);
pub const GLFW_TRUE = @as(c_int, 1);
pub const GLFW_FALSE = @as(c_int, 0);
pub const GLFW_RELEASE = @as(c_int, 0);
pub const GLFW_PRESS = @as(c_int, 1);
pub const GLFW_REPEAT = @as(c_int, 2);
pub const GLFW_HAT_CENTERED = @as(c_int, 0);
pub const GLFW_HAT_UP = @as(c_int, 1);
pub const GLFW_HAT_RIGHT = @as(c_int, 2);
pub const GLFW_HAT_DOWN = @as(c_int, 4);
pub const GLFW_HAT_LEFT = @as(c_int, 8);
pub const GLFW_HAT_RIGHT_UP = GLFW_HAT_RIGHT | GLFW_HAT_UP;
pub const GLFW_HAT_RIGHT_DOWN = GLFW_HAT_RIGHT | GLFW_HAT_DOWN;
pub const GLFW_HAT_LEFT_UP = GLFW_HAT_LEFT | GLFW_HAT_UP;
pub const GLFW_HAT_LEFT_DOWN = GLFW_HAT_LEFT | GLFW_HAT_DOWN;
pub const GLFW_KEY_UNKNOWN = -@as(c_int, 1);
pub const GLFW_KEY_SPACE = @as(c_int, 32);
pub const GLFW_KEY_APOSTROPHE = @as(c_int, 39);
pub const GLFW_KEY_COMMA = @as(c_int, 44);
pub const GLFW_KEY_MINUS = @as(c_int, 45);
pub const GLFW_KEY_PERIOD = @as(c_int, 46);
pub const GLFW_KEY_SLASH = @as(c_int, 47);
pub const GLFW_KEY_0 = @as(c_int, 48);
pub const GLFW_KEY_1 = @as(c_int, 49);
pub const GLFW_KEY_2 = @as(c_int, 50);
pub const GLFW_KEY_3 = @as(c_int, 51);
pub const GLFW_KEY_4 = @as(c_int, 52);
pub const GLFW_KEY_5 = @as(c_int, 53);
pub const GLFW_KEY_6 = @as(c_int, 54);
pub const GLFW_KEY_7 = @as(c_int, 55);
pub const GLFW_KEY_8 = @as(c_int, 56);
pub const GLFW_KEY_9 = @as(c_int, 57);
pub const GLFW_KEY_SEMICOLON = @as(c_int, 59);
pub const GLFW_KEY_EQUAL = @as(c_int, 61);
pub const GLFW_KEY_A = @as(c_int, 65);
pub const GLFW_KEY_B = @as(c_int, 66);
pub const GLFW_KEY_C = @as(c_int, 67);
pub const GLFW_KEY_D = @as(c_int, 68);
pub const GLFW_KEY_E = @as(c_int, 69);
pub const GLFW_KEY_F = @as(c_int, 70);
pub const GLFW_KEY_G = @as(c_int, 71);
pub const GLFW_KEY_H = @as(c_int, 72);
pub const GLFW_KEY_I = @as(c_int, 73);
pub const GLFW_KEY_J = @as(c_int, 74);
pub const GLFW_KEY_K = @as(c_int, 75);
pub const GLFW_KEY_L = @as(c_int, 76);
pub const GLFW_KEY_M = @as(c_int, 77);
pub const GLFW_KEY_N = @as(c_int, 78);
pub const GLFW_KEY_O = @as(c_int, 79);
pub const GLFW_KEY_P = @as(c_int, 80);
pub const GLFW_KEY_Q = @as(c_int, 81);
pub const GLFW_KEY_R = @as(c_int, 82);
pub const GLFW_KEY_S = @as(c_int, 83);
pub const GLFW_KEY_T = @as(c_int, 84);
pub const GLFW_KEY_U = @as(c_int, 85);
pub const GLFW_KEY_V = @as(c_int, 86);
pub const GLFW_KEY_W = @as(c_int, 87);
pub const GLFW_KEY_X = @as(c_int, 88);
pub const GLFW_KEY_Y = @as(c_int, 89);
pub const GLFW_KEY_Z = @as(c_int, 90);
pub const GLFW_KEY_LEFT_BRACKET = @as(c_int, 91);
pub const GLFW_KEY_BACKSLASH = @as(c_int, 92);
pub const GLFW_KEY_RIGHT_BRACKET = @as(c_int, 93);
pub const GLFW_KEY_GRAVE_ACCENT = @as(c_int, 96);
pub const GLFW_KEY_WORLD_1 = @as(c_int, 161);
pub const GLFW_KEY_WORLD_2 = @as(c_int, 162);
pub const GLFW_KEY_ESCAPE = @as(c_int, 256);
pub const GLFW_KEY_ENTER = @as(c_int, 257);
pub const GLFW_KEY_TAB = @as(c_int, 258);
pub const GLFW_KEY_BACKSPACE = @as(c_int, 259);
pub const GLFW_KEY_INSERT = @as(c_int, 260);
pub const GLFW_KEY_DELETE = @as(c_int, 261);
pub const GLFW_KEY_RIGHT = @as(c_int, 262);
pub const GLFW_KEY_LEFT = @as(c_int, 263);
pub const GLFW_KEY_DOWN = @as(c_int, 264);
pub const GLFW_KEY_UP = @as(c_int, 265);
pub const GLFW_KEY_PAGE_UP = @as(c_int, 266);
pub const GLFW_KEY_PAGE_DOWN = @as(c_int, 267);
pub const GLFW_KEY_HOME = @as(c_int, 268);
pub const GLFW_KEY_END = @as(c_int, 269);
pub const GLFW_KEY_CAPS_LOCK = @as(c_int, 280);
pub const GLFW_KEY_SCROLL_LOCK = @as(c_int, 281);
pub const GLFW_KEY_NUM_LOCK = @as(c_int, 282);
pub const GLFW_KEY_PRINT_SCREEN = @as(c_int, 283);
pub const GLFW_KEY_PAUSE = @as(c_int, 284);
pub const GLFW_KEY_F1 = @as(c_int, 290);
pub const GLFW_KEY_F2 = @as(c_int, 291);
pub const GLFW_KEY_F3 = @as(c_int, 292);
pub const GLFW_KEY_F4 = @as(c_int, 293);
pub const GLFW_KEY_F5 = @as(c_int, 294);
pub const GLFW_KEY_F6 = @as(c_int, 295);
pub const GLFW_KEY_F7 = @as(c_int, 296);
pub const GLFW_KEY_F8 = @as(c_int, 297);
pub const GLFW_KEY_F9 = @as(c_int, 298);
pub const GLFW_KEY_F10 = @as(c_int, 299);
pub const GLFW_KEY_F11 = @as(c_int, 300);
pub const GLFW_KEY_F12 = @as(c_int, 301);
pub const GLFW_KEY_F13 = @as(c_int, 302);
pub const GLFW_KEY_F14 = @as(c_int, 303);
pub const GLFW_KEY_F15 = @as(c_int, 304);
pub const GLFW_KEY_F16 = @as(c_int, 305);
pub const GLFW_KEY_F17 = @as(c_int, 306);
pub const GLFW_KEY_F18 = @as(c_int, 307);
pub const GLFW_KEY_F19 = @as(c_int, 308);
pub const GLFW_KEY_F20 = @as(c_int, 309);
pub const GLFW_KEY_F21 = @as(c_int, 310);
pub const GLFW_KEY_F22 = @as(c_int, 311);
pub const GLFW_KEY_F23 = @as(c_int, 312);
pub const GLFW_KEY_F24 = @as(c_int, 313);
pub const GLFW_KEY_F25 = @as(c_int, 314);
pub const GLFW_KEY_KP_0 = @as(c_int, 320);
pub const GLFW_KEY_KP_1 = @as(c_int, 321);
pub const GLFW_KEY_KP_2 = @as(c_int, 322);
pub const GLFW_KEY_KP_3 = @as(c_int, 323);
pub const GLFW_KEY_KP_4 = @as(c_int, 324);
pub const GLFW_KEY_KP_5 = @as(c_int, 325);
pub const GLFW_KEY_KP_6 = @as(c_int, 326);
pub const GLFW_KEY_KP_7 = @as(c_int, 327);
pub const GLFW_KEY_KP_8 = @as(c_int, 328);
pub const GLFW_KEY_KP_9 = @as(c_int, 329);
pub const GLFW_KEY_KP_DECIMAL = @as(c_int, 330);
pub const GLFW_KEY_KP_DIVIDE = @as(c_int, 331);
pub const GLFW_KEY_KP_MULTIPLY = @as(c_int, 332);
pub const GLFW_KEY_KP_SUBTRACT = @as(c_int, 333);
pub const GLFW_KEY_KP_ADD = @as(c_int, 334);
pub const GLFW_KEY_KP_ENTER = @as(c_int, 335);
pub const GLFW_KEY_KP_EQUAL = @as(c_int, 336);
pub const GLFW_KEY_LEFT_SHIFT = @as(c_int, 340);
pub const GLFW_KEY_LEFT_CONTROL = @as(c_int, 341);
pub const GLFW_KEY_LEFT_ALT = @as(c_int, 342);
pub const GLFW_KEY_LEFT_SUPER = @as(c_int, 343);
pub const GLFW_KEY_RIGHT_SHIFT = @as(c_int, 344);
pub const GLFW_KEY_RIGHT_CONTROL = @as(c_int, 345);
pub const GLFW_KEY_RIGHT_ALT = @as(c_int, 346);
pub const GLFW_KEY_RIGHT_SUPER = @as(c_int, 347);
pub const GLFW_KEY_MENU = @as(c_int, 348);
pub const GLFW_KEY_LAST = GLFW_KEY_MENU;
pub const GLFW_MOD_SHIFT = @as(c_int, 0x0001);
pub const GLFW_MOD_CONTROL = @as(c_int, 0x0002);
pub const GLFW_MOD_ALT = @as(c_int, 0x0004);
pub const GLFW_MOD_SUPER = @as(c_int, 0x0008);
pub const GLFW_MOD_CAPS_LOCK = @as(c_int, 0x0010);
pub const GLFW_MOD_NUM_LOCK = @as(c_int, 0x0020);
pub const GLFW_MOUSE_BUTTON_1 = @as(c_int, 0);
pub const GLFW_MOUSE_BUTTON_2 = @as(c_int, 1);
pub const GLFW_MOUSE_BUTTON_3 = @as(c_int, 2);
pub const GLFW_MOUSE_BUTTON_4 = @as(c_int, 3);
pub const GLFW_MOUSE_BUTTON_5 = @as(c_int, 4);
pub const GLFW_MOUSE_BUTTON_6 = @as(c_int, 5);
pub const GLFW_MOUSE_BUTTON_7 = @as(c_int, 6);
pub const GLFW_MOUSE_BUTTON_8 = @as(c_int, 7);
pub const GLFW_MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8;
pub const GLFW_MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1;
pub const GLFW_MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2;
pub const GLFW_MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3;
pub const GLFW_JOYSTICK_1 = @as(c_int, 0);
pub const GLFW_JOYSTICK_2 = @as(c_int, 1);
pub const GLFW_JOYSTICK_3 = @as(c_int, 2);
pub const GLFW_JOYSTICK_4 = @as(c_int, 3);
pub const GLFW_JOYSTICK_5 = @as(c_int, 4);
pub const GLFW_JOYSTICK_6 = @as(c_int, 5);
pub const GLFW_JOYSTICK_7 = @as(c_int, 6);
pub const GLFW_JOYSTICK_8 = @as(c_int, 7);
pub const GLFW_JOYSTICK_9 = @as(c_int, 8);
pub const GLFW_JOYSTICK_10 = @as(c_int, 9);
pub const GLFW_JOYSTICK_11 = @as(c_int, 10);
pub const GLFW_JOYSTICK_12 = @as(c_int, 11);
pub const GLFW_JOYSTICK_13 = @as(c_int, 12);
pub const GLFW_JOYSTICK_14 = @as(c_int, 13);
pub const GLFW_JOYSTICK_15 = @as(c_int, 14);
pub const GLFW_JOYSTICK_16 = @as(c_int, 15);
pub const GLFW_JOYSTICK_LAST = GLFW_JOYSTICK_16;
pub const GLFW_GAMEPAD_BUTTON_A = @as(c_int, 0);
pub const GLFW_GAMEPAD_BUTTON_B = @as(c_int, 1);
pub const GLFW_GAMEPAD_BUTTON_X = @as(c_int, 2);
pub const GLFW_GAMEPAD_BUTTON_Y = @as(c_int, 3);
pub const GLFW_GAMEPAD_BUTTON_LEFT_BUMPER = @as(c_int, 4);
pub const GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER = @as(c_int, 5);
pub const GLFW_GAMEPAD_BUTTON_BACK = @as(c_int, 6);
pub const GLFW_GAMEPAD_BUTTON_START = @as(c_int, 7);
pub const GLFW_GAMEPAD_BUTTON_GUIDE = @as(c_int, 8);
pub const GLFW_GAMEPAD_BUTTON_LEFT_THUMB = @as(c_int, 9);
pub const GLFW_GAMEPAD_BUTTON_RIGHT_THUMB = @as(c_int, 10);
pub const GLFW_GAMEPAD_BUTTON_DPAD_UP = @as(c_int, 11);
pub const GLFW_GAMEPAD_BUTTON_DPAD_RIGHT = @as(c_int, 12);
pub const GLFW_GAMEPAD_BUTTON_DPAD_DOWN = @as(c_int, 13);
pub const GLFW_GAMEPAD_BUTTON_DPAD_LEFT = @as(c_int, 14);
pub const GLFW_GAMEPAD_BUTTON_LAST = GLFW_GAMEPAD_BUTTON_DPAD_LEFT;
pub const GLFW_GAMEPAD_BUTTON_CROSS = GLFW_GAMEPAD_BUTTON_A;
pub const GLFW_GAMEPAD_BUTTON_CIRCLE = GLFW_GAMEPAD_BUTTON_B;
pub const GLFW_GAMEPAD_BUTTON_SQUARE = GLFW_GAMEPAD_BUTTON_X;
pub const GLFW_GAMEPAD_BUTTON_TRIANGLE = GLFW_GAMEPAD_BUTTON_Y;
pub const GLFW_GAMEPAD_AXIS_LEFT_X = @as(c_int, 0);
pub const GLFW_GAMEPAD_AXIS_LEFT_Y = @as(c_int, 1);
pub const GLFW_GAMEPAD_AXIS_RIGHT_X = @as(c_int, 2);
pub const GLFW_GAMEPAD_AXIS_RIGHT_Y = @as(c_int, 3);
pub const GLFW_GAMEPAD_AXIS_LEFT_TRIGGER = @as(c_int, 4);
pub const GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = @as(c_int, 5);
pub const GLFW_GAMEPAD_AXIS_LAST = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER;
pub const GLFW_NO_ERROR = @as(c_int, 0);
pub const GLFW_NOT_INITIALIZED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010001, .hex);
pub const GLFW_NO_CURRENT_CONTEXT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010002, .hex);
pub const GLFW_INVALID_ENUM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010003, .hex);
pub const GLFW_INVALID_VALUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010004, .hex);
pub const GLFW_OUT_OF_MEMORY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010005, .hex);
pub const GLFW_API_UNAVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010006, .hex);
pub const GLFW_VERSION_UNAVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010007, .hex);
pub const GLFW_PLATFORM_ERROR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010008, .hex);
pub const GLFW_FORMAT_UNAVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010009, .hex);
pub const GLFW_NO_WINDOW_CONTEXT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000A, .hex);
pub const GLFW_CURSOR_UNAVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000B, .hex);
pub const GLFW_FEATURE_UNAVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000C, .hex);
pub const GLFW_FEATURE_UNIMPLEMENTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000D, .hex);
pub const GLFW_PLATFORM_UNAVAILABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0001000E, .hex);
pub const GLFW_FOCUSED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020001, .hex);
pub const GLFW_ICONIFIED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020002, .hex);
pub const GLFW_RESIZABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020003, .hex);
pub const GLFW_VISIBLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020004, .hex);
pub const GLFW_DECORATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020005, .hex);
pub const GLFW_AUTO_ICONIFY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020006, .hex);
pub const GLFW_FLOATING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020007, .hex);
pub const GLFW_MAXIMIZED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020008, .hex);
pub const GLFW_CENTER_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00020009, .hex);
pub const GLFW_TRANSPARENT_FRAMEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000A, .hex);
pub const GLFW_HOVERED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000B, .hex);
pub const GLFW_FOCUS_ON_SHOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000C, .hex);
pub const GLFW_MOUSE_PASSTHROUGH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000D, .hex);
pub const GLFW_POSITION_X = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000E, .hex);
pub const GLFW_POSITION_Y = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002000F, .hex);
pub const GLFW_RED_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021001, .hex);
pub const GLFW_GREEN_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021002, .hex);
pub const GLFW_BLUE_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021003, .hex);
pub const GLFW_ALPHA_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021004, .hex);
pub const GLFW_DEPTH_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021005, .hex);
pub const GLFW_STENCIL_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021006, .hex);
pub const GLFW_ACCUM_RED_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021007, .hex);
pub const GLFW_ACCUM_GREEN_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021008, .hex);
pub const GLFW_ACCUM_BLUE_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021009, .hex);
pub const GLFW_ACCUM_ALPHA_BITS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002100A, .hex);
pub const GLFW_AUX_BUFFERS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002100B, .hex);
pub const GLFW_STEREO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002100C, .hex);
pub const GLFW_SAMPLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002100D, .hex);
pub const GLFW_SRGB_CAPABLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002100E, .hex);
pub const GLFW_REFRESH_RATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002100F, .hex);
pub const GLFW_DOUBLEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00021010, .hex);
pub const GLFW_CLIENT_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022001, .hex);
pub const GLFW_CONTEXT_VERSION_MAJOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022002, .hex);
pub const GLFW_CONTEXT_VERSION_MINOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022003, .hex);
pub const GLFW_CONTEXT_REVISION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022004, .hex);
pub const GLFW_CONTEXT_ROBUSTNESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022005, .hex);
pub const GLFW_OPENGL_FORWARD_COMPAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022006, .hex);
pub const GLFW_CONTEXT_DEBUG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022007, .hex);
pub const GLFW_OPENGL_DEBUG_CONTEXT = GLFW_CONTEXT_DEBUG;
pub const GLFW_OPENGL_PROFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022008, .hex);
pub const GLFW_CONTEXT_RELEASE_BEHAVIOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00022009, .hex);
pub const GLFW_CONTEXT_NO_ERROR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002200A, .hex);
pub const GLFW_CONTEXT_CREATION_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002200B, .hex);
pub const GLFW_SCALE_TO_MONITOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002200C, .hex);
pub const GLFW_SCALE_FRAMEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0002200D, .hex);
pub const GLFW_COCOA_RETINA_FRAMEBUFFER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00023001, .hex);
pub const GLFW_COCOA_FRAME_NAME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00023002, .hex);
pub const GLFW_COCOA_GRAPHICS_SWITCHING = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00023003, .hex);
pub const GLFW_X11_CLASS_NAME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00024001, .hex);
pub const GLFW_X11_INSTANCE_NAME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00024002, .hex);
pub const GLFW_WIN32_KEYBOARD_MENU = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00025001, .hex);
pub const GLFW_WIN32_SHOWDEFAULT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00025002, .hex);
pub const GLFW_WAYLAND_APP_ID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00026001, .hex);
pub const GLFW_NO_API = @as(c_int, 0);
pub const GLFW_OPENGL_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00030001, .hex);
pub const GLFW_OPENGL_ES_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00030002, .hex);
pub const GLFW_NO_ROBUSTNESS = @as(c_int, 0);
pub const GLFW_NO_RESET_NOTIFICATION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00031001, .hex);
pub const GLFW_LOSE_CONTEXT_ON_RESET = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00031002, .hex);
pub const GLFW_OPENGL_ANY_PROFILE = @as(c_int, 0);
pub const GLFW_OPENGL_CORE_PROFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00032001, .hex);
pub const GLFW_OPENGL_COMPAT_PROFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00032002, .hex);
pub const GLFW_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00033001, .hex);
pub const GLFW_STICKY_KEYS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00033002, .hex);
pub const GLFW_STICKY_MOUSE_BUTTONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00033003, .hex);
pub const GLFW_LOCK_KEY_MODS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00033004, .hex);
pub const GLFW_RAW_MOUSE_MOTION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00033005, .hex);
pub const GLFW_CURSOR_NORMAL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00034001, .hex);
pub const GLFW_CURSOR_HIDDEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00034002, .hex);
pub const GLFW_CURSOR_DISABLED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00034003, .hex);
pub const GLFW_CURSOR_CAPTURED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00034004, .hex);
pub const GLFW_ANY_RELEASE_BEHAVIOR = @as(c_int, 0);
pub const GLFW_RELEASE_BEHAVIOR_FLUSH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00035001, .hex);
pub const GLFW_RELEASE_BEHAVIOR_NONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00035002, .hex);
pub const GLFW_NATIVE_CONTEXT_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036001, .hex);
pub const GLFW_EGL_CONTEXT_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036002, .hex);
pub const GLFW_OSMESA_CONTEXT_API = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036003, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_NONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037001, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_OPENGL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037002, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_OPENGLES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037003, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_D3D9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037004, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_D3D11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037005, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_VULKAN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037007, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE_METAL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00037008, .hex);
pub const GLFW_WAYLAND_PREFER_LIBDECOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00038001, .hex);
pub const GLFW_WAYLAND_DISABLE_LIBDECOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00038002, .hex);
pub const GLFW_ANY_POSITION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub const GLFW_ARROW_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036001, .hex);
pub const GLFW_IBEAM_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036002, .hex);
pub const GLFW_CROSSHAIR_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036003, .hex);
pub const GLFW_POINTING_HAND_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036004, .hex);
pub const GLFW_RESIZE_EW_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036005, .hex);
pub const GLFW_RESIZE_NS_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036006, .hex);
pub const GLFW_RESIZE_NWSE_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036007, .hex);
pub const GLFW_RESIZE_NESW_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036008, .hex);
pub const GLFW_RESIZE_ALL_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00036009, .hex);
pub const GLFW_NOT_ALLOWED_CURSOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0003600A, .hex);
pub const GLFW_HRESIZE_CURSOR = GLFW_RESIZE_EW_CURSOR;
pub const GLFW_VRESIZE_CURSOR = GLFW_RESIZE_NS_CURSOR;
pub const GLFW_HAND_CURSOR = GLFW_POINTING_HAND_CURSOR;
pub const GLFW_CONNECTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040001, .hex);
pub const GLFW_DISCONNECTED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00040002, .hex);
pub const GLFW_JOYSTICK_HAT_BUTTONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00050001, .hex);
pub const GLFW_ANGLE_PLATFORM_TYPE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00050002, .hex);
pub const GLFW_PLATFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00050003, .hex);
pub const GLFW_COCOA_CHDIR_RESOURCES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00051001, .hex);
pub const GLFW_COCOA_MENUBAR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00051002, .hex);
pub const GLFW_X11_XCB_VULKAN_SURFACE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00052001, .hex);
pub const GLFW_WAYLAND_LIBDECOR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00053001, .hex);
pub const GLFW_ANY_PLATFORM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060000, .hex);
pub const GLFW_PLATFORM_WIN32 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060001, .hex);
pub const GLFW_PLATFORM_COCOA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060002, .hex);
pub const GLFW_PLATFORM_WAYLAND = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060003, .hex);
pub const GLFW_PLATFORM_X11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060004, .hex);
pub const GLFW_PLATFORM_NULL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00060005, .hex);
pub const GLFW_DONT_CARE = -@as(c_int, 1);
pub const gladGLversionStruct = struct_gladGLversionStruct;
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const __lc_time_data = struct___lc_time_data;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const tagLC_ID = struct_tagLC_ID;
pub const __GLsync = struct___GLsync;
pub const _cl_context = struct__cl_context;
pub const _cl_event = struct__cl_event;
