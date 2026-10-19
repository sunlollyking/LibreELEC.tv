# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.blastem"
PKG_VERSION="1.0.1.42-Omega"
PKG_SHA256="c743e74c28e03ed1eec2395c90772ed829c54e0154e27af4397df11917eaf19c"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.blastem"
PKG_URL="https://github.com/kodi-game/game.libretro.blastem/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-blastem"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.blastem: blastem for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
