# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro"
PKG_VERSION="4985b84fcaf17955a1666491eb26999620f109c4"
PKG_SHA256="5ace342855e162f44a7dc5e5b55413de274b5c86707a5178ee6e296c07e3021f"
PKG_REV="16"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro"
PKG_URL="https://github.com/kodi-game/game.libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml tinyxml ${MEDIACENTER}:host libretro-common rcheevos"
PKG_SECTION=""
PKG_LONGDESC="game.libretro is a thin wrapper for libretro"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
