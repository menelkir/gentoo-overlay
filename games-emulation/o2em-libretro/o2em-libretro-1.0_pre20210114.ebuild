# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-o2em"
LIBRETRO_COMMIT_SHA="e0576543d4926e694ff8cd17e47a032d268c320f"

inherit libretro-core

DESCRIPTION="Port of O2EM to the libretro API, an Odyssey 2 / VideoPac emulator. "
HOMEPAGE="https://github.com/libretro/libretro-o2em"
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
