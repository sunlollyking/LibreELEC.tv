# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.picodrive"
PKG_VERSION="2.05.0.63-Omega"
PKG_SHA256="8e5bd8f2c8112ee17abca748ee1d2f659c8a4a0876a1cddf59057e71d447717d"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-MAME"
PKG_SITE="https://github.com/kodi-game/game.libretro.picodrive"
PKG_URL="https://github.com/kodi-game/game.libretro.picodrive/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-picodrive"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.picodrive: picodrive for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
