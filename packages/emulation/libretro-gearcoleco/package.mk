# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-gearcoleco"
PKG_VERSION="ec25661cc37d4dcdddfc769041352d057569ca6a"
PKG_SHA256="1f2f125ea069504c133b76f4208ebca3596723740d4a6d8cef7241e44094ac26"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/drhelius/Gearcoleco"
PKG_URL="https://github.com/drhelius/Gearcoleco/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Gearcoleco, a ColecoVision emulator, for the libretro API."
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-C platforms/libretro GIT_VERSION=${PKG_VERSION:0:7}"

PKG_LIBNAME="gearcoleco_libretro.so"
PKG_LIBPATH="platforms/libretro/gearcoleco_libretro.so"
PKG_LIBVAR="GEARCOLECO_LIB"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
