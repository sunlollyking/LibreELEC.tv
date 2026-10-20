# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.uae2021"
PKG_VERSION="2.6.1.12-Omega"
PKG_SHA256="e6fda6efbcb9d4af7a8d1e439b37ca7e36ea1ab220a4e1931a6d2ccd558dffdd"
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
