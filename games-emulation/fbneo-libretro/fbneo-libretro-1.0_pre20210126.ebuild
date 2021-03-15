# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/FBNeo"
LIBRETRO_COMMIT_SHA="93d5786017e6eb909733f4ddea1fee220bb3ec5d"

inherit libretro-core

DESCRIPTION="Fork of Final Burn Alpha"
HOMEPAGE="https://github.com/libretro/FBNeo"
KEYWORDS="~amd64 ~x86"

LICENSE="FBA"
SLOT="0"

DEPEND="media-libs/libsdl2
		media-libs/sdl-image"
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${WORKDIR}"/FBNeo-${LIBRETRO_COMMIT_SHA}/src/burner/libretro

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
