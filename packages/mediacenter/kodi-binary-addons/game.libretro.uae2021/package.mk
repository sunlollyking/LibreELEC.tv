# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.uae2021"
PKG_VERSION="2.6.1.11-Omega"
PKG_SHA256="779bfb43563f47f59a5463ee541978a7b958f27304d3b910a26498d87cc43785"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-only"
PKG_SITE="https://github.com/kodi-game/game.libretro.uae2021"
PKG_URL="https://github.com/kodi-game/game.libretro.uae2021/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-uae2021"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.uae2021: uae emulator for Kodi (2021 version)"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
