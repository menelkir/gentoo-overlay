# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/Gearboy"

inherit libretro-core

DESCRIPTION="Gearboy is a Nintendo Game Boy / GameBoy Color emulator for libretro"
HOMEPAGE="https://github.com/libretro/Gearboy"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/platforms/libretro"