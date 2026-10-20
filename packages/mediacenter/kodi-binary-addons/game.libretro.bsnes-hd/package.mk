# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bsnes-hd"
PKG_VERSION="10.6.0.19-Omega"
PKG_SHA256="8bb8e114ed65a69f187787c21f0449f03e247a88312710fe90885a0fa8d3e5a4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.bsnes-hd"
PKG_URL="https://github.com/kodi-game/game.libretro.bsnes-hd/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bsnes-hd"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bsnes-hd: bsnes fork that adds HD video features"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
