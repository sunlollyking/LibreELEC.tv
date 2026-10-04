# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.dolphin"
PKG_VERSION="bb34f3676b14406425392d6096b3557136b1b356"
PKG_SHA256="201f55b08b974d4f2dde39502dd209540f23503e2900c63b07a9d83408824c67"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.dolphin"
PKG_URL="https://github.com/sunlollyking/game.libretro.dolphin/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-dolphin"
PKG_DEPENDS_UNPACK="libretro-dolphin"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.dolphin: Dolphin for Kodi"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"

post_unpack() {
  # Local addition pending kodi-game/game.libretro.dolphin#8. The add-on ships
  # no controller files at all, so Kodi logs
  #   Could not locate controller topology "topology.xml"
  # and nothing on the pad does anything. Mapping follows the core's own input
  # descriptors: Z is JOYPAD_R, the triggers are L2/R2, and the control and C
  # sticks are the left and right analog indices.
  local res="${PKG_BUILD}/game.libretro.dolphin/resources"
  mkdir -p "${res}"

  cat > "${res}/topology.xml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<logicaltopology>
  <port type="controller" id="1">
    <accepts controller="game.controller.gamecube"/>
  </port>
  <port type="controller" id="2">
    <accepts controller="game.controller.gamecube"/>
  </port>
  <port type="controller" id="3">
    <accepts controller="game.controller.gamecube"/>
  </port>
  <port type="controller" id="4">
    <accepts controller="game.controller.gamecube"/>
  </port>
</logicaltopology>
EOF

  cat > "${res}/buttonmap.xml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<buttonmap version="2">
	<controller id="game.controller.gamecube" type="RETRO_DEVICE_JOYPAD">
		<feature name="a" mapto="RETRO_DEVICE_ID_JOYPAD_A"/>
		<feature name="b" mapto="RETRO_DEVICE_ID_JOYPAD_B"/>
		<feature name="x" mapto="RETRO_DEVICE_ID_JOYPAD_X"/>
		<feature name="y" mapto="RETRO_DEVICE_ID_JOYPAD_Y"/>
		<feature name="z" mapto="RETRO_DEVICE_ID_JOYPAD_R"/>
		<feature name="l" mapto="RETRO_DEVICE_ID_JOYPAD_L2"/>
		<feature name="r" mapto="RETRO_DEVICE_ID_JOYPAD_R2"/>
		<feature name="start" mapto="RETRO_DEVICE_ID_JOYPAD_START"/>
		<feature name="up" mapto="RETRO_DEVICE_ID_JOYPAD_UP"/>
		<feature name="down" mapto="RETRO_DEVICE_ID_JOYPAD_DOWN"/>
		<feature name="left" mapto="RETRO_DEVICE_ID_JOYPAD_LEFT"/>
		<feature name="right" mapto="RETRO_DEVICE_ID_JOYPAD_RIGHT"/>
		<feature name="controlstick" mapto="RETRO_DEVICE_INDEX_ANALOG_LEFT"/>
		<feature name="cstick" mapto="RETRO_DEVICE_INDEX_ANALOG_RIGHT"/>
		<feature name="motor" mapto="RETRO_RUMBLE_STRONG"/>
	</controller>
</buttonmap>
EOF
}
