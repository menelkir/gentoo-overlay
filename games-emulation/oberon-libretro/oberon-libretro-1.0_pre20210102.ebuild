# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/oberon-risc-emu"
LIBRETRO_COMMIT_SHA="f8cc5d5bb98f07b6c63695e314eb492d7c7a4d0b"

inherit libretro-core

DESCRIPTION=" Emulator for the Oberon RISC machine"
HOMEPAGE="https://github.com/libretro/oberon-risc-emu"
KEYWORDS="~amd64 ~x86"

LICENSE="BSD"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

