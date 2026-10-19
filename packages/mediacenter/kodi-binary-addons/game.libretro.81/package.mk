# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.81"
PKG_VERSION="1.0.0.36-Omega"
PKG_SHA256="2c6a8ffc61d074d50d06afb1f226b81cd9d285e3e0abae5acdde84eb3b12b82d"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.81"
PKG_URL="https://github.com/kodi-game/game.libretro.81/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-81"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.81: 81 for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
