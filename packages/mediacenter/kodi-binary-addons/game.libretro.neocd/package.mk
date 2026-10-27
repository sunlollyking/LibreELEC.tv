# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.neocd"
PKG_VERSION="2022.0.0.35-Piers"
PKG_SHA256="0736fecdbc20ca0a54a98f1af5229915db7a8c595ded7a8a71b86ba4acd89912"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-3.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.neocd"
PKG_URL="https://github.com/kodi-game/game.libretro.neocd/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-neocd"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.neocd: NeoCD for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
