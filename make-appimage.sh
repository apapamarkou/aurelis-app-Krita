#!/bin/sh

set -eu

ARCH=$(uname -m)
VERSION=$(pacman -Q krita | awk '{print $2; exit}')
export ARCH VERSION
export OUTPATH=./dist
export ICON=/usr/share/icons/hicolor/256x256/apps/krita.png
export DESKTOP=/usr/share/applications/org.kde.krita.desktop
export STARTUPWMCLASS=krita
export DEPLOY_PYTHON=1
export USE_HOST_DRIVERS_EXPERIMENTAL=1

# Deploy dependencies
quick-sharun /usr/bin/krita* \
  /usr/lib/kritaplugins/krita*.so* \
  /usr/lib/krita-python-libs \
  /usr/lib/libkrita*.so* \
  /usr/share/color-schemes \
  /usr/share/color/icc/krita \
  /usr/share/gmic \
  /usr/share/krita* \
  /usr/lib/qt6/plugins/sqldrivers \
  /usr/lib/libproxy/libpxbackend-1.0.so

# Turn AppDir into AppImage
GITHUB_REPOSITORY= quick-sharun --make-appimage
rm -f ./dist/*.zsync
sh ./pkg-meta.sh

# Test the app for 12 seconds, if the test fails due to the app
# having issues running in the CI use --simple-test instead
quick-sharun --simple-test ./dist/*.AppImage
