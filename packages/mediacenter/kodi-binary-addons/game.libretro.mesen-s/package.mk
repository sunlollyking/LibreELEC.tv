# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mesen-s"
PKG_VERSION="0.4.0.28-Piers"
PKG_SHA256="66d1294eeb8cd2e485dd4bdff8736bfb9114936ce7efd61d82bb64d33ce97918"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.mesen-s"
PKG_URL="https://github.com/kodi-game/game.libretro.mesen-s/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mesen-s"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mesen-s: mesen-s for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
