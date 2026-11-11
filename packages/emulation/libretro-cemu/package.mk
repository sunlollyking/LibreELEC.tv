# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-cemu"
PKG_VERSION="15f19c1a3a77c7034a4489bbf43f4651ec54210a"
PKG_SHA256="51619e1b33fbe6cde7b3907489b5b8871e522b9403756712bde024615e58aaa8"
PKG_LICENSE="MPL-2.0"
PKG_SITE="https://github.com/WizzardSK/cemu-libretro"
# The core needs its ZArchive, Vulkan-Headers, imgui and cemu_graphic_packs submodules, which
# this archive leaves out: put a tarball made from a recursive clone in sources/ instead.
PKG_URL="https://github.com/WizzardSK/cemu-libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain patchelf:host boost curl pugixml rapidjson libzip glslang spirv-tools zlib zstd openssl glm libfmt libpng ${OPENGL} libX11 libXrender"
PKG_LONGDESC="Cemu is a Nintendo Wii U emulator."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="cemu_libretro.so"
PKG_LIBVAR="CEMU_LIB"

# Xlib is needed for its headers only: the core looks GLX and Xlib up at run time and uses EGL
# without them. Vulkan stays built in; Kodi refuses a Vulkan context and the core then takes
# OpenGL 4.5.
PKG_CMAKE_OPTS_TARGET="-DENABLE_VCPKG=OFF \
                       -DENABLE_WAYLAND=OFF \
                       -DENABLE_LIBUSB=OFF"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_BUILD}/bin/${PKG_LIBNAME} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  # The image has no glslang; game.libretro.cemu ships it beside the core.
  patchelf --set-rpath '$ORIGIN' ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
