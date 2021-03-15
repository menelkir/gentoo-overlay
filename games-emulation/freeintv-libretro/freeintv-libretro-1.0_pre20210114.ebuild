# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/FreeIntv"
LIBRETRO_COMMIT_SHA="13f8040656a4e543e0f5165f995ff94b6f05eb7d"
inherit libretro-core

DESCRIPTION="A libretro emulation core for the Mattel Intellivision"
HOMEPAGE="https://github.com/libretro/FreeIntv"
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
