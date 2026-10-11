# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.flycast"
PKG_VERSION="0.1.0.65-Omega"
PKG_SHA256="7ec8fc9ab576d0f623863b47666076057ac33ccb7fd5967b02ad1ee618a05754"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.flycast"
PKG_URL="https://github.com/kodi-game/game.libretro.flycast/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-flycast"
PKG_DEPENDS_UNPACK="libretro-flycast"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.flycast: Flycast for Kodi"

# Keep symbols: this core runs unthrottled and silent with correct timing
# declared, and the reason is somewhere inside it.
PKG_BUILD_FLAGS="-strip"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
