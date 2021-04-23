# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/hbmame-libretro"
LIBRETRO_COMMIT_SHA="e72c7cfe6184bf57714377cd4c5d6efc422806e3"

inherit libretro-core

DESCRIPTION="Emulator of homebrew and hacked games for arcade hardware"
HOMEPAGE="https://github.com/libretro/hbmame-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="MAME"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

#PATCHES=(
#        "${FILESDIR}/python.patch"
#)

src_configure() {
		local mycmakeargs=(
			PTR64=1
		)
		libretro-core_src_compile
}

