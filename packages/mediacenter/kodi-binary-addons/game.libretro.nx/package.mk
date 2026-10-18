# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.nx"
PKG_VERSION="1.0.0.49-Omega"
PKG_SHA256="ed1330289e4552282b2680dff0bf86fb164848a8677af5d8f297cc2de0ffb35b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.nx"
PKG_URL="https://github.com/kodi-game/game.libretro.nx/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-nx"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.nx: nx for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
