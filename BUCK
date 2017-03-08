prebuilt_cxx_library(
    name = "tbb",
    lib_dir = "tbb/build/tbb_release",
    header_namespace = "",
    exported_headers = subdir_glob([
        ("tbb/include", "**/*.h"),
    ]),
    exported_linker_flags = [
        "-ldl",
    ],
    visibility = [
        "PUBLIC",
    ],
)

prebuilt_cxx_library_group(
    name = "tbb_lib_group",
    shared_libs = {
        "libtbb" : "tbb/build/tbb_release/libtbb.dylib",
    },
    shared_link = [
        "$(rel-lib libtbb)",
    ],
    exported_deps = [
        ":tbb_headers",
    ],

    visibility = [
        "PUBLIC",
    ],
)

cxx_library(
    name = "tbb_headers",
    exported_headers = subdir_glob([
        ("tbb/include", "**/*.h"),
    ]),
    exported_linker_flags = [
        "-ldl",
    ],
    visibility = [
        "PUBLIC",
    ],
)

cxx_binary(
    name = "test",
    deps = [
        ":tbb_lib_group",
    ],
    srcs = [
        "test.cpp",
    ],
    visibility = [
        "PUBLIC",
    ],
)
