# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.freeintv"
PKG_VERSION="1.2.0.42-Piers"
PKG_SHA256="77eb262769c3e101a68e469a2cab584759bcd0ad6951ec9db79f754033443154"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.freeintv"
PKG_URL="https://github.com/kodi-game/game.libretro.freeintv/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-freeintv"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.freeintv: FreeIntv for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
