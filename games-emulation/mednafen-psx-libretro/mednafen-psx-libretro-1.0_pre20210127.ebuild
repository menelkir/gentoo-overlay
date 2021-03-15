# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-psx-libretro"
LIBRETRO_COMMIT_SHA="252df32671b85e718aab7defbcbd032b1828872d"

inherit libretro-core

DESCRIPTION="Standalone port/fork of Mednafen PSX to the Libretro API."
HOMEPAGE="https://github.com/libretro/beetle-psx-libretro"
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
