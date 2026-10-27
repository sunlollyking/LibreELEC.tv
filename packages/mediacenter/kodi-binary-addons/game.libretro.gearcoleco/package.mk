# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.gearcoleco"
PKG_VERSION="1.6.11.42-Piers"
PKG_SHA256="e9bf6bff08415e66a9bb933dbbddbe51e09a2ea22c5a5835bfcd478533884411"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.gearcoleco"
PKG_URL="https://github.com/kodi-game/game.libretro.gearcoleco/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-gearcoleco"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.gearcoleco: Gearcoleco for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
