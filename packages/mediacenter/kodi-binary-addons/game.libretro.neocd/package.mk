# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.neocd"
PKG_VERSION="2022.0.0.34-Omega"
PKG_SHA256="e2f5e7fe07d6a3299366d75476f27746eaa3a16f8abf2656d90e6db1f2e506bc"
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
