# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.a5200"
PKG_VERSION="2.0.2.27-Omega"
PKG_SHA256="4b767f11af7bb60b8f7a4613f5b19f5135a8b6633c1a4ec8a7ac2f34ea963556"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.a5200"
PKG_URL="https://github.com/kodi-game/game.libretro.a5200/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-a5200"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.a5200: a5200 for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
