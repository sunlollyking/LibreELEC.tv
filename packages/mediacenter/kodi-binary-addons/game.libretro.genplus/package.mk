# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.genplus"
PKG_VERSION="1.7.4.85-Omega"
PKG_SHA256="97f9eee29fe67d41b55b1995c529a2ebf2b3bd7469b8396921fa3f7aa5097a44"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.genplus"
PKG_URL="https://github.com/kodi-game/game.libretro.genplus/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-genplus"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.genplus: Genesis Plus GX emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
