# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-atari800"
LIBRETRO_COMMIT_SHA="0931dcc7904a4028c90ebc18c28a2164a88d1b49"
inherit libretro-core

DESCRIPTION="This is a free and portable Atari 8-bit computer and 5200 console emulator."
HOMEPAGE="https://github.com/libretro/libretro-atari800"
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
