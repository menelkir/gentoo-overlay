# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Small library for display text and graphics on a Logitech G15 keyboard"
HOMEPAGE="https://gitlab.com/menelkir/${PN}"
SRC_URI="https://gitlab.com/menelkir/${PN}/-/archive/${PV}/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"

RDEPEND="
	dev-libs/libg15"
DEPEND="${RDEPEND}"

src_prepare() {
	default
}

src_configure() {
	local myeconfargs=(
		--disable-static
	)
	econf "${myeconfargs[@]}"
}

src_install() {
	default

	# no static archives
	find "${ED}" -type f -name '*.la' -delete || die
}
