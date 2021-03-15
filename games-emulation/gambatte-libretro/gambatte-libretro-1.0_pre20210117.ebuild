# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/gambatte-libretro"
LIBRETRO_COMMIT_SHA="fde2713ad1145ce306f197535a40f6ffbd012343"
inherit libretro-core

DESCRIPTION="libretro implementation of Gambatte. (Game Boy/Game Boy Color)"
HOMEPAGE="https://github.com/libretro/gambatte-libretro"
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
