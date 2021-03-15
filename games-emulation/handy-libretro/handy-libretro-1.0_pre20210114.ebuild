# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-handy"
LIBRETRO_COMMIT_SHA="d14711bc7a614337bdbb841746e1281bfdd7b5b8"
inherit libretro-core

DESCRIPTION="libretro implementation of Handy. (Atari Lynx)"
HOMEPAGE="https://github.com/libretro/libretro-handy"
KEYWORDS="~amd64 ~x86"

LICENSE="ZLIB"
SLOT="0"

DEPEND="sys-libs/zlib"
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		elog ""
		elog "You should put the following optional files in your 'system_directory' folder:"
		elog "lynxboot.img (Lynx Boot Image)"
		elog ""
		ewarn ""
	fi
}
