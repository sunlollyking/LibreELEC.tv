# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-psx"
PKG_VERSION="0.9.44.95-Omega"
PKG_SHA256="fe5855609f7e2b0d65a17d3d24fc15089656fdf59d38447194fdca2297f4e76e"
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
