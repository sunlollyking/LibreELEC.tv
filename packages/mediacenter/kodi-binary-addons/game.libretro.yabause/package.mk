# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.yabause"
PKG_VERSION="0.9.15.79-Omega"
PKG_SHA256="6435f98639746c8bdde8ce81629d4fcf0c3701d4a4005eadd31c887a04bfe358"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.yabause"
PKG_URL="https://github.com/kodi-game/game.libretro.yabause/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-yabause"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.yabause: Yabause emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
