# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="meancoot/stonesoup-libretro"
LIBRETRO_COMMIT_SHA="19944213f37111c63f14c1ad31141adde178dce9"
inherit libretro-core

DESCRIPTION="Kibretro port of Dungeon Crawl - Stone Soup"
HOMEPAGE="https://github.com/meancoot/stonesoup-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S=${WORKDIR}/${PN}-${LIBRETRO_COMMIT_SHA}/crawl-ref

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
