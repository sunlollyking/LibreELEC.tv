# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.flycast"
PKG_VERSION="0fd55285a0a695b46f71bdb5b8236bcb949c0870"
PKG_SHA256="dec940d1b263ad63c23bd275c0de2420e1272863939f64b017f783698e402557"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/sunlollyking/game.libretro.flycast"
PKG_URL="https://github.com/sunlollyking/game.libretro.flycast/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-flycast"
PKG_DEPENDS_UNPACK="libretro-flycast"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.flycast: Flycast for Kodi"

# Keep symbols: this core runs unthrottled and silent with correct timing
# declared, and the reason is somewhere inside it.
PKG_BUILD_FLAGS="-strip"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"

post_unpack() {
  # The Dreamcast pad is declared RETRO_DEVICE_ANALOG here, but Flycast only
  # advertises RETRO_DEVICE_JOYPAD, so retro_set_controller_port_device() is
  # handed a device the core does not know and no input reaches the game.
  # Fixed upstream in sunlollyking/game.libretro.flycast#9, but no tag has been
  # cut since, and taking master instead brings a settings.xml the core we
  # build no longer matches ("Unknown setting ID: reicast_cpu_mode"), which
  # looked like it cost us audio. So patch the one line and leave the rest of
  # the tag alone.
  sed -i 's|<controller id="game.controller.dreamcast" type="RETRO_DEVICE_ANALOG">|<controller id="game.controller.dreamcast" type="RETRO_DEVICE_JOYPAD">|' \
    "${PKG_BUILD}/game.libretro.flycast/resources/buttonmap.xml"
}
