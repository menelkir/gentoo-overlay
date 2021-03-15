# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/xrick-libretro"
LIBRETRO_COMMIT_SHA="f340c823b7a2b7c936f432fd83ab60205c0702a3"

inherit libretro-core

DESCRIPTION="Xrick is an open source implementation of Rick Dangerous for libretro."
HOMEPAGE="https://github.com/libretro/xrick-libretro"
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
