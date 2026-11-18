# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mame2003_plus"
PKG_VERSION="0.0.1.110-Piers"
PKG_SHA256="bed2a36f9f38edf8c68a14c0680fb87140eabde4bc0d7e225aba2c4cd51ca038"
PKG_REV="1"
PKG_LICENSE="LicenseRef-MAME"
PKG_SITE="https://github.com/kodi-game/game.libretro.mame2003_plus"
PKG_URL="https://github.com/kodi-game/game.libretro.mame2003_plus/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mame2003_plus"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mame2003_plus: MAME 2003 Plus emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
