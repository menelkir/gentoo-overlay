# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-uzem"
LIBRETRO_COMMIT_SHA="1c4fe15dcfa821ff578f3d373162bc29bd4f90ff"

inherit libretro-core

DESCRIPTION="An emulator for development purposes"
HOMEPAGE="https://github.com/libretro/libretro-uzem"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

