# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="A library to render text and shapes into a buffer usable by the Logitech G15"
HOMEPAGE="https://gitlab.com/menelkir/${PN}"
SRC_URI="https://gitlab.com/menelkir/${PN}/-/archive/${PV}/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 x86"

DEPEND="app-misc/g15daemon
	dev-libs/libg15render"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	default
	mv configure.{in,ac} || die
	eautoreconf
}

src_install() {
	local DOCS=( AUTHORS README ChangeLog )
	default

	newinitd "${S}/contrib/init/${PN}.initd" ${PN}
	newconfd "${S}/contrib/init/${PN}.confd" ${PN}
}

pkg_postinst() {
	elog "Set the user to run g15composer in /etc/conf.d/g15composer before starting the service."
}
