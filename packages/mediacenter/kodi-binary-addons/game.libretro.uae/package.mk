# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.uae"
PKG_VERSION="5.3.1.104-Omega"
PKG_SHA256="361ab36661f85bb98f7c8a0dde8ff43a25fec8e26d01e53289390a60eeb1bc54"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.uae"
PKG_URL="https://github.com/kodi-game/game.libretro.uae/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-uae"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.uae: uae emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
