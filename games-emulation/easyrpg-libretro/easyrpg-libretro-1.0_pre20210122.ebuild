# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/easyrpg-libretro"
LIBRETRO_COMMIT_SHA="8752128296bd4e59e5198b91fd633dbe9f184395"

inherit libretro-core cmake-utils

DESCRIPTION="A game interpreter to play RPG Maker 2000, 2003 and EasyRPG games"
HOMEPAGE="https://github.com/libretro/easyrpg-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/builds/libretro"

src_configure(){
		cmake-utils_src_configure
		libretro-core_src_configure
}

src_compile (){
		libretro-core_src_compile
}

