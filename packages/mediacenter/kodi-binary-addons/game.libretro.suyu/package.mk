# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.suyu"
PKG_VERSION="0.1.4"
PKG_REV="13"
PKG_ARCH="any"
PKG_LICENSE="GPL-3.0-or-later"
PKG_SITE="https://github.com/suyu-emu/suyu-main"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-suyu"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.suyu: suyu for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
