# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/bk-emulator"
LIBRETRO_COMMIT_SHA="993bee83ed34a1d172b0a06cc41ed6aea60d5e34"

inherit libretro-core

DESCRIPTION=" BK-0010/0011/Terak 8510a emulator for libretro"
HOMEPAGE="https://github.com/libretro/bk-emulator"
KEYWORDS="~amd64 ~x86"

LICENSE="bk"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

