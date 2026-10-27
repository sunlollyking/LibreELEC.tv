# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.quasi88"
PKG_VERSION="0.6.4.45-Piers"
PKG_SHA256="09a925649eb50fe7c4362d7dbe5e1267853d2ca3fca19183781592f712d2aaca"
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
