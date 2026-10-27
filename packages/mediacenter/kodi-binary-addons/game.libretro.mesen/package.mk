# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mesen"
PKG_VERSION="0.9.9.47-Piers"
PKG_SHA256="479bed9c6afd9721e7b0466d4fcdda70feb756c51e4646c050300a352276ece3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.mesen"
PKG_URL="https://github.com/kodi-game/game.libretro.mesen/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mesen"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mesen: mesen for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
