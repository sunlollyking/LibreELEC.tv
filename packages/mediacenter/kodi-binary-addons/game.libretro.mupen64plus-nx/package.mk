# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2025-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mupen64plus-nx"
PKG_VERSION="3.0.0.70-Piers"
PKG_SHA256="a8b81f06d01138bf02099b997f3d439e87f98b3eda06936a92b93c13edee5dea"
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
