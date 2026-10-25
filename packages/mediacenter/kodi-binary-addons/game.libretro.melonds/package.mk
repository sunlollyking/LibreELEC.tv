# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.melonds"
PKG_VERSION="0.9.3.51-Piers"
PKG_SHA256="8ac5bb47a15ebf621e4d52bd9d1f333fcd1f0c874fd4399a9f8e39a0d0795d8a"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.melonds"
PKG_URL="https://github.com/kodi-game/game.libretro.melonds/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-melonds"
PKG_DEPENDS_UNPACK="libretro-melonds"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.melonds: melonDS for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
