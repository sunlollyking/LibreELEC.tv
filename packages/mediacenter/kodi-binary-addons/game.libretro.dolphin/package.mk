# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.dolphin"
PKG_VERSION="9327b50b65b1e033d849b1967e6b80f896887e3c"
PKG_SHA256="906bab1070b8d549901bf505fb5979e590c7681ac453a9ada360c6f47ccb73a8"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.dolphin"
PKG_URL="https://github.com/kodi-game/game.libretro.dolphin/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-dolphin"
PKG_DEPENDS_UNPACK="libretro-dolphin"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.dolphin: Dolphin for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
