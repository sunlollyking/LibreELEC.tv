# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.quasi88"
PKG_VERSION="0.6.4.44-Omega"
PKG_SHA256="84fc4ff4eb8274b7bd913da916d0075ce59acf281be93cd6c00330e1b2a3f731"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.quasi88"
PKG_URL="https://github.com/kodi-game/game.libretro.quasi88/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-quasi88"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.quasi88: QUASI88 for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
