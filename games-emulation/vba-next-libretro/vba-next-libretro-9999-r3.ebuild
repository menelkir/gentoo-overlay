# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/vba-next"

inherit libretro-core

DESCRIPTION="libretro implementation of VBA Next. (Game Boy Advance)"
HOMEPAGE="https://github.com/libretro/vba-next"
KEYWORDS=""

LICENSE="vba"
SLOT="0"
IUSE="neon +tiled_rendering"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_compile() {
	myemakeargs=(
		$(usex arm "platform=armv" "")
		$(usex neon "HAVE_NEON=1" "")
		$(usex tiled_rendering "TILED_RENDERING=1" "")
	)
	libretro-core_src_compile
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
