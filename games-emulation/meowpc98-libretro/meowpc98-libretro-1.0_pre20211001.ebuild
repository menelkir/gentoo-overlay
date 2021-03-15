# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-meowPC98"
LIBRETRO_COMMIT_SHA="cc25d911e2246a2377e02290a4a2fc344bb03bc2"

inherit libretro-core

DESCRIPTION="Neko Project 2 (PC98 emulator) port for libretro/RetroArch (XNP2)"
HOMEPAGE="https://github.com/libretro/libretro-meowPC98"
KEYWORDS="~amd64 ~x86"

LICENSE="BSD"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/libretro"

LIBRETRO_CORE_NAME="nekop2"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
