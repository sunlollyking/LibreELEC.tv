# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.bluemsx"
PKG_VERSION="0.0.1.56-Omega"
PKG_SHA256="e81047e300b7fd47d5c035b11b2443eed883fe2c8b251f5d9f613a921f2fae3b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.bluemsx"
PKG_URL="https://github.com/kodi-game/game.libretro.bluemsx/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-bluemsx"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.bluemsx: BlueMSX for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
