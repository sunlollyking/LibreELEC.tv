# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.snes9x2010"
PKG_VERSION="1.52.4.59-Piers"
PKG_SHA256="7441b27f4b65e990b58ff389c718f38bf438a7f0b4d7a1374e50c3e3e1c6b9f6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.snes9x2010"
PKG_URL="https://github.com/kodi-game/game.libretro.snes9x2010/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-snes9x2010"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.snes9x2010: snes9x2010 for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
