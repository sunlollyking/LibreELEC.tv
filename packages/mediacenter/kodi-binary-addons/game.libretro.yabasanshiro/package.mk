# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.yabasanshiro"
PKG_VERSION="3.4.2.13-Omega"
PKG_SHA256="36a8ac8a7c7da29996280947fc6aff466bc4abcfd49d9191db08fa78ef69b81d"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.yabasanshiro"
PKG_URL="https://github.com/kodi-game/game.libretro.yabasanshiro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-yabasanshiro"
PKG_DEPENDS_UNPACK="libretro-yabasanshiro"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.yabasanshiro: Yaba Sanshiro for Kodi"

# Keep symbols: these cores crash inside themselves and the backtraces are
# bare addresses without them. Same optimised code, symbol table retained.
PKG_BUILD_FLAGS="-strip"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
