# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-px68k"
PKG_VERSION="0ad84d7058a12b7db4f7f7a906e87fad4e2f26f6"
PKG_SHA256="7d9b284f3a6cb388b7bfd159118ae4ecaf2660a7c0855e3babb208fc107b685d"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/libretro/px68k-libretro"
PKG_URL="https://github.com/libretro/px68k-libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="PX68k is a libretro emulation core for the Sharp X68000."
PKG_TOOLCHAIN="make"

PKG_LIBNAME="px68k_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="PX68K_LIB"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
