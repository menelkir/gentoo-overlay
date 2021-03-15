# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit gnome2-utils

DESCRIPTION="Lightweight cdrtools front-end for CD and DVD writing"
HOMEPAGE="http://www.xcdroast.org/"
SRC_URI="mirror://sourceforge/xcdroast/${P/_/}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls suid"

RDEPEND=">=x11-libs/gtk+-2:2
	app-cdr/cdrtools"
DEPEND="${RDEPEND}
	sys-devel/gettext
	virtual/pkgconfig"

S=${WORKDIR}/${P/_/}

PATCHES=(
	"${FILESDIR}"/fix_cddb_hidden_tracks.patch
	"${FILESDIR}"/disable_version_check.patch
)

src_configure() {
	econf \
		$(use_enable nls) \
		--disable-dependency-tracking \
		--mandir=/usr/share/man \
		--sysconfdir=/etc
}

src_compile() {
	emake PREFIX=/usr
}

src_install() {
	emake PREFIX=/usr DESTDIR="${D}" install
	dodoc -r AUTHORS ChangeLog README doc/*

	make_desktop_entry xcdroast "X-CD-Roast" xcdroast "AudioVideo;DiscBurning"
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
