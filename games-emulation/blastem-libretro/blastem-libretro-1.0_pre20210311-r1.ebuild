# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/blastem"
LIBRETRO_COMMIT_SHA="e70b05bf5b5954140cba227fc996ab24c064d494"

inherit libretro-core

DESCRIPTION="A fast and accurate Genesis emulator"
HOMEPAGE="https://github.com/libretro/blastem"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

LIBRETRO_CORE_LIB_FILE="${S}/blastem_libretro.so"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
