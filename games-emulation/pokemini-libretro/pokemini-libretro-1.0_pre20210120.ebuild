# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/PokeMini"
LIBRETRO_COMMIT_SHA="6a3f28c6dc4627ce51ee1df0ab3debfd04d5271b"

inherit libretro-core

DESCRIPTION="Obscure nintendo handheld emulator."
HOMEPAGE="https://github.com/libretro/PokeMini"
KEYWORDS="~amd64 ~x86"

LICENSE="pokemini"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
