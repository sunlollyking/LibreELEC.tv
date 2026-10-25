# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.hatari"
PKG_VERSION="2.6.1.50-Piers"
PKG_SHA256="f7b8134e8c199542031d1d067ac91acbcdf2d5c56a2de44b892e32a57592abcc"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.hatari"
PKG_URL="https://github.com/kodi-game/game.libretro.hatari/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-hatari"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.hatari: hatari for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
