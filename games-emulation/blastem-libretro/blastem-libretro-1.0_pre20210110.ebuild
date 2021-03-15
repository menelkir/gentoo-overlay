# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/blastem"
LIBRETRO_COMMIT_SHA="a530f83b4f161e8e08e211a68592f38b1fd37d00"

inherit libretro-core

DESCRIPTION="A fast and accurate Genesis emulator"
HOMEPAGE="https://github.com/libretro/blastem"
KEYWORDS="~amd64 ~x86"

CFLAGS="" # It'll break without it

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_compile() {
	emake -f Makefile.libretro
}
