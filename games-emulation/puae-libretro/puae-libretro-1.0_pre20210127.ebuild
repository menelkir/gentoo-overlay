# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-uae"
LIBRETRO_COMMIT_SHA="3e3863e1637631da0aba5d60e6b417b6c37733d4"

inherit libretro-core

DESCRIPTION="WIP libretro port of UAE (P-UAE and libco), a Commodore Amiga Emulator."
HOMEPAGE="https://github.com/libretro/libretro-uae"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}