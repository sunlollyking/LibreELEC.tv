# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libretro-suyu"
PKG_VERSION="347fcf91d95cd39cb5c3db50f1b6d827ad699311"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/suyu-emu/suyu-main"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain glslang:host spirv-tools:host openssl zlib zstd lz4 libfmt ffmpeg"
PKG_LONGDESC="suyu is a Nintendo Switch emulator, a fork of yuzu."
PKG_TOOLCHAIN="cmake"

PKG_LIBNAME="suyu_libretro.so"
PKG_LIBVAR="SUYU_LIB"

# The libretro core renders with a headless Vulkan device and hands the frontend plain frames,
# so it needs Vulkan on the device (VULKAN="vulkan-loader") but nothing from Kodi. The toolchain's
# cmake cannot download over https, so CPM's sources are fetched into the clone's .cache/cpm
# beforehand (tools/cpmutil.sh package fetch <name>, with the host's cmake). LibreELEC's static
# Boost lacks the compiled container library suyu needs, so it takes its own pinned Boost. The
# device's Vulkan headers come without the utility libraries suyu also wants, so it takes its own.
PKG_CMAKE_OPTS_TARGET="-DSUYU_BUILD_LIBRETRO_CORE=ON \
                       -DENABLE_QT=OFF \
                       -DYUZU_CMD=OFF \
                       -DENABLE_SDL3=OFF \
                       -DENABLE_CUBEB=OFF \
                       -DENABLE_OPENGL=OFF \
                       -DENABLE_WEB_SERVICE=OFF \
                       -DENABLE_LIBUSB=OFF \
                       -DYUZU_TESTS=OFF \
                       -DSUYU_RECOMPILER_CLI=OFF \
                       -DYUZU_USE_BUNDLED_FFMPEG=OFF \
                       -DUSE_DISCORD_PRESENCE=OFF \
                       -DBoost_FORCE_BUNDLED=ON \
                       -DVulkanHeaders_FORCE_BUNDLED=ON \
                       -DCPMUTIL_OFFLINE=ON"

# Built from a local copy of the v14.1.0 tag with its submodules (letmp/stretch/suyu-v14.1.0); the
# branch heads did not compile.
unpack() {
  mkdir -p ${PKG_BUILD}
  cp -a /home/chris/letmp/stretch/suyu-v14.1.0/. ${PKG_BUILD}/
}

# Profile-guided optimisation. profile.tar.xz holds the .gcda files of an instrumented build of this
# source and patch set, recorded on a box playing Tears of the Kingdom; record it again when either
# changes. Each file is named after its object's path in the build directory.
pre_configure_target() {
  local profile=${PKG_BUILD}/.profile
  mkdir -p ${profile}
  tar -xJf ${PKG_DIR}/profile.tar.xz -C ${profile}
  local pgo="-fprofile-use=${profile} -fprofile-prefix-path=${PKG_BUILD}/.${TARGET_NAME} \
             -fprofile-partial-training -fprofile-correction -Wno-missing-profile -Wno-coverage-mismatch"
  export CFLAGS+=" ${pgo}"
  export CXXFLAGS+=" ${pgo}"
}

make_target() {
  cmake --build . --target suyu_libretro
}

makeinstall_target() {
  mkdir -p ${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}
  cp $(find . -name ${PKG_LIBNAME} -type f | head -1) ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME}
  echo "set(${PKG_LIBVAR} ${SYSROOT_PREFIX}/usr/lib/${PKG_LIBNAME})" >${SYSROOT_PREFIX}/usr/lib/cmake/${PKG_NAME}/${PKG_NAME}-config.cmake
}
