# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.beetle-lynx"
PKG_VERSION="1.24.0.62-Omega"
PKG_SHA256="15ad3108e2bda481d05a316fe7c03cea6da37f7e057b26172674f4bab0c06b70"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.beetle-lynx"
PKG_URL="https://github.com/kodi-game/game.libretro.beetle-lynx/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-beetle-lynx"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.beetle-lynx: Beetle lynx for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
