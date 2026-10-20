# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.vice_x64"
PKG_VERSION="3.10.0.79-Omega"
PKG_SHA256="f4b052c3abaa427c0cbfc997c2c67baea55c44052966ba34fc788a4065d9b120"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.vice_x64"
PKG_URL="https://github.com/kodi-game/game.libretro.vice_x64/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-vice_x64"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.vice_x64: vice (x64) emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
