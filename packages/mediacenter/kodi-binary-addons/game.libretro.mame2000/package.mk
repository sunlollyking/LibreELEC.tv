# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mame2000"
PKG_VERSION="0.37.0.47-Omega"
PKG_SHA256="1cd708457c193608cb32805f1d696120f7cb62209c6f5bc827b62ecb0302565d"
PKG_REV="1"
PKG_LICENSE="LicenseRef-MAME"
PKG_SITE="https://github.com/kodi-game/game.libretro.mame2000"
PKG_URL="https://github.com/kodi-game/game.libretro.mame2000/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mame2000"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mame2000: MAME 2000 emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
