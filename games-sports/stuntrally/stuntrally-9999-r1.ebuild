# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="Rally game focused on closed rally tracks with possible stunt elements."
HOMEPAGE="http://stuntrally.tuxfamily.org/"

SLOT="0"
LICENSE="GPL-3"
IUSE="dedicated +game editor"

SRC_URI=""
KEYWORDS=""
EGIT_REPO_URI="https://github.com/stuntrally/stuntrally"
LIVE_PDEPEND="~${CATEGORY}/${PN}-tracks-${PV}"

DEPEND="
	game? (
		dev-games/ogre[cg,boost,ois,freeimage,opengl,zip,-double-precision]
		dev-games/mygui[ogre,plugins]
		media-libs/libsdl2[haptic]
		media-libs/libvorbis
		media-libs/libogg
		media-libs/openal
		sci-physics/bullet
	)
	dev-libs/boost
	net-libs/enet:1.3
"
RDEPEND="${DEPEND}
	~games-sports/stuntrally-tracks-${PV}
"
PDEPEND="${LIVE_PDEPEND}"

REQUIRED_USE="editor? ( game )"

DOCS=(Readme.txt)

src_configure() {
	local mycmakeargs=(
		-DBUILD_MASTER_SERVER=$(usex dedicated)
		-DBUILD_GAME=$(usex game)
		-DBUILD_EDITOR=$(usex editor)
		-DBUILD_SHARED_LIBS=OFF
		-DSHARE_INSTALL="share/stuntrally"
	)
	cmake_src_configure
}
