# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-fbneo"
PKG_VERSION="e0ecdb11af563f31e698e590d69a85f087f528b3"
PKG_SHA256="de85f453aca8a7e1a3669e0a3ebb431255112c3abd98c69e20f0b8ab954c27a7"
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
