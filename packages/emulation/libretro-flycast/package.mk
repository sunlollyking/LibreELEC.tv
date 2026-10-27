# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-flycast"
PKG_VERSION="1b63c8a3677cc8eb1292863c4fe8fc8f94674fc8"
PKG_SHA256="4441432e20ac040a8d918a4409384fb26db1c14eccd1a569f2af63be9f3280d1"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/flyinghead/flycast"
PKG_URL="https://github.com/flyinghead/flycast/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_LONGDESC="Flycast is a multi-platform Sega Dreamcast, Naomi and Atomiswave emulator."
PKG_BUILD_FLAGS="-strip"
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="flycast_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="FLYCAST_LIB"

# The libretro core only: none of the standalone app's audio, crash reporting,
# scripting or Windows back ends, and LibreELEC has no libzip or Vulkan loader
PKG_CMAKE_OPTS_TARGET="-DLIBRETRO=ON \
                       -DUSE_VULKAN=OFF \
                       -DUSE_OPENMP=OFF \
                       -DUSE_HOST_LIBZIP=OFF \
                       -DUSE_ALSA=OFF \
                       -DUSE_LIBAO=OFF \
                       -DUSE_PULSEAUDIO=OFF \
                       -DUSE_BREAKPAD=OFF \
                       -DUSE_LUA=OFF \
                       -DUSE_DX9=OFF \
                       -DUSE_DX11=OFF"

if [ "${OPENGL_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGL}"
fi

if [ "${OPENGLES_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
  PKG_CMAKE_OPTS_TARGET+=" -DUSE_GLES=ON"
fi

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
