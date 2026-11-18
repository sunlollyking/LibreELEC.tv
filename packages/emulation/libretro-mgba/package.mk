# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-mgba"
PKG_VERSION="190a68d6095d6d9ce71f0bf56a359d5db5589cfc"
PKG_SHA256="e8a5ce4fba155225c5d457b1415f7d4eb2c24f1a0bde7c867f6773ad1afec8e2"
PKG_LICENSE="MPL-2.0"
PKG_SITE="https://github.com/mgba-emu/mgba"
PKG_URL="https://github.com/mgba-emu/mgba/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="mGBA Game Boy Advance Emulator"
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="mgba_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="MGBA_LIB"

PKG_CMAKE_OPTS_TARGET="-DLIBMGBA_ONLY=ON \
                       -DBUILD_LIBRETRO=ON \
                       -DSKIP_LIBRARY=ON \
                       -DLIBRETRO_LIBDIR:PATH=lib/libretro"

pre_configure_target() {
  # mGBA's version comes from the git checkout it finds; keep git out of the build system's own repository.
  export GIT_CEILING_DIRECTORIES="$(dirname ${PKG_BUILD})"
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
