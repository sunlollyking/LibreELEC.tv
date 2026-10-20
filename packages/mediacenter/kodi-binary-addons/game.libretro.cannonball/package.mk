# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.cannonball"
PKG_VERSION="0.0.1.43-Omega"
PKG_SHA256="e0a622082b4ad43fb3f5afdac91109362c9f3438ec4bad53f6b526f2c88d55c1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.cannonball"
PKG_URL="https://github.com/kodi-game/game.libretro.cannonball/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-cannonball"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.cannonball: Cannonball: An Enhanced OutRun Engine for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
