# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/vitaquake2"
LIBRETRO_COMMIT_SHA="2d91b91c68c7d818be91cfc1f87e5b2a47b317d3"

inherit libretro-core

DESCRIPTION="libretro implementation of VitaQuake2. (Quake II)"
HOMEPAGE="https://github.com/libretro/vitaquake2"
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
