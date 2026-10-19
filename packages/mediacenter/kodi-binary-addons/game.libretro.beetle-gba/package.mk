# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-gba"
PKG_VERSION="0.9.36.39-Omega"
PKG_SHA256="78d2f724e45485f110cfde2b32dac8c2c967f16bc69ffd1ddf7cc384ee37eaad"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-gba"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-gba/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-gba"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-gba: Beetle GBA for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
