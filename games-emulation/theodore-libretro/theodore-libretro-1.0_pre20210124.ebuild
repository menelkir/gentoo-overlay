# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="Zlika/theodore"
LIBRETRO_COMMIT_SHA="d476a6a44556c9ce7790734c43345c6509fe345e"

inherit libretro-core

DESCRIPTION="Libretro core for Thomson TO8/TO8D/TO9/TO9+ emulation."
HOMEPAGE="https://github.com/Zlika/theodore"
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
