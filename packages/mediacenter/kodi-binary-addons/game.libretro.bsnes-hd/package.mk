# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bsnes-hd"
PKG_VERSION="10.6.0.20-Piers"
PKG_SHA256="389fe49e43d802ed0374e50af7ce66c1bd96e4ac4b37758c950dc90e66beb463"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.bsnes-hd"
PKG_URL="https://github.com/kodi-game/game.libretro.bsnes-hd/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bsnes-hd"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bsnes-hd: bsnes fork that adds HD video features"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
