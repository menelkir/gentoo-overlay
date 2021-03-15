# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/easyrpg-libretro"

inherit libretro-core cmake-utils

DESCRIPTION="A game interpreter to play RPG Maker 2000, 2003 and EasyRPG games"
HOMEPAGE="https://github.com/libretro/easyrpg-libretro"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/builds/libretro"

