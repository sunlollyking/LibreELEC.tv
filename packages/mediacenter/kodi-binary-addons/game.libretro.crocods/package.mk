# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.crocods"
PKG_VERSION="0.0.1.36-Omega"
PKG_SHA256="264af34c89696e0d34632af9fce3f1cb04789f07c7fd384e00e1ee3199ea722a"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/kodi-game/game.libretro.crocods"
PKG_URL="https://github.com/kodi-game/game.libretro.crocods/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-crocods"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.crocods: CrocoDS for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
