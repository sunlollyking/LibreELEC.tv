# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-bsnes"
PKG_VERSION="0.9.26.40-Piers"
PKG_SHA256="6a5a3556b7a71486d36d0833a71a570ef17c3f128acccef321dbae3d0b9adebe"
PKG_REV="1"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-bsnes"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-bsnes/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-bsnes"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-bsnes: Beetle bSNES for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
