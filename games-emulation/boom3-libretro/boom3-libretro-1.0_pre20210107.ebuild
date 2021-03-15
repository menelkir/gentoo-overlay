# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/boom3"
LIBRETRO_COMMIT_SHA="2cd22cb5b4ab8e6e14d54c108b53f2545a52d444"

inherit libretro-core

DESCRIPTION="Doom 3 GPL source port for libretro"
HOMEPAGE="https://github.com/libretro/boom3"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/neo"
