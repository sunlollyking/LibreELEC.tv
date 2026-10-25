# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mame2000"
PKG_VERSION="0.37.0.48-Piers"
PKG_SHA256="9a498add7b0dac8d5a2beded40ec09943288e11f7e67b75074346b9f58f50eb2"
PKG_REV="1"
PKG_LICENSE="LicenseRef-MAME"
PKG_SITE="https://github.com/kodi-game/game.libretro.mame2000"
PKG_URL="https://github.com/kodi-game/game.libretro.mame2000/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mame2000"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mame2000: MAME 2000 emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
