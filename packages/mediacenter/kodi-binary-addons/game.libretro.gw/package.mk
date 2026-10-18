# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.gw"
PKG_VERSION="1.6.3.39-Omega"
PKG_SHA256="ced2a138ea22a539ddada12ba82162e5cb790145d2e467d1ccd3b7c4496a3933"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Zlib"
PKG_SITE="https://github.com/kodi-game/game.libretro.gw"
PKG_URL="https://github.com/kodi-game/game.libretro.gw/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-gw"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.gw: gw for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
