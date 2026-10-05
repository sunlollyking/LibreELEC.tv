# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro"
PKG_VERSION="f0f868d7e917d121e7a0f636e264e8c337620907"
PKG_SHA256="d5211e17ee8b2f447ca0139edfd36c6e012af7438f0ebe195bd1bc2d30b13bc7"
PKG_REV="17"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro"
PKG_URL="https://github.com/sunlollyking/game.libretro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml tinyxml ${MEDIACENTER}:host libretro-common rcheevos"
PKG_SECTION=""
PKG_LONGDESC="game.libretro is a thin wrapper for libretro"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
