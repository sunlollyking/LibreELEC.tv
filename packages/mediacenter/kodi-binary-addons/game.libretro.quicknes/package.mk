# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.quicknes"
PKG_VERSION="1.0.0.55-Piers"
PKG_SHA256="ecc2643aba7f10f6adbe569a505177e114e2062deee2ca1ac93601babb0cd79b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.quicknes"
PKG_URL="https://github.com/kodi-game/game.libretro.quicknes/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-quicknes"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.quicknes: QuickNES emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
