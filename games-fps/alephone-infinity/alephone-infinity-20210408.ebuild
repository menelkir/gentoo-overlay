# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

inherit eutils

DESCRIPTION="Aleph One - Marathon Infinity"
HOMEPAGE="http://marathon.sourceforge.net/"
SRC_URI="https://github.com/Aleph-One-Marathon/alephone/releases/download/release-${PV}/MarathonInfinity-${PV}-Data.zip"

LICENSE="bungie-marathon"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="mirror"

RDEPEND="games-fps/alephone"
DEPEND="app-arch/unzip"

S="${WORKDIR}/Marathon Infinity"

MY_NAME='infinity'
MY_DIR="/usr/share/alephone-$MY_NAME"

src_install() {
	insinto "$MY_DIR"
	doins -r * || die "doins failed"

#	doicon "${DISTDIR}"/${PN}.png
	make_desktop_entry "alephone.sh $MY_NAME" "$DESCRIPTION"

	# Make sure the extra dirs exist in case the user wants to add some data
	keepdir "$MY_DIR"/{Scripts,"Physics Models",Textures,Themes}
}

pkg_postinst() {
	elog "To play this scenario, run:"
	elog "alephone.sh $MY_NAME"
}
