workspace(name = "rules_cc")

git_repository(
    name = "bazel_federation",
    remote = "https://github.com/fweikert/bazel-federation/",
    branch = "v2",
    commit = "e4fb125964e19b8c75860eddb15c1eb735df9ed5"
)

load("@bazel_federation//:repositories.bzl", "rules_cc_deps")
rules_cc_deps()

load("//:setup.bzl", "rules_cc_setup")	
rules_cc_setup()

load("//:internal_deps.bzl", "rules_cc_internal_deps")	
rules_cc_internal_deps()

load("//:internal_setup.bzl", "rules_cc_internal_setup")	
rules_cc_internal_setup()
