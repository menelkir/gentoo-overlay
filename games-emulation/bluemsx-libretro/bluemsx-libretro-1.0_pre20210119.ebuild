# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/blueMSX-libretro"
LIBRETRO_COMMIT_SHA="e3d579e554fdb564d49d97d93ba37e8952075048"
inherit libretro-core

DESCRIPTION=" Port of blueMSX to the libretro API"
HOMEPAGE="https://github.com/libretro/blueMSX-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="bluemsx"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
