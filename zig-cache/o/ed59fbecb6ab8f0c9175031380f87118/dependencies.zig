pub const packages = struct {
    pub const @"12201f19e3462d4df23aeb0cc57ba0ba3139def90e3304d9b5d4ba78be1c49f200f0" = struct {
        pub const available = true;
        pub const build_root = "C:\\Users\\gregi\\Cubyz-Launcher\\../Cubyz-libs/zig-out";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"1220234373ac197e8dad7a2d1beeb81619a6112e44dba6b2672af9a38fb01a16eef8" = struct {
        pub const available = false;
    };
    pub const @"12204ba799cc74baeec8284b8a22cd0b597b58d5fa32c6eac999635fdc1834c950fc" = struct {
        pub const available = false;
    };
    pub const @"1220a2630c691c0ce40afd51022941b0544c9bacc9190667f701036e0eb3ec6333d5" = struct {
        pub const available = true;
        pub const build_root = "C:\\Users\\gregi\\AppData\\Local\\zig\\p\\1220a2630c691c0ce40afd51022941b0544c9bacc9190667f701036e0eb3ec6333d5";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"1220c27cb071f1340304f5befa8e273bc995c31f833f26c148ca17714d648ae1365a" = struct {
        pub const available = false;
    };
    pub const @"1220c94c49f56b65a1646d683f868d167db5178c71d90c60759d788d6afa0e484c64" = struct {
        pub const available = false;
    };
    pub const @"1220cd7c8fd567132ba3fa64bf60765434a6dbab9c33444ca37e6ab53563cabfbf94" = struct {
        pub const available = false;
    };
    pub const @"1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106" = struct {
        pub const available = true;
        pub const build_root = "C:\\Users\\gregi\\AppData\\Local\\zig\\p\\1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "local", "12201f19e3462d4df23aeb0cc57ba0ba3139def90e3304d9b5d4ba78be1c49f200f0" },
    .{ "cubyz_deps_headers", "1220f83952166e8649c95fdbc3585c7fc8cc2d0de878c26feec2d4b0277cc0c86106" },
    .{ "cubyz_deps_aarch64_macos", "12204ba799cc74baeec8284b8a22cd0b597b58d5fa32c6eac999635fdc1834c950fc" },
    .{ "cubyz_deps_aarch64_linux", "1220c94c49f56b65a1646d683f868d167db5178c71d90c60759d788d6afa0e484c64" },
    .{ "cubyz_deps_aarch64_windows", "1220c27cb071f1340304f5befa8e273bc995c31f833f26c148ca17714d648ae1365a" },
    .{ "cubyz_deps_x86_64_macos", "1220cd7c8fd567132ba3fa64bf60765434a6dbab9c33444ca37e6ab53563cabfbf94" },
    .{ "cubyz_deps_x86_64_linux", "1220234373ac197e8dad7a2d1beeb81619a6112e44dba6b2672af9a38fb01a16eef8" },
    .{ "cubyz_deps_x86_64_windows", "1220a2630c691c0ce40afd51022941b0544c9bacc9190667f701036e0eb3ec6333d5" },
};
