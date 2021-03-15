# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/ecwolf"
LIBRETRO_COMMIT_SHA="78dcd233bb548406511401bbaed74b05ad59fdd6"

inherit libretro-core

DESCRIPTION="Updated engine for wolfenstein 3D and compatibles"
HOMEPAGE="https://github.com/libretro/ecwolf"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2 MAME ID"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/src/libretro"
