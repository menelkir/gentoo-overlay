# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="SquirrelJME/SquirrelJME"
LIBRETRO_COMMIT_SHA="fd1244d38de4864a79521b423c1323ac7c14752e"

inherit libretro-core

DESCRIPTION="SquirrelJME is a Java ME 8 Virtual Machine for libretro"
HOMEPAGE="https://github.com/SquirrelJME/SquirrelJME"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/ratufacoat"

src_compile (){
	emake -f makefilelibretro
}
