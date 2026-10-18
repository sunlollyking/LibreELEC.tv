# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-freeintv"
PKG_VERSION="ef3e0fe322bec62a7f916c0bb0834c08c348d0b4"
PKG_SHA256="912d0a9c314cc63c396f8bc5a5778c341a3f4f860ebae1e069a877b9c98d0f11"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/libretro/FreeIntv"
PKG_URL="https://github.com/libretro/FreeIntv/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="FreeIntv is a libretro emulation core for the Mattel Intellivision."
PKG_TOOLCHAIN="make"

PKG_LIBNAME="freeintv_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="FREEINTV_LIB"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
