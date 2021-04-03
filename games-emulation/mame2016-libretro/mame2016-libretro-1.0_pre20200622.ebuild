# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/mame2016-libretro"
LIBRETRO_COMMIT_SHA="d53c379892b0bd91b4a52fc2de491e1199f03e32"

inherit libretro-core

DESCRIPTION="MAME (0.174) for libretro."
HOMEPAGE="https://github.com/libretro/mame2016-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

PATCHES=(
        "${FILESDIR}/python.patch"
)

CFLAGS="" # It'll break without it

src_compile() {
	use custom-cflags || filter-flags -O*
	libretro-core_src_compile
}
pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
