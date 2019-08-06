workspace(name = "rules_cc")

git_repository(
    name = "bazel_federation",
    remote = "https://github.com/fweikert/bazel-federation/",
    branch = "v2",
    commit = "e4fb125964e19b8c75860eddb15c1eb735df9ed5"
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
