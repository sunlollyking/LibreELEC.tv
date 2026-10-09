# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="peripheral.joystick"
PKG_VERSION="34ecb90a85c3d221625f70ba4ad694c6b5ce6df9"
PKG_SHA256="117fc964bebf3d898183c7f6fdba7be9d41ba1012e3e976060ab61f1ad85f291"
PKG_REV="1"
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
