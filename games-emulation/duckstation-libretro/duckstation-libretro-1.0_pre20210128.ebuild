# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/duckstation"
LIBRETRO_COMMIT_SHA="5eb1dafe608ffd03ab9496f327429081c1b51f0c"

inherit libretro-core cmake-utils

DESCRIPTION="Fast Sony Playstation emulator."
HOMEPAGE="https://github.com/libretro/duckstation"
KEYWORDS="~amd64"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_configure() {
		local mycmakeargs=(
			-DLIBRETRO=ON
			-DCMAKE_BUILD_TYPE=Release
		)
		cmake-utils_src_configure
}

src_install() {
		cmake-utils_src_install
		libretro-core_src_install
}

