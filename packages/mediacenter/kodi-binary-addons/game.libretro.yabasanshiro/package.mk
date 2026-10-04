# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="game.libretro.yabasanshiro"
PKG_VERSION="3.4.2.12-Omega"
PKG_SHA256="5c8ab17ec3bf0590a42176447b1a111bc9e8a8843e4353e3ecdbe0a427c401f5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/kodi-game/game.libretro.yabasanshiro"
PKG_URL="https://github.com/kodi-game/game.libretro.yabasanshiro/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host libretro-yabasanshiro"
PKG_DEPENDS_UNPACK="libretro-yabasanshiro"
PKG_SECTION=""
PKG_LONGDESC="game.libretro.yabasanshiro: Yaba Sanshiro for Kodi"

# Keep symbols: these cores crash inside themselves and the backtraces are
# bare addresses without them. Same optimised code, symbol table retained.
PKG_BUILD_FLAGS="-strip"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.gameclient"

post_unpack() {
  # Local fix pending kodi-game/game.libretro.yabasanshiro#2. Both resource
  # files ask for game.controller.saturn.3d, which is not a controller that
  # exists -- the 3D Control Pad ships as .3d.japan and .3d.western -- so every
  # port meaning to offer the analog pad fails its dependency instead:
  #   Invalid controller ID: game.controller.saturn.3d
  # The two share a feature set exactly, so the buttonmap entry is the same
  # mapping under both ids.
  local res="${PKG_BUILD}/game.libretro.yabasanshiro/resources"

  sed -i 's|<accepts controller="game.controller.saturn.3d"\(.*\)|<accepts controller="game.controller.saturn.3d.japan"\1\n<accepts controller="game.controller.saturn.3d.western"\1|' \
    "${res}/topology.xml"

  python3 - "${res}/buttonmap.xml" <<'PYEOF'
import re, sys
p = sys.argv[1]
t = open(p).read()
m = re.search(r'\t<controller id="game\.controller\.saturn\.3d" type="RETRO_DEVICE_ANALOG">.*?\t</controller>\n', t, re.S)
if m:
    b = m.group(0)
    both = (b.replace('game.controller.saturn.3d"', 'game.controller.saturn.3d.japan"')
            + b.replace('game.controller.saturn.3d"', 'game.controller.saturn.3d.western"'))
    open(p, 'w').write(t[:m.start()] + both + t[m.end():])
PYEOF
}
