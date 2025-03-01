# Copyright 2018 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # Apache 2.0

load("//cc:defs.bzl", "cc_flags_supplier", "cc_library", "compiler_flag")

# It is frequently necessary to constrain platforms based on the cc compiler type.
constraint_setting(name = "cc_compiler")

constraint_value(
    name = "clang",
    constraint_setting = ":cc_compiler",
)

constraint_value(
    name = "gcc",
    constraint_setting = ":cc_compiler",
)

constraint_value(
    name = "msvc",
    constraint_setting = ":cc_compiler",
)

constraint_value(
    name = "clang-cl",
    constraint_setting = ":cc_compiler",
)

constraint_value(
    name = "mingw",
    constraint_setting = ":cc_compiler",
)

constraint_value(
    name = "msys",
    constraint_setting = ":cc_compiler",
)

cc_toolchain_alias(name = "current_cc_toolchain")

cc_host_toolchain_alias(name = "current_cc_host_toolchain")

cc_libc_top_alias(name = "current_libc_top")

cc_library(
    name = "malloc",
)

filegroup(
    name = "grep-includes",
    srcs = ["grep-includes.sh"],
)

filegroup(
    name = "empty",
    srcs = [],
)

# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# "cc-compiler-${CPU}" in this BUILD file, where CPU is the target CPU
# specified in --cpu.
#
# This file group should include
#   * all cc_toolchain targets supported
#   * all file groups that said cc_toolchain might refer to
alias(
    name = "toolchain",
    actual = "//external:cc_toolchain",
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]) + [
        "//cc/private/toolchain/runfiles:srcs",
    ],
)

filegroup(
    name = "embedded_tools",
    srcs = glob(["**"]) + [
        "//cc:action_names.bzl",
        "//cc/private/toolchain/runfiles:embedded_tools",
    ],
)

filegroup(
    name = "interface_library_builder",
    srcs = ["build_interface_so"],
)

filegroup(
    name = "osx_wrapper",
    srcs = ["osx_cc_wrapper.sh"],
)

filegroup(
    name = "link_dynamic_library",
    srcs = ["link_dynamic_library.sh"],
)

filegroup(
    name = "lib_cc_configure",
    srcs = ["lib_cc_configure.bzl"],
)

compiler_flag(name = "compiler")

cc_flags_supplier(name = "cc_flags")
