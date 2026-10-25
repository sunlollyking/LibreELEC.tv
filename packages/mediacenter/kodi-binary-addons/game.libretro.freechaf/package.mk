# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.freechaf"
PKG_VERSION="1.0.0.38-Piers"
PKG_SHA256="992fab01f5ac4c6159faa41911f419b1dea1f0549351e98daf5c064b1158ead6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.freechaf"
PKG_URL="https://github.com/kodi-game/game.libretro.freechaf/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-freechaf"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.freechaf: FreeChaF for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
