# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.quicknes"
PKG_VERSION="1.0.0.54-Omega"
PKG_SHA256="8cfad76b69d86c13efad85e25a7d415b3fff8f39057a74f26172b87652053870"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.quicknes"
PKG_URL="https://github.com/kodi-game/game.libretro.quicknes/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-quicknes"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.quicknes: QuickNES emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
