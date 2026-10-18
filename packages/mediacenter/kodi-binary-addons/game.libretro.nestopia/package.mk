# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.nestopia"
PKG_VERSION="2.0.0.67-Omega"
PKG_SHA256="89031d0a06b03ba8b0188f56ee1e39ec1f7be52502828373913bcd6a71749cdb"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.nestopia"
PKG_URL="https://github.com/kodi-game/game.libretro.nestopia/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-nestopia"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.nestopia: Nestopia emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
