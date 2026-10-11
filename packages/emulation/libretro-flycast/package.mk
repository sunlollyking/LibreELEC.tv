# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-flycast"
PKG_VERSION="4473f5cb923ad4b9cd9e5a66e2205bec817af4fb"
PKG_SHA256="ef74f224417af8b2c970ccbf9ce54f19b990c11a6df7c33345ea5339f8586849"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/flyinghead/flycast"
PKG_URL="https://github.com/kodi-game/flycast/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Flycast is a multi-platform Sega Dreamcast, Naomi and Atomiswave emulator."

# Keep symbols: this core runs unthrottled and silent with correct timing
# declared, and the reason is somewhere inside it.
PKG_BUILD_FLAGS="-strip"
PKG_TOOLCHAIN="make"

PKG_LIBNAME="flycast_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="FLYCAST_LIB"

# The toolchain ships no omp.h; the core enables OpenMP by default
PKG_MAKE_OPTS_TARGET="platform=unix GIT_VERSION= HAVE_OPENMP=0"

if build_with_debug; then
  PKG_MAKE_OPTS_TARGET+=" DEBUG=1"
fi

# The core resolves GL entry points at runtime through glsym rather than linking
# them, so this is about having the library present rather than linking it
if [ "${OPENGL_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGL}"
  # glvnd here provides libOpenGL, not libGL -- there is no GLX on GBM. The
  # Makefile only falls back to -lGL when GL_LIB is unset, so naming it is
  # enough; no patch needed.
  PKG_MAKE_OPTS_TARGET+=" GL_LIB=-lOpenGL"
fi

if [ "${OPENGLES_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
  PKG_MAKE_OPTS_TARGET+=" FORCE_GLES=1"
  # HAVE_GL3 implies HAVE_CORE, which defines CORE, and the bundled glsm then
  # calls glGenVertexArrays/glBindVertexArray. Those are desktop GL 3 and are
  # not declared by the ES2 headers this path uses, so the build stops at
  # "implicit declaration of function 'glGenVertexArrays'".
  PKG_MAKE_OPTS_TARGET+=" HAVE_GL3=0"
fi

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
