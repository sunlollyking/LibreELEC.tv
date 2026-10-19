# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-ppsspp"
PKG_VERSION="7b4ddb426bbe9e287bb7f19b0cfaebb4ea0d41d8"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/hrydgard/ppsspp"
# A git source rather than an archive: the core needs its submodules -- glslang
# and SPIRV-Cross among them -- and GitHub's tarballs never contain those, so an
# archive build stops at "ext/glslang/SPIRV/GlslangToSpv.h: No such file"
PKG_URL="https://github.com/libretro/ppsspp.git"
PKG_GIT_CLONE_SINGLE="yes"
PKG_GIT_CLONE_DEPTH="1"
PKG_GIT_SUBMODULE_DEPTH="1"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="PPSSPP is a PSP emulator, capable of running games in full HD."

PKG_TOOLCHAIN="make"

PKG_LIBNAME="ppsspp_libretro.so"
PKG_LIBPATH="libretro/${PKG_LIBNAME}"
PKG_LIBVAR="PPSSPP_LIB"

PKG_MAKE_OPTS_TARGET="-C libretro platform=unix NO_X11=1"

# ext/glew/glew.c is compiled whatever the renderer, and without GLEW_EGL it
# includes glxew.h, which needs X11 headers no GBM build has. It is also what
# makes glewInit() succeed where there is no GLX, so it is wanted on both the
# desktop GL and the GLES path.
PKG_MAKE_OPTS_TARGET+=" GLEW_EGL=1"

if build_with_debug; then
  PKG_MAKE_OPTS_TARGET+=" DEBUG=1"
fi

if [ "${OPENGLES_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
  # The Makefile only sets this from the platform string, which stays "unix"
  # here; it selects the GLES backend and the -DGLES -DUSING_GLES2 flags
  PKG_MAKE_OPTS_TARGET+=" GLES=1"
fi

if [ "${OPENGL_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGL}"
fi

post_unpack() {
  # PPSSPP ships a CMakeLists.txt for its standalone build. Its presence makes
  # the build run out of tree, where libretro/Makefile is not.
  rm -f ${PKG_BUILD}/CMakeLists.txt
}

pre_make_target() {
  if [ "${OPENGL_SUPPORT}" = "yes" ]; then
    # glvnd here provides libOpenGL, not libGL. Exported rather than passed to
    # make so the patched "GL_LIB ?=" picks it up and the Makefile's own
    # "GL_LIB += -lEGL" still applies -- a make argument would override both.
    export GL_LIB="-lOpenGL"
  else
    export GL_LIB="-lGLESv2"
  fi

  # This source predates GCC 13 dropping the transitive <cstdint> include and
  # C23 removing K&R definitions, both of which this toolchain enforces
  CXXFLAGS+=" -include cstdint -include pthread.h"
  CFLAGS+=" -std=gnu17 -Wno-implicit-function-declaration"
  CFLAGS+=" -include stdint.h -include pthread.h -include unistd.h"
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
