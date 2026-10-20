# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.2048"
PKG_VERSION="1.0.0.156-Omega"
PKG_SHA256="35ceb425634a8e29503db17a752b9e72fc9350f6cec465a997ca63b650bd63b0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Unlicense"
PKG_SITE="https://github.com/kodi-game/game.libretro.2048"
PKG_URL="https://github.com/kodi-game/game.libretro.2048/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-2048"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.2048: 2048 for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
