# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.dinothawr"
PKG_VERSION="1.0.0.49-Omega"
PKG_SHA256="ffff2490b4bd337a876c03c4a4d71b7f051874f80618e9a95082e95db0d16254"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.dinothawr"
PKG_URL="https://github.com/kodi-game/game.libretro.dinothawr/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-dinothawr"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.dinothawr: dinothawr for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
