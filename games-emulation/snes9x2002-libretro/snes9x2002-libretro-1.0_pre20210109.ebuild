# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/snes9x2002"
LIBRETRO_COMMIT_SHA="0d957c061e3365a33672cbd6ad404bb64f9442f6"

inherit libretro-core

DESCRIPTION="Snes9x 2002. Port of SNES9x 1.39 for libretro (previously PocketSNES)"
HOMEPAGE="https://github.com/libretro/snes9x2002"
KEYWORDS="~amd64 ~x86"

LICENSE="snes9x"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
	games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
