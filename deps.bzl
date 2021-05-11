load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_gazelle//:deps.bzl", "go_repository")

# To update:
#
#   bazel run //:gazelle -- update-repos \
#       -from_file=go.mod -to_macro=deps.bzl%nogo_dependencies \
#       -build_directives="gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"
#
def nogo_dependencies():
    go_repository(
        name = "co_honnef_go_tools",
        build_directives = [
            "gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl",
        ],
        importpath = "honnef.co/go/tools",
        sum = "h1:W18jzjh8mfPez+AwGLxmOImucz/IFjpNlrKVnaj2YVc=",
        version = "v0.0.1-2020.1.6",
    )

    go_repository(
        name = "com_github_burntsushi_toml",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:WXkYYl6Yr3qBf1K79EBnL4mak0OimBfB0XUf9Vl28OQ=",
        version = "v0.3.1",
    )

    go_repository(
        name = "com_github_google_renameio",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_kisielk_gotool",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_kr_pretty",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/kr/pretty",
        sum = "h1:L/CwN0zerZDmRFUapSPitk6f+Q3+0za1rQkzVuMiMFI=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_kr_pty",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/kr/pty",
        sum = "h1:VkoXIwSboBpnk99O/KFauAEILuNHv5DVFKZMBN/gUgw=",
        version = "v1.1.1",
    )

    go_repository(
        name = "com_github_kr_text",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/kr/text",
        sum = "h1:45sCR5RtlFHMR4UwH9sdQ5TC8v0qDQCHnXt+kaKSTVE=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_rogpeppe_go_internal",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:RR9dF3JtopPvtkroDZuVD7qquD0bnHlKSqaQhgwt8yk=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_sluongng_staticcheck_codegen",
        build_directives = [
            "gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl",
        ],
        importpath = "github.com/sluongng/staticcheck-codegen",
        sum = "h1:tmF8xWYccJ9Zlr9uuOUj+O5uwlpu2daQ+4tXQ4/0zSw=",
        version = "v0.0.0-20201112091853-c143c1606438",
    )

    go_repository(
        name = "com_github_yuin_goldmark",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "github.com/yuin/goldmark",
        sum = "h1:nqDD4MMMQA0lmWq03Z2/myGPYLQoXtmi0rGVs95ntbo=",
        version = "v1.1.27",
    )

    go_repository(
        name = "in_gopkg_check_v1",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "gopkg.in/check.v1",
        sum = "h1:qIbj1fsPNlZgppZ+VLlY7N33q108Sa+fhmuc+sWQYwY=",
        version = "v1.0.0-20180628173108-788fd7840127",
    )

    go_repository(
        name = "in_gopkg_errgo_v2",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )

    go_repository(
        name = "org_golang_x_crypto",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/crypto",
        sum = "h1:ObdrDkeb4kJdCP557AjRjq69pTHfNouLtWZG7j9rPN8=",
        version = "v0.0.0-20191011191535-87dc89f01550",
    )

    go_repository(
        name = "org_golang_x_mod",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/mod",
        sum = "h1:KU7oHjnv3XNWfa5COkzUifxZmxp1TyI7ImMXqFxLwvQ=",
        version = "v0.2.0",
    )

    go_repository(
        name = "org_golang_x_net",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/net",
        sum = "h1:0mm1VjtFUOIlE1SbDlwjYaDxZVDP2S5ou6y0gSgXHu8=",
        version = "v0.0.0-20200226121028-0de0cce0169b",
    )

    go_repository(
        name = "org_golang_x_sync",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/sync",
        sum = "h1:vcxGaoTs7kV8m5Np9uUNQin4BrLOthgV7252N8V+FwY=",
        version = "v0.0.0-20190911185100-cd5d95a43a6e",
    )

    go_repository(
        name = "org_golang_x_sys",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/sys",
        sum = "h1:+R4KGOnez64A81RvjARKc4UT5/tI9ujCIVX+P5KiHuI=",
        version = "v0.0.0-20190412213103-97732733099d",
    )

    go_repository(
        name = "org_golang_x_text",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/text",
        sum = "h1:g61tztE5qeGQ89tm6NTjjM9VPIm088od1l6aSorWRWg=",
        version = "v0.3.0",
    )

    go_repository(
        name = "org_golang_x_tools",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/tools",
        sum = "h1:RHORRhs540cYZYrzgU2CPUyykkwZM78hGdzocOo9P8A=",
        version = "v0.0.0-20200410194907-79a7a3126eef",
    )

    go_repository(
        name = "org_golang_x_xerrors",
        build_directives = ["gazelle:map_kind go_library go_tool_library @io_bazel_rules_go//go:def.bzl"],
        importpath = "golang.org/x/xerrors",
        sum = "h1:E7g+9GITq07hpfrRu66IVDexMakfv52eLZ2CXBWiKr4=",
        version = "v0.0.0-20191204190536-9bdfabe68543",
    )
