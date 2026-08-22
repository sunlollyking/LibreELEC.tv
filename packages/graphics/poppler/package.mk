# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="poppler"
PKG_VERSION="26.01.0"
PKG_SHA256="1cb944a4b88847f5fb6551683bc799db59f04990f5d8be07aba2acbf38601089"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://poppler.freedesktop.org"
PKG_URL="https://poppler.freedesktop.org/poppler-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain zlib freetype fontconfig libjpeg-turbo libpng lcms2"
PKG_LONGDESC="A PDF rendering library, used by Kodi to display game manuals."
PKG_TOOLCHAIN="cmake"
PKG_BUILD_FLAGS="+pic"

# Only the PDF parsing and rasterising is wanted. The cpp frontend is the one
# Kodi uses; everything else is switched off, both to keep the library small
# and because each backend that is not built is one less piece of attack
# surface for a format that arrives from outside Kodi.
#
# JPEG2000 stays off because openjpeg is not in the tree. A page whose scan is
# encoded as JPX then renders blank rather than failing to open.
PKG_CMAKE_OPTS_TARGET="-DBUILD_SHARED_LIBS=OFF \
                       -DBUILD_GTK_TESTS=OFF \
                       -DBUILD_QT5_TESTS=OFF \
                       -DBUILD_QT6_TESTS=OFF \
                       -DBUILD_CPP_TESTS=OFF \
                       -DBUILD_MANUAL_TESTS=OFF \
                       -DENABLE_CPP=ON \
                       -DENABLE_UTILS=OFF \
                       -DENABLE_GLIB=OFF \
                       -DENABLE_QT5=OFF \
                       -DENABLE_QT6=OFF \
                       -DENABLE_NSS3=OFF \
                       -DENABLE_GPGME=OFF \
                       -DENABLE_LIBCURL=OFF \
                       -DENABLE_BOOST=OFF \
                       -DENABLE_LIBOPENJPEG=none \
                       -DENABLE_LIBTIFF=OFF \
                       -DENABLE_LCMS=ON \
                       -DWITH_Cairo=OFF \
                       -DWITH_NSS3=OFF \
                       -DRUN_GPERF_IF_PRESENT=OFF"
