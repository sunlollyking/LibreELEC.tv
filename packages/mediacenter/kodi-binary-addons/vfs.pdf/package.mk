# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="vfs.pdf"
PKG_VERSION="cbc3b7462e9ac8e50d1432eac19dfa80335af1fd"
PKG_SHA256="0bbd821a2fe42317a43dbece0f64b4402b67e6a418d61135878e508e1de192f2"
PKG_REV="2"
PKG_ARCH="any"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/sunlollyking/vfs.pdf"
PKG_URL="https://github.com/sunlollyking/vfs.pdf/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain ${MEDIACENTER}:host poppler libjpeg-turbo"
PKG_SECTION=""
PKG_SHORTDESC="vfs.pdf"
PKG_LONGDESC="Opens a PDF as a folder of page pictures, so game manuals can be read in Kodi."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.vfs"
