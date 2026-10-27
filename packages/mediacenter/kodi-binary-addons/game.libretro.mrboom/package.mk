# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.mrboom"
PKG_VERSION="5.5.0.170-Piers"
PKG_SHA256="efb2d8b5a6907494422db16f32fc0b75a2d7c2800ee6de2188cc8ed91b1ffa60"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/kodi-game/game.libretro.mrboom"
PKG_URL="https://github.com/kodi-game/game.libretro.mrboom/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-mrboom"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.mrboom: mrboom for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
