# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/vbam-libretro"
LIBRETRO_COMMIT_SHA="1f99ed712d14463cbe2ce669064d2e9de0d64b23"

inherit libretro-core

DESCRIPTION="libretro implementation of VBA-M. (Game Boy Advance)"
HOMEPAGE="https://github.com/libretro/vbam-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="vba"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/src/libretro"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
