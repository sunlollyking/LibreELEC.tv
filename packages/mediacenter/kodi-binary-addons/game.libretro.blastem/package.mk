# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.blastem"
PKG_VERSION="0.6.3.41-Omega"
PKG_SHA256="19cd9763af0175657adfdcd31737c8de38eeac78a67cfaf9c44c6b032a68b327"
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
