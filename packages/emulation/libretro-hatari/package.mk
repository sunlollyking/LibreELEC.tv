# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-hatari"
PKG_VERSION="50929946d196f431906932420c55e1b3593dacc5"
PKG_SHA256="5e50527751e23b780a8244d1b01b7cbc2db800d17cd5037791d220cd90e29970"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/libretro/hatari"
PKG_URL="https://github.com/libretro/hatari/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_DEPENDS_UNPACK="capsimg"
PKG_LONGDESC="New rebasing of Hatari based on Mercurial upstream. Tries to be a shallow fork for easy upstreaming later on."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="hatari_libretro.so"
PKG_LIBPATH="src/${PKG_LIBNAME}"
PKG_LIBVAR="HATARI_LIB"

# The core is a target of the main CMake build now; only it is built, without
# the emulator's own executable and tools or the libraries only they use. IPF
# disk images need the SPS decoder library built in, as libretro's own builds do.
PKG_CMAKE_OPTS_TARGET="-DENABLE_LIBRETRO=ON \
                       -DENABLE_HATARI=OFF \
                       -DENABLE_TOOLS=OFF \
                       -DENABLE_MAN_PAGES=0 \
                       -DENABLE_SDL3=0 \
                       -DCMAKE_DISABLE_FIND_PACKAGE_SDL2=ON \
                       -DCMAKE_DISABLE_FIND_PACKAGE_Readline=ON \
                       -DCMAKE_DISABLE_FIND_PACKAGE_LibArchive=ON \
                       -DENABLE_STATIC_CAPSIMAGE=ON \
                       -DFETCHCONTENT_SOURCE_DIR_CAPSIMG=$(get_build_dir capsimg) \
                       -DFETCHCONTENT_FULLY_DISCONNECTED=ON"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
