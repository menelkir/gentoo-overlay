# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/bsnes2014"
LIBRETRO_COMMIT_SHA="1c2216f1acd7a9a8d332bc7cc6716c1428173da7"

inherit libretro-core

DESCRIPTION="Libretro fork of bsnes"
HOMEPAGE="https://github.com/libretro/bsnes2014"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# No tests provided
RESTRICT="test"

S="${WORKDIR}/bsnes2014-${LIBRETRO_COMMIT_SHA}"

src_compile(){
		makeargs="profile=performance"
		libretro-core_src_compile
}

pkg_preinst() {
		if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
			first_install="1"
		fi
}

