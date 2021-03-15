# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/cannonball"
LIBRETRO_COMMIT_SHA="131be528d36fc89a5017928b09d577da4838b7c9"
inherit libretro-core

DESCRIPTION="An Enhanced OutRun Engine."
HOMEPAGE="https://github.com/libretro/cannonball"
KEYWORDS="~amd64 ~x86"

LICENSE="cannonball"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
