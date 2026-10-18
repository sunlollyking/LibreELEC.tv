# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2024-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.swanstation"
PKG_VERSION="1.0.0.42-Omega"
PKG_SHA256="29c9f1effad9b70218885790ed710fbb62c68ca7989b7453ad2ffd1407ee5e28"
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
