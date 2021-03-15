# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/OpenLara"
LIBRETRO_COMMIT_SHA="fe88d74673344afc71891717b2474d33f90c165f"

inherit libretro-core

DESCRIPTION="libretro implementation of OpenLara. (Classic Tomb Raider Engine)"
HOMEPAGE="https://github.com/libretro/OpenLara"
KEYWORDS="~amd64 ~x86"

LICENSE="BSD-2"
SLOT="0"

IUSE="gles2"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/src/platform/libretro"

src_compile() {
	myemakeargs=(
		$(usex gles2 "GLES=1" "GLES=0")
	)
	libretro-core_src_compile
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
