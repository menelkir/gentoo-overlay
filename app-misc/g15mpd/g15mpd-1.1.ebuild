# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="MPD (music player daemon) plugin to G15daemon"
HOMEPAGE="https://gitlab.com/menelkir/${PN}"
SRC_URI="https://gitlab.com/menelkir/${PN}/-/archive/${PV}/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="
	app-misc/g15daemon
	dev-libs/libg15
	dev-libs/libg15render
	media-libs/libmpd
	sys-libs/zlib
	x11-libs/libX11
	x11-libs/libXtst
"
DEPEND="${RDEPEND}
	x11-base/xorg-proto"

src_prepare() {
	default
	mv configure.{in,ac} || die
	eautoreconf
}

src_install() {
	default
	rm "${ED}"/usr/share/doc/${PF}/{COPYING,NEWS} || die
}
