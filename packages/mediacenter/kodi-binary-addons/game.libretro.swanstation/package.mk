# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2024-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.swanstation"
PKG_VERSION="1.0.0.43-Piers"
PKG_SHA256="e0bc16cd2fa51d4cd1c41fc631d45e626cb504012992169646e71fd05cba735d"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.swanstation"
PKG_URL="https://github.com/kodi-game/game.libretro.swanstation/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-swanstation"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.swanstation: SwanStation for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
