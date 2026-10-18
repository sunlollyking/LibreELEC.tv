# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-neocd"
PKG_VERSION="b1e04c738cb48a1dae0574b8877f6a116d270ca1"
PKG_SHA256="fac1ec580812ce7aa962498450e1b1cc8896a786eeb2f16cfe28807dc13d2418"
PKG_LICENSE="LGPL-3.0-only"
PKG_SITE="https://github.com/libretro/neocd_libretro"
PKG_URL="https://github.com/libretro/neocd_libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="NeoCD is a libretro emulation core for the SNK Neo Geo CD."
PKG_TOOLCHAIN="make"

PKG_LIBNAME="neocd_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="NEOCD_LIB"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
