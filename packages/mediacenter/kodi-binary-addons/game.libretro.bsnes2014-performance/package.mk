# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bsnes2014-performance"
PKG_VERSION="0.94.0.29-Omega"
PKG_SHA256="f7c57707df9b36fedd6f7a149df83dc4fcd5b8ec52c93624792efd3f4b987156"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.bsnes2014-performance"
PKG_URL="https://github.com/kodi-game/game.libretro.bsnes2014-performance/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bsnes2014-performance"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bsnes2014-performance: bSNES 2014 for Kodi (performance profile)"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
