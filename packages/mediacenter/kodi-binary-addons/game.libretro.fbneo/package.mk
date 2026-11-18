# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.fbneo"
PKG_VERSION="1.0.0.111-Piers"
PKG_SHA256="08eadeaf583590239e323c6b245a5144aee950f8b6cc23aa09dc094446a4d1be"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LicenseRef-Non-commercial"
PKG_SITE="https://github.com/kodi-game/game.libretro.fbneo"
PKG_URL="https://github.com/kodi-game/game.libretro.fbneo/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-fbneo"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.fbneo: FinalBurn Neo GameClient for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"
