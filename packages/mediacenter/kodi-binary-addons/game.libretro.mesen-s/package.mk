# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mesen-s"
PKG_VERSION="0.4.0.27-Omega"
PKG_SHA256="0957de820402cdda9f70e6857b4a2983a07a95122c1d140e00ca9660855f96f8"
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
