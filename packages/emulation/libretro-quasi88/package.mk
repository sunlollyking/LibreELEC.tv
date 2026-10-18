# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-quasi88"
PKG_VERSION="7884be5277776a5d8c4fdc4e574e9b5b589945c9"
PKG_SHA256="1bf45b4a87c96a7f6de212dde83f3c0e0cbc7023fac8e01e4f07da507c92273f"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/libretro/quasi88-libretro"
PKG_URL="https://github.com/libretro/quasi88-libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Port of QUASI88 to the libretro API, a NEC PC-8801 emulator."
PKG_TOOLCHAIN="make"

PKG_LIBNAME="quasi88_libretro.so"
PKG_LIBPATH="quasi88_libretro.so"
PKG_LIBVAR="QUASI88_LIB"

pre_make_target() {
  # the core does not build as C23, the default since GCC 15
  CFLAGS+=" -std=gnu17"
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
