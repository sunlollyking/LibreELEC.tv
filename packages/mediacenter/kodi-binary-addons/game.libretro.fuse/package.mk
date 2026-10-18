# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.fuse"
PKG_VERSION="1.6.0.48-Omega"
PKG_SHA256="bb9a17c29fb457dab1422eb7cef2dbd59b2f57011c9f000f5fd7c3a3cf1cc0ea"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.fuse"
PKG_URL="https://github.com/kodi-game/game.libretro.fuse/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-fuse"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.fuse: fuse for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
