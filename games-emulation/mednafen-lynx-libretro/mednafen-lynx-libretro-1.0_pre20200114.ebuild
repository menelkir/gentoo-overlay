# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-lynx-libretro"
LIBRETRO_COMMIT_SHA="35119c970be8ddcdef74828572bcfdd5ddd664c0"

inherit libretro-core

DESCRIPTION="libretro implementation of Mednafen Lynx. (Atari Lynx)"
HOMEPAGE="https://github.com/libretro/beetle-lynx-libretro"
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
