# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.o2em"
PKG_VERSION="1.18.0.58-Omega"
PKG_SHA256="a9c58303f30109bc1daf81b5c8299d9a5c9b3cf132170701cef6e39aa9060085"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Artistic-2.0"
PKG_SITE="https://github.com/kodi-game/game.libretro.o2em"
PKG_URL="https://github.com/kodi-game/game.libretro.o2em/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-o2em"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.o2em: o2em for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
