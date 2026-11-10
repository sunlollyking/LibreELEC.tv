# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-cemu"
PKG_VERSION="6457cb4f3116a6a77f87a09e1f40ae4667a03186"
PKG_SHA256="599486cff1d0c2be5c01e12d55f6b498cc65b2d8221d439255ba5df505b327a2"
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
