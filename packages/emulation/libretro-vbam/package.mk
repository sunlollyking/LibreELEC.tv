# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-vbam"
PKG_VERSION="34823020956225d0f8c9537ee091ba464da0a1bf"
PKG_SHA256="ec0bcc645675e41bae47265731d48f6a212d915f0e340a90e256e2cf438b8bca"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/visualboyadvance-m/visualboyadvance-m"
PKG_URL="https://github.com/visualboyadvance-m/visualboyadvance-m/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_LONGDESC="VBA-M with libretro integration"
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="vbam_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"
PKG_LIBVAR="VBAM_LIB"

# The core is a target of the main CMake build now; only it is built, without
# the other frontends or the dependencies only they use. Shared libs, or the
# core links libstdc++ statically, which the toolchain doesn't provide.
PKG_CMAKE_OPTS_TARGET="-DENABLE_LIBRETRO=ON \
                       -DBUILD_SHARED_LIBS=ON \
                       -DENABLE_WX=OFF \
                       -DENABLE_SDL=OFF \
                       -DENABLE_QT=OFF \
                       -DENABLE_LINK=OFF \
                       -DENABLE_FFMPEG=OFF \
                       -DENABLE_ONLINEUPDATES=OFF \
                       -DENABLE_BZ2=OFF \
                       -DENABLE_LZMA=OFF \
                       -DENABLE_LTO=OFF \
                       -DBUILD_TESTING=OFF"

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp ${PKG_LIBPATH} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
