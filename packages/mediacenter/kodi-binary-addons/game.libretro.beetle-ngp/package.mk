# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-ngp"
PKG_VERSION="1.29.0.47-Omega"
PKG_SHA256="0dc577602e37066ae405372f68db558556bf4d1e062ee2503fd3d95194375f2c"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-ngp"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-ngp/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-ngp"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-ngp: Beetle ngp for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
