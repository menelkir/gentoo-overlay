# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

SA_COMMIT="efebe098559b08b020ec32b304c5d7f37be3493c"

DESCRIPTION="Spotify adblocker for linux"
HOMEPAGE="https://github.com/abba23/spotify-adblock-linux"

SRC_URI="
	https://github.com/abba23/spotify-adblock-linux/archive/${SA_COMMIT}.tar.gz -> ${P}.tar.gz
	https://cef-builds.spotifycdn.com/cef_binary_88.1.6%2Bg4fe33a1%2Bchromium-88.0.4324.96_linux64_minimal.tar.bz2 -> cef-88.1.6.tar.bz2
"
KEYWORDS="~amd64"
S="${WORKDIR}/${PN}-linux-${SA_COMMIT}"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	net-misc/curl"

DEPEND="${RDEPEND}"

src_prepare() {
	default
	mv "${WORKDIR}/cef_binary_88.1.6+g4fe33a1+chromium-88.0.4324.96_linux64_minimal/include" "${S}/"
}

src_install() {
	dolib spotify-adblock.so
	dodoc README.md
}

pkg_postinst() {
	ewarn "To use this, you should open spotify with:"
	ewarn "LD_PRELOAD=/usr/lib64/spotify-adblock.so spotify"
	ewarn ""
	ewarn "Be aware that you can get banned from spotify for evading ads"
}
