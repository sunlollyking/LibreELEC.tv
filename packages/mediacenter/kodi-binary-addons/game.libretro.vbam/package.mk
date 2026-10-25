# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.vbam"
PKG_VERSION="2.2.3.77-Piers"
PKG_SHA256="cb080f4870583fb28428c96271bafdae4c32d92e6c1c9b967cf8bd9878809da0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.vbam"
PKG_URL="https://github.com/kodi-game/game.libretro.vbam/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-vbam"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.vbam: VBA-M emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
