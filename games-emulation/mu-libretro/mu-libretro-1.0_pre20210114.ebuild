# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/Mu"
LIBRETRO_COMMIT_SHA="df5a0c63bc85fbd250341fdd65681d289bc48c61"

inherit libretro-core

DESCRIPTION="A new Palm OS emulator targeting compatibility, speed and accuracy"
HOMEPAGE="https://github.com/libretro/Mu"
KEYWORDS="~amd64 ~x86"

LICENSE="CC-BY-3.0"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/libretroBuildSystem"
