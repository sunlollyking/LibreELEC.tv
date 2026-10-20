# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.vice_x128"
PKG_VERSION="3.10.0.41-Omega"
PKG_SHA256="8bce2938df032983a88c135ded271cb4410d36664c7c24fb4a2fc6a4b35e2cdf"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.vice_x128"
PKG_URL="https://github.com/kodi-game/game.libretro.vice_x128/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-vice_x128"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.vice_x128: vice (x128) emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
