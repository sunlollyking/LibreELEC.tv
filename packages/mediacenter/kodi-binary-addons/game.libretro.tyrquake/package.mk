# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.tyrquake"
PKG_VERSION="0.62.0.61-Omega"
PKG_SHA256="74477ea2e2f67eb9b34ccdf000ccfff601c2f959b97401c06334f3a57a11ebe4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.tyrquake"
PKG_URL="https://github.com/kodi-game/game.libretro.tyrquake/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-tyrquake"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.tyrquake: tyrquake for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
