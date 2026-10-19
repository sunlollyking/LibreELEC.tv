# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.fmsx"
PKG_VERSION="6.0.0.51-Omega"
PKG_SHA256="8292b22079a169059e24c3b4f992921b9beffc8cb90fb0dd35ec14306f3626d6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.fmsx"
PKG_URL="https://github.com/kodi-game/game.libretro.fmsx/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-fmsx"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.fmsx: fmsx for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
