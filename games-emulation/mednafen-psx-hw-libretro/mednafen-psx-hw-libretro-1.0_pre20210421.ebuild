# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-psx-libretro"
LIBRETRO_COMMIT_SHA="cd79168f58df84c36e78abba726b913ae5378524"

inherit libretro-core

DESCRIPTION="Standalone port/fork of Mednafen PSX to the Libretro API."
HOMEPAGE="https://github.com/libretro/beetle-psx-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_compile() {
	myemakeargs=(
		HAVE_HW=1
		HAVE_LIGHTREC=1
	)
	libretro-core_src_compile
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
