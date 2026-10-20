# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.vice_xvic"
PKG_VERSION="3.10.0.45-Omega"
PKG_SHA256="9080199465e88e4d833b8de0b73b572c34f59502738af711b7f8fc62d1fdecf0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.vice_xvic"
PKG_URL="https://github.com/kodi-game/game.libretro.vice_xvic/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-vice_xvic"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.vice_xvic: vice (xvic) emulator for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
