# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="rapidjson"
PKG_VERSION="297637bc0a0f00dc504dbc1a47ebdaa577f8ae19"
PKG_SHA256="104f57d1512da80740a3eca7d7b2acee7f749d79dbf15328ad1869c5c962011b"
PKG_LICENSE="MIT"
PKG_SITE="https://rapidjson.org"
PKG_URL="https://github.com/Tencent/rapidjson/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="rapidjson: a header-only JSON parser and generator for C++"

# The 1.1.0 release from 2016 no longer builds with current compilers.
PKG_CMAKE_OPTS_TARGET="-DRAPIDJSON_BUILD_DOC=OFF \
                       -DRAPIDJSON_BUILD_EXAMPLES=OFF \
                       -DRAPIDJSON_BUILD_TESTS=OFF"
