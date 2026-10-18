# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.vice_xplus4"
PKG_VERSION="3.10.0.45-Omega"
PKG_SHA256="8447672ff9ecee1fa41d5500efbbae63b0bdf945dff76d1c5e0a1549982c2b3a"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.vice_xplus4"
PKG_URL="https://github.com/kodi-game/game.libretro.vice_xplus4/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-vice_xplus4"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.vice_xplus4: vice (xplus4) emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
