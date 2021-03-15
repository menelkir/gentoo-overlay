# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/gw-libretro"
LIBRETRO_COMMIT_SHA="26695b2454729bd995d5c1a1fb0c8e2485928a43"
inherit libretro-core

DESCRIPTION="A libretro core for Game & Watch simulators."
HOMEPAGE="https://github.com/libretro/gw-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="ZLIB"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
