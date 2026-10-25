# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.fbneo"
PKG_VERSION="1.0.0.106-Piers"
PKG_SHA256="b587cd550224d7074cace6b741147b85c7330f2ea91b23b9427f23070854b69e"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.fbneo"
PKG_URL="https://github.com/kodi-game/game.libretro.fbneo/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-fbneo"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.fbneo: FinalBurn Neo GameClient for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
