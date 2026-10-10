# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro"
PKG_VERSION="4110fd024150b9645aa5b96569aa691b94994b9e"
PKG_SHA256="8d10694e31482f6e0e195e4164162f444c8164b9797f4a8ea4aa449b5db2e395"
PKG_REV="3"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro"
PKG_URL="https://github.com/sunlollyking/game.libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml tinyxml ${MEDIACENTER}:host libretro-common rcheevos"
PKG_SECTION=""
PKG_LONGDESC="game.libretro is a thin wrapper for libretro"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
