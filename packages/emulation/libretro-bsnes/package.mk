# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-bsnes"
PKG_VERSION="05439f96121d2b9d7ad7a5fc1f29d7eebdcc8c43"
PKG_SHA256="c32b646544eae0ec2fd467f32ee9b05d0b19d9af4fc8df9c73fa43f1f915812f"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/libretro/bsnes"
PKG_URL="https://github.com/libretro/bsnes-libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Super Nintendo (Super Famicom) emulator"
PKG_TOOLCHAIN="make"

PKG_LIBNAME="bsnes_libretro.so"
PKG_LIBPATH="bsnes/out/${PKG_LIBNAME}"
PKG_LIBVAR="BSNES_LIB"

PKG_MAKE_OPTS_TARGET="-C bsnes -f GNUmakefile target=libretro platform=linux local=false"

pre_make_target() {
  PKG_MAKE_OPTS_TARGET+=" compiler=${CXX}"
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
