# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="bparker06/redbook"
LIBRETRO_COMMIT_SHA="767af8c693ce4926b8a107f20b3a77ecb03933b3"

inherit libretro-core

DESCRIPTION="Libretro core for redbook audio playback"
HOMEPAGE="https://github.com/bparker06/redbook"
KEYWORDS="~amd64 ~x86"

LICENSE="Apache-2.0"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

