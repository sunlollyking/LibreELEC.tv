# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-pce"
PKG_VERSION="1.29.0.38-Omega"
PKG_SHA256="6ba88a8e58de54903934d396ddcbc7d434dd038a0a91cbeaa7223b5de2b8746f"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-pce"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-pce/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-pce"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-pce: Beetle PCE Fast for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
