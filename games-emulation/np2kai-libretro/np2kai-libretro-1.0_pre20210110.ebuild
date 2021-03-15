# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/NP2kai"
LIBRETRO_COMMIT_SHA="c238e2e2cc0ddc98aaccd6f46c496fbecc8986a9"

inherit libretro-core

DESCRIPTION="NP2kai is PC-9801 series emulator"
HOMEPAGE="https://github.com/libretro/NP2kai"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/sdl"
