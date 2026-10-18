# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.freeintv"
PKG_VERSION="1.2.0.41-Omega"
PKG_SHA256="319eaf9636f497b8058f8da64adc9613dab2e7d99cfa69d42b1d7cca61f48b22"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.freeintv"
PKG_URL="https://github.com/kodi-game/game.libretro.freeintv/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-freeintv"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.freeintv: FreeIntv for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
