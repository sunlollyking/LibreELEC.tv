# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-psx"
PKG_VERSION="0.9.44.94-Omega"
PKG_SHA256="77ef39d851a2c9f793666c261058908ee93c072e9a865ee9878252e7de59160e"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-psx"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-psx/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-psx"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-psx: Beetle PSX for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
