# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-ngp"
PKG_VERSION="1.29.0.49-Piers"
PKG_SHA256="b16bee5c4e3fde27beef85704525b42364a6e64896595f883dea6bec5fa1d521"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-ngp"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-ngp/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-ngp"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-ngp: Beetle ngp for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
