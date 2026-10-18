# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mame2010"
PKG_VERSION="0.139.0.38-Omega"
PKG_SHA256="2572afd01854ae95d5cdaa847816b1847addeef22b166765cded6b6d237cfe1b"
PKG_REV="1"
PKG_LICENSE="LicenseRef-MAME"
PKG_SITE="https://github.com/kodi-game/game.libretro.mame2010"
PKG_URL="https://github.com/kodi-game/game.libretro.mame2010/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mame2010"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mame2010: MAME emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
