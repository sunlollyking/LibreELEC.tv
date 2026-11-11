# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-azahar"
PKG_VERSION="2126.2"
PKG_SHA256="85c8b56fac703df04720125044b8ff887997911858a6cde545dfb1107ba4cd26"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/azahar-emu/azahar"
PKG_URL="https://github.com/azahar-emu/azahar/releases/download/${PKG_VERSION}/azahar-unified-source-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain ${OPENGL}"
PKG_LONGDESC="Azahar is a Nintendo 3DS emulator, the successor of Citra."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="azahar_libretro.so"
PKG_LIBVAR="AZAHAR_LIB"

# The core needs desktop OpenGL 4.3 here: its GLES renderer is only selected on Android and
# iOS, and Kodi has no Vulkan frontend. The unified source carries every external it builds.
PKG_CMAKE_OPTS_TARGET="-DENABLE_LIBRETRO=ON \
                       -DENABLE_VULKAN=OFF \
                       -DENABLE_TESTS=OFF \
                       -DENABLE_LTO=OFF"

pre_configure_target() {
  # GNU unique symbols, mostly Boost's serialization singletons, keep the core from ever being
  # unloaded, so the next game would start in the last one's state
  export CXXFLAGS+=" -fno-gnu-unique"
}

make_target() {
  cmake --build . --target citra_libretro
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp $(find . -name ${PKG_LIBNAME} -type f | head -1) ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
