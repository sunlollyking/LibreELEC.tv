# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="peripheral.joystick"
PKG_VERSION="6e1de18cca12c22721c53c86f8db6cebd6a49284"
PKG_SHA256="93b101bdc36ea62ccf9160ee7a4ed1f91ed58ad4bffdeb3c3e89cf3b05eac0bc"
PKG_REV="2"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/sunlollyking/peripheral.joystick"
PKG_URL="https://github.com/sunlollyking/peripheral.joystick/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host systemd tinyxml2"
PKG_SECTION=""
PKG_SHORTDESC="peripheral.joystick: Joystick support in Kodi"
PKG_LONGDESC="peripheral.joystick provides joystick support and button mapping"
PKG_BUILD_FLAGS="+lto"

PKG_IS_ADDON="embedded"
PKG_ADDON_TYPE="kodi.peripheral"
