# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/fmsx-libretro"
LIBRETRO_COMMIT_SHA="913881b54ff319f6f193249871d7808649c054e9"
inherit libretro-core

DESCRIPTION="Port of fMSX to the libretro API."
HOMEPAGE="https://github.com/libretro/fmsx-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="fMSX"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
