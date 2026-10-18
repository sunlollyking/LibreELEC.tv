# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.gambatte"
PKG_VERSION="0.5.0.72-Omega"
PKG_SHA256="e3074d392806008b2b57f643ecae23a4d5b2ed61e1ccf24589ba8ff4df4dea1f"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.gambatte"
PKG_URL="https://github.com/kodi-game/game.libretro.gambatte/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-gambatte"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.gambatte: Gambatte emulator for Kodi"
PKG_IS_ADDON="yes"

PKG_ADDON_TYPE="kodi.gameclient"
