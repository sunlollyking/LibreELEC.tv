# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.supafaust"
PKG_VERSION="1.29.0.47-Piers"
PKG_SHA256="ba2ce81fab1d9ccf47b175cd66a54d9c3dbea12f0cf090e4915341f9e4929de9"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.supafaust"
PKG_URL="https://github.com/kodi-game/game.libretro.supafaust/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-supafaust"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.supafaust: Beetle supafaust for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
