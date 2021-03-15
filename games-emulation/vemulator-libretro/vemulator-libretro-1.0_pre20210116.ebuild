# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/vemulator-libretro"
LIBRETRO_COMMIT_SHA="e7762bc64ca4a36850aef11b3f25a1ca775fb2e4"

inherit libretro-core

DESCRIPTION="A port of the SEGA Visual Memory Unit emulator VeMUlator for libretro."
HOMEPAGE="https://github.com/libretro/vemulator-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

