# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-wswan"
PKG_VERSION="0.9.35.56-Omega"
PKG_SHA256="917cb9771e8f5f866980baca43befb21a8e04b371bfeb2e5934c00c9812ee24b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-wswan"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-wswan/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-wswan"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-wswan: Beetle wswan for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
