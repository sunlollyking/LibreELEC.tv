# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.virtualjaguar"
PKG_VERSION="3.9.1.59-Omega"
PKG_SHA256="11348112bd8ba2e987b27d4cc88142e6f4854f8629b5c586920efeab739cdc73"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.virtualjaguar"
PKG_URL="https://github.com/kodi-game/game.libretro.virtualjaguar/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-virtualjaguar"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.virtualjaguar: VirtualJaguar for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
