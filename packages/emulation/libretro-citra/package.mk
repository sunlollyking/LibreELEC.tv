# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-citra"
PKG_VERSION="a0483e9abe8134ae6b290cdca7d49cb77689f05b"
PKG_SHA256="ad66e97b1746961a5b328eda3d0f5e03a9df406d95813a5517716a91f030671d"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/libretro/citra"
PKG_URL="https://github.com/libretro/citra/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain ${OPENGL}"
PKG_LONGDESC="Citra is a Nintendo 3DS emulator."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="citra_libretro.so"
PKG_LIBVAR="CITRA_LIB"

# GitHub's archive leaves out the 31 submodules, so the tarball in sources is made from a
# recursive clone of this commit, plus the GIT-COMMIT and GIT-TAG files of Citra's unified source
# archives: save states only load in a build that knows its revision. Some submodules still ask
# for CMake 2.x, which CMake 4 refuses, and glslang's SPIR-V optimizer needs SPIRV-Tools, which is
# not among them.
PKG_CMAKE_OPTS_TARGET="-DENABLE_LIBRETRO=ON \
                       -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
                       -DENABLE_OPT=OFF \
                       -DENABLE_QT=OFF \
                       -DENABLE_SDL2=OFF \
                       -DENABLE_TESTS=OFF \
                       -DENABLE_DEDICATED_ROOM=OFF \
                       -DENABLE_WEB_SERVICE=OFF \
                       -DENABLE_SCRIPTING=OFF \
                       -DENABLE_CUBEB=OFF \
                       -DENABLE_OPENAL=OFF \
                       -DENABLE_LIBUSB=OFF \
                       -DCITRA_ENABLE_BUNDLE_TARGET=OFF \
                       -DCITRA_WARNINGS_AS_ERRORS=OFF \
                       -DENABLE_LTO=OFF"

make_target() {
  cmake --build . --target citra_libretro
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp $(find . -name ${PKG_LIBNAME} -type f | head -1) ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
