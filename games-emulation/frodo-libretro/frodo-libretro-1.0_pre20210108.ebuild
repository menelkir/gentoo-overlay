# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/frodo-libretro"
LIBRETRO_COMMIT_SHA="6a2a94a2e12027987fa5609d407b78647efb8b8e"

inherit libretro-core

DESCRIPTION="Commdoore 64 emulator for libretro"
HOMEPAGE="https://github.com/libretro/frodo-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

