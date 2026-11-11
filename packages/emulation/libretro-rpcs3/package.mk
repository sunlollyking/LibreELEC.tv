# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-rpcs3"
PKG_VERSION="cb8338f3215ee2d6c981c7240e49bcaf7fad4b6a"
PKG_SHA256="1955ac420f81c7bf15f523ffcad5c824ae2e21af88f501b1be3d4c1896a34595"
PKG_LICENSE="GPL-2.0-only"
PKG_SITE="https://github.com/WizzardSK/rpcs3-libretro"
# The core builds LLVM, glslang and most of its libraries from submodules, which this archive
# leaves out: put a tarball made from a recursive clone in sources/ instead.
PKG_URL="https://github.com/WizzardSK/rpcs3-libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain ffmpeg curl zlib glew ${OPENGL} libX11 vulkan-headers vulkan-loader"
PKG_LONGDESC="RPCS3 is a Sony PlayStation 3 emulator."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="rpcs3_libretro.so"
PKG_LIBVAR="RPCS3_LIB"

# LLVM is built from the submodule for x86 alone and linked in. The core renders with Vulkan:
# Kodi refuses the context, and the core then hands over software frames.
PKG_CMAKE_OPTS_TARGET="-DBUILD_LIBRETRO_CORE_ONLY=ON \
                       -DBUILD_LLVM=ON \
                       -DLLVM_TARGETS_TO_BUILD=X86 \
                       -DUSE_NATIVE_INSTRUCTIONS=OFF \
                       -DUSE_LTO=OFF \
                       -DUSE_PRECOMPILED_HEADERS=OFF \
                       -DUSE_SYSTEM_CURL=ON \
                       -DUSE_SYSTEM_FFMPEG=ON \
                       -DUSE_SYSTEM_OPENCV=OFF \
                       -DUSE_SDL=OFF \
                       -DUSE_FAUDIO=OFF \
                       -DUSE_LIBEVDEV=OFF \
                       -DUSE_DISCORD_RPC=OFF \
                       -DOpenGL_GL_PREFERENCE=GLVND \
                       -DCMAKE_DISABLE_FIND_PACKAGE_Wayland=ON \
                       -DGLEW_USE_STATIC_LIBS=ON"

pre_configure_target() {
  # The core includes GL/glx.h for its GLX shims, and an image without X has none: use Mesa's.
  mkdir -p ${PKG_BUILD}/.glx-headers/GL
  cp $(get_build_dir mesa)/include/GL/glx.h $(get_build_dir mesa)/include/GL/glxext.h \
     ${PKG_BUILD}/.glx-headers/GL/
  export CFLAGS+=" -I${PKG_BUILD}/.glx-headers"
  export CXXFLAGS+=" -I${PKG_BUILD}/.glx-headers"
}

make_target() {
  ninja ${NINJA_OPTS} rpcs3_libretro
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_BUILD}/.${TARGET_NAME}/rpcs3/libretro/${PKG_LIBNAME} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
