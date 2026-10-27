# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.nx"
PKG_VERSION="1.0.0.50-Piers"
PKG_SHA256="00476efb44d0af5906bc963d9a0306b0942b06021236e179eb34b8b7182dfed0"
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
