# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.cannonball"
PKG_VERSION="0.0.1.44-Piers"
PKG_SHA256="26459c26f651408716da89782421c9b09d590a3ed2b9651ffb9a69a213d07d84"
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
