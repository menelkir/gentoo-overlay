# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/xmil-libretro"
LIBRETRO_COMMIT_SHA="ceb72fc953207cb9f83a0862b76f2d7f40c84974"

inherit libretro-core

DESCRIPTION="Libretro port of X Millennium Sharp X1 emulator"
HOMEPAGE="https://github.com/libretro/xmil-libretro"
KEYWORDS="~amd64 ~x86"

LICENSE="BSD-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/libretro"
