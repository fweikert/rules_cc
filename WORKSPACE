workspace(name = "rules_cc")

git_repository(
    name = "bazel_federation",
    remote = "https://github.com/fweikert/bazel-federation/",
    branch = "v2",
    commit = "3332c3fc52e318d66fedaf6852705aa2d40e00b5"
)

load("@bazel_federation//:repositories.bzl", "rules_cc_deps")
rules_cc_deps()

load("//:internal_deps.bzl", "rules_cc_internal_deps")	
rules_cc_internal_deps()

load("@bazel_skylib//:setup.bzl", "bazel_skylib_setup")	
bazel_skylib_setup()

load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies", "go_register_toolchains")
go_rules_dependencies()
go_register_toolchains()

bind(
    name = "six",
    actual = "@six_archive//:six",
)

bind(
    name = "zlib",
    actual = "@net_zlib//:zlib"
)