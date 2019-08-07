load("@bazel_skylib//:setup.bzl", "bazel_skylib_setup")	
load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies", "go_register_toolchains")

def rules_cc_internal_setup():
    bazel_skylib_setup()
    go_rules_dependencies()
    go_register_toolchains()
  