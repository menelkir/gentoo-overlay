# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A QT webengine frontend for netflix (and other streaming services)"
HOMEPAGE="https://github.com/gort818/qtwebflix"

inherit desktop qmake-utils git-r3
EGIT_REPO_URI="https://github.com/gort818/qtwebflix"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	x11-misc/xdg-utils
	dev-qt/qtwebengine:5
"

RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	eqmake5
}

src_compile() {
	emake
}

src_install() {
	emake INSTALL_ROOT="$D" DESTDIR="${D}" install
	dobin qtwebflix 
	doicon ${S}/resources/qtwebflix.svg
	domenu "${FILESDIR}"/qtwebflix.desktop
}
