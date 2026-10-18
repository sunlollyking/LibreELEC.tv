# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.px68k"
PKG_VERSION="0.15.0.41-Omega"
PKG_SHA256="08ab4a1cb3314e2916fa694b2cc1e7ee65e6115e249ab2e88e6b8330d7f9f838"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.px68k"
PKG_URL="https://github.com/kodi-game/game.libretro.px68k/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-px68k"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.px68k: PX68k for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
