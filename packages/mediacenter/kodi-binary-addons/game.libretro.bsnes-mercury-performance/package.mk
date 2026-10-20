# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bsnes-mercury-performance"
PKG_VERSION="0.94.0.44-Omega"
PKG_SHA256="dc9fff58d761b29b17fc89a4745ae3f3cc68d382a56084d3aab3ca79cfa3cf58"
PKG_REV="1"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.bsnes-mercury-performance"
PKG_URL="https://github.com/kodi-game/game.libretro.bsnes-mercury-performance/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bsnes-mercury-performance"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bsnes-mercury-performance: bSNES Mercury for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
