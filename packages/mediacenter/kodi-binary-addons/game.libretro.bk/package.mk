# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bk"
PKG_VERSION="1.0.0.38-Omega"
PKG_SHA256="4051dff70e974985112490853dcf9829da4480361c1fc665eb221cb5aaeb7459"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.bk"
PKG_URL="https://github.com/kodi-game/game.libretro.bk/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bk"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bk: bk for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
