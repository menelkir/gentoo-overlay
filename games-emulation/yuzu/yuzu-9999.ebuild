# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake-utils

DESCRIPTION="Nintendo Switch Emulator"
HOMEPAGE="https://yuzu-emu.org"
EGIT_REPO_URI="https://github.com/yuzu-emu/yuzu.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-vcs/git
	sys-devel/gcc
	dev-util/ninja
	dev-util/cmake
	media-libs/libsdl2
	dev-qt/qtcore
	dev-qt/qtopengl
	dev-util/conan
	"
