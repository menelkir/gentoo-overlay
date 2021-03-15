# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/Dinothawr"
LIBRETRO_COMMIT_SHA="ab930efa7e0f02c3fc8153397fd64daee8f02cfd"
inherit libretro-core

DESCRIPTION="Dinothawr is a block pushing puzzle game on slippery surfaces."
HOMEPAGE="https://github.com/libretro/Dinothawr"
KEYWORDS="~amd64 ~x86"

LICENSE="CC-BY-NC-SA-3.0"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
