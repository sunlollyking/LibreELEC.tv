# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-saturn"
PKG_VERSION="1.32.1.63-Omega"
PKG_SHA256="3e3ee4fa1640247473e4a6b8c82f81cffd28791909371be7359da5b16691829f"
PKG_REV="1"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-saturn"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-saturn/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-saturn"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-saturn: Beetle saturn for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
