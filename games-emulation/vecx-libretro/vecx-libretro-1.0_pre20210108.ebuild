# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-vecx"
LIBRETRO_COMMIT_SHA="98bd64b66923f4fc93eb6831f79c4119150bbe80"

inherit libretro-core

DESCRIPTION="Libretro adaption of vecx, a Vectrex Emulator"
HOMEPAGE="https://github.com/libretro/libretro-vecx"
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
