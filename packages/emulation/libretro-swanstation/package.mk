# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2024-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-swanstation"
PKG_VERSION="e436e9b85374def58d211df7f78880f0f4a917b4"
PKG_SHA256="bff59f88ed83dbc9f597ccd52b29dc82eae2c724f5158095ef075cccb430131a"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/swanstation"
PKG_URL="https://github.com/libretro/swanstation/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="SwanStation is a Libretro core implementation of DuckStation, which is an emulator of the Sony PlayStation console."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="swanstation_libretro.so"
PKG_LIBPATH="./${PKG_LIBNAME}"
PKG_LIBVAR="SWANSTATION_LIB"

if [ "${OPENGL_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGL}"
fi

if [ "${OPENGLES_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
fi

if [ "${VULKAN_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${VULKAN}"
fi

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" > ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
