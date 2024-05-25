# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2024 KOLOS (https://github.com/AnonLinuxOS/KOLOS)

PKG_NAME="frt"
PKG_VERSION="300_353"
PKG_ARCH="aarch64"
PKG_LICENSE="MIT"
PKG_SITE="https://www.patreon.com/efornaralabs" # https://github.com/efornara/frt
PKG_URL="https://archive.org/download/frt_${PKG_VERSION}_armhf/frt_${PKG_VERSION}_arm64.zip"
PKG_SHORTDESC="A Godot platform targeting single board computers."
PKG_LONGDESC="A Godot platform targeting single board computers."
PKG_TOOLCHAIN="manual"

unpack() {
  mkdir -p ${PKG_BUILD}
  unzip ${SOURCES}/frt/frt-${PKG_VERSION}.zip -d ${PKG_BUILD}/
  rm -f ${SOURCES}/frt/frt-${PKG_VERSION}*
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin/
	cp ${PKG_BUILD}/frt_${PKG_VERSION}_arm64.bin ${INSTALL}/usr/bin/frt
}
