# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-dolphin"
PKG_VERSION="0cd3bb89c29535db9b7552fc86871867ccf5b471"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/libretro/dolphin"
# A git source rather than an archive: the core's Externals are submodules --
# glslang, SPIRV-Cross, mbedtls and a dozen more -- and GitHub's tarballs never
# contain those, so an archive build stops at the first add_subdirectory()
PKG_URL="https://github.com/libretro/dolphin.git"
PKG_GIT_CLONE_SINGLE="yes"
# No PKG_GIT_CLONE_DEPTH: a shallow clone only fetches the tip of master, and
# the commit pinned above is an earlier one. Submodules stay shallow, as those
# are pinned by the superproject and always fetched at the commit it names.
PKG_GIT_SUBMODULE_DEPTH="1"
PKG_DEPENDS_TARGET="toolchain zlib curl systemd"
PKG_LONGDESC="Dolphin is a GameCube and Wii emulator."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="dolphin_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="DOLPHIN_LIB"

PKG_CMAKE_OPTS_TARGET="-DLIBRETRO=ON \
                       -DCMAKE_BUILD_TYPE=Release \
                       -DENABLE_QT=OFF \
                       -DENABLE_SDL=OFF \
                       -DENABLE_TESTS=OFF \
                       -DENABLE_TESTING=OFF \
                       -DUSE_DISCORD_PRESENCE=OFF \
                       -DENABLE_ANALYTICS=OFF \
                       -DENABLE_AUTOUPDATE=OFF \
                       -DENABLE_CLI_TOOL=OFF \
                       -DENABLE_LTO=OFF"

# The core builds its own copies of everything under Externals. Letting it pick
# up host libraries instead gives a core linked against the build machine's
# versions, which are not the ones on the image.
PKG_CMAKE_OPTS_TARGET+=" -DUSE_SYSTEM_LIBS=OFF"

if [ "${OPENGL_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGL} libglvnd"
  PKG_CMAKE_OPTS_TARGET+=" -DENABLE_EGL=ON"
fi

if [ "${OPENGLES_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
  PKG_CMAKE_OPTS_TARGET+=" -DENABLE_EGL=ON"
fi

if [ "${VULKAN_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${VULKAN}"
  PKG_CMAKE_OPTS_TARGET+=" -DENABLE_VULKAN=ON"
else
  PKG_CMAKE_OPTS_TARGET+=" -DENABLE_VULKAN=OFF"
fi

# No X11 on a GBM image, and the core probes for it rather than being told
if [ "${DISPLAYSERVER}" = "x11" ]; then
  PKG_CMAKE_OPTS_TARGET+=" -DENABLE_X11=ON"
else
  PKG_CMAKE_OPTS_TARGET+=" -DENABLE_X11=OFF"
fi

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp $(find ${PKG_BUILD}/.${TARGET_NAME} -name ${PKG_LIBNAME} | head -1) \
     ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
