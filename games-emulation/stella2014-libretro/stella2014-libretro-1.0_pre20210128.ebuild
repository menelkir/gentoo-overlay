# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/stella2014-libretro"
LIBRETRO_COMMIT_SHA="62e9468239576a3f3bc64845066aed2dea6ea6b1"

inherit libretro-core

DESCRIPTION="libretro implementation of Stella 2014. (Atari 2600)"
HOMEPAGE="https://github.com/libretro/stella2014-libretro"
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
