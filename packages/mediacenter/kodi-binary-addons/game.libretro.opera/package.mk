# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.opera"
PKG_VERSION="1.0.0.60-Omega"
PKG_SHA256="13fb5064f5021cd43098042185e0baca028d8e622f1afe2b7802dfb024d2f69e"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-FreeDO"
PKG_SITE="https://github.com/kodi-game/game.libretro.opera"
PKG_URL="https://github.com/kodi-game/game.libretro.opera/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-opera"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.opera: Port of 4DO/libfreedo for Kodi."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
