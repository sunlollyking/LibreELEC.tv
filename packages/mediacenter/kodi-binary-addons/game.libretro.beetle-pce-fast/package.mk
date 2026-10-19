# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-pce-fast"
PKG_VERSION="1.31.0.69-Omega"
PKG_SHA256="73e2cd642240b9ce004e2cb1742a389a195474d59ef48defe7f35faa64f46407"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-pce-fast"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-pce-fast/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-pce-fast"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-pce-fast: Beetle PCE Fast for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
