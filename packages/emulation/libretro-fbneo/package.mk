# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-fbneo"
PKG_VERSION="9c6d05d00476de561ffb50928b9a2fed73142dea"
PKG_SHA256="d3d8df110e05d2d071bed9c4074b7bb1b5904bf158d534b693e1f2a82f00f83d"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/libretro/fbneo"
PKG_URL="https://github.com/libretro/FBNeo/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Port of Final Burn Neo to Libretro"
PKG_TOOLCHAIN="make"

PKG_LIBNAME="fbneo_libretro.so"
PKG_LIBPATH="../src/burner/libretro/${PKG_LIBNAME}"
PKG_LIBVAR="FBNEO_LIB"

PKG_MAKE_OPTS_TARGET="-C ../src/burner/libretro"

if [ "${ARCH}" = "arm" ]; then
  PKG_MAKE_OPTS_TARGET+=" profile=performance"

  if target_has_feature neon; then
    PKG_MAKE_OPTS_TARGET+=" HAVE_NEON=1"
  fi

  if [ "${PROJECT}" = "Rockchip" -a "${DEVICE}" = "OdroidGoAdvance" ]; then
    PKG_MAKE_OPTS_TARGET+=" USE_CYCLONE=1"
  fi

else
  PKG_MAKE_OPTS_TARGET+=" profile=accuracy"
fi

pre_make_target() {
  MAKEFLAGS+=" GIT_VERSION=${PKG_VERSION:0:7} GIT_DATE=$(date -u -r ${PKG_BUILD}/LICENSE.md +%y%m%d)"
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake

  mkdir -p ${SYSROOT_PREFIX}/usr/share/libretro-database/fbneo
  cp -vr ${PKG_BUILD}/dats/* ${SYSROOT_PREFIX}/usr/share/libretro-database/fbneo

  mkdir -p ${SYSROOT_PREFIX}/usr/share/retroarch/system/fbneo
  cp ${PKG_BUILD}/metadata/hiscore.dat ${SYSROOT_PREFIX}/usr/share/retroarch/system/fbneo
}
