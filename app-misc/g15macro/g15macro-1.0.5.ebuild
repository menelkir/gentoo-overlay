# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="Macro recording plugin to G15daemon"
HOMEPAGE="https://gitlab.com/menelkir/${PN}"
SRC_URI="https://gitlab.com/menelkir/${PN}/-/archive/${PV}/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 x86"
IUSE=""

DEPEND="app-misc/g15daemon
	dev-libs/libg15
	dev-libs/libg15render
	x11-libs/libX11
	x11-libs/libXtst
"
RDEPEND="${DEPEND}
	sys-libs/zlib
"

src_prepare() {
	default
}

src_configure() {
	econf --enable-xtest
}

src_install() {
	default
	rm -rf "${ED}"/usr/share/doc/${P} || die
}
