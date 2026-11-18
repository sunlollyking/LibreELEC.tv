# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-saturn"
PKG_VERSION="1.32.1.66-Piers"
PKG_SHA256="47797668170201534aaa4be2bec2c3e2f5b4b9eff436f402fc43736a42702e16"
PKG_REV="1"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-saturn"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-saturn/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-saturn"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-saturn: Beetle saturn for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
