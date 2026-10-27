# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bsnes-mercury-performance"
PKG_VERSION="0.94.0.45-Piers"
PKG_SHA256="e18278e2d142de57fec67c25f8ae997e9bffffa4cc7f72b5c7fc21169fa70847"
PKG_REV="1"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.bsnes-mercury-performance"
PKG_URL="https://github.com/kodi-game/game.libretro.bsnes-mercury-performance/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bsnes-mercury-performance"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bsnes-mercury-performance: bSNES Mercury for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
