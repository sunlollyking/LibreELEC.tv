# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.vbam"
PKG_VERSION="2.2.3.82-Piers"
PKG_SHA256="168c5299faa37684ab4692578bace9180157154d007e987f68b2189136c89559"
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
