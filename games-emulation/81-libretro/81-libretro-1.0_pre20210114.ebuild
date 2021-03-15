# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/81-libretro"
LIBRETRO_COMMIT_SHA="3005933701c109d31dba52d8d4fcc4bfb952f0ff"
inherit libretro-core

DESCRIPTION="A port of the EightyOne ZX81 Emulator to libretro."
HOMEPAGE="https://github.com/libretro/81-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
