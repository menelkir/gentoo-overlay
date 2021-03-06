# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-o2em"
LIBRETRO_COMMIT_SHA="0f13c969e6b7db021a9dc7a73ba7015227101024"

inherit libretro-core

DESCRIPTION="Port of O2EM to the libretro API, an Odyssey 2 / VideoPac emulator. "
HOMEPAGE="https://github.com/libretro/libretro-o2em"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
