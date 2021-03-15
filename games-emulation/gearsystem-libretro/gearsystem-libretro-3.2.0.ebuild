# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="drhelius/Gearsystem"
LIBRETRO_COMMIT_SHA="c5c8fe063c71840e251f2c847392f401869eeeaa"

inherit libretro-core

DESCRIPTION="libretro implementation for multiple Sega consoles"
HOMEPAGE="https://github.com/drhelius/Gearsystem"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/platforms/libretro"
