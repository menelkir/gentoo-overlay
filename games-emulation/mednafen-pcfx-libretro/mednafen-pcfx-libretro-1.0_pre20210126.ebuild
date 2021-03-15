# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/beetle-pcfx-libretro"
LIBRETRO_COMMIT_SHA="cd7029d5b3361ac303b98ad55f5929fc88320a03"

inherit libretro-core

DESCRIPTION="Standalone port of Mednafen PCFX to libretro."
HOMEPAGE="https://github.com/libretro/beetle-pcfx-libretro"
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
