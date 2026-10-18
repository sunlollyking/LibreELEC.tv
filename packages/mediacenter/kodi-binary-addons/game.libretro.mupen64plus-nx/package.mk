# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2025-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mupen64plus-nx"
PKG_VERSION="2.8.0.68-Omega"
PKG_SHA256="92f06711b0fa35820e2f844e67d4fea4c932ebe69101c33c88923a932c713350"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.mupen64plus-nx"
PKG_URL="https://github.com/kodi-game/game.libretro.mupen64plus-nx/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mupen64plus-nx"
PKG_DEPENDS_UNPACK="libretro-mupen64plus-nx"
PKG_SECTION=""
PKG_LONGDESC="Mupen64Plus-Next is N64 emulation library for the libretro API, based on Mupen64Plus"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
