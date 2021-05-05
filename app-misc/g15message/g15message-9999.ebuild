# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="A simple message/alert client for G15daemon"
HOMEPAGE="https://gitlab.com/menelkir/${PN}"
EGIT_REPO_URI="https://gitlab.com/menelkir/${PN}.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND=">=app-misc/g15daemon-1.9.0
	dev-libs/libg15
	dev-libs/libg15render
	sys-libs/zlib
"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	mv configure.{in,ac} || die
	eautoreconf
}
