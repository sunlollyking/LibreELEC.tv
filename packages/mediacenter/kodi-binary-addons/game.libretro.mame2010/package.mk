# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mame2010"
PKG_VERSION="0.139.0.39-Piers"
PKG_SHA256="9aa32d1eb3929395a72b9f7a925ce07dbd9758f8daae78265e5eeed6c4d14217"
PKG_REV="1"
PKG_LICENSE="LicenseRef-MAME"
PKG_SITE="https://github.com/kodi-game/game.libretro.mame2010"
PKG_URL="https://github.com/kodi-game/game.libretro.mame2010/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mame2010"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mame2010: MAME emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
