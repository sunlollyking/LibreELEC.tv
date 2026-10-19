# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.ppsspp"
PKG_VERSION="0.0.1.28-Omega"
PKG_SHA256="f830fa9f1ddf62852380c88eddc25ed169def749cd73007172de4ae0513088d8"
PKG_REV="2"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.ppsspp"
PKG_URL="https://github.com/kodi-game/game.libretro.ppsspp/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-ppsspp"
PKG_DEPENDS_UNPACK="libretro-ppsspp"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.ppsspp: PPSSPP for Kodi"


PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"

post_makeinstall_target() {
  # The core loads its shaders, fonts and ROM images at runtime from the system
  # directory, which game.libretro places at <resources>/system. Nothing installs
  # them -- without them the core aborts before the first frame.
  local assets="${ADDON_BUILD}/${PKG_ADDON_ID}/resources/system/PPSSPP"
  mkdir -p "${assets}"
  cp -r $(get_build_dir libretro-ppsspp)/assets/* "${assets}"
}

pre_make_target() {
  # The assets bundled in the add-on repo are newer than the core we build
  # against, and the atlas format changed underneath them. The core expects a
  # version 0 atlas and gets a version 1 one, whose payload is zstd compressed:
  #
  #   core's own assets/ppge_atlas.meta:  ATLA 00 00 00 00  uncompressed
  #   the add-on's resources/.../.meta:   ATLA 01 00 00 00  followed by 28 b5 2f fd
  #
  # It reads the compressed bytes as element counts, so Atlas::Load() ends in a
  # new[] on an absurd size and throws bad_array_new_length out of __PPGeInit(),
  # which nothing catches and which aborts Kodi as soon as a game is loaded.
  #
  # Take the assets from the core being built rather than the ones shipped
  # alongside it, so the two can never disagree again.
  local core_assets="$(get_build_dir libretro-ppsspp)/assets"
  local addon_assets="${PKG_BUILD}/game.libretro.ppsspp/resources/system/PPSSPP"

  if [ -d "${core_assets}" ]; then
    rm -rf "${addon_assets}"
    mkdir -p "${addon_assets}"
    cp -a "${core_assets}"/* "${addon_assets}/"
  else
    die "ERROR: ppsspp core assets not found at ${core_assets}"
  fi
}
