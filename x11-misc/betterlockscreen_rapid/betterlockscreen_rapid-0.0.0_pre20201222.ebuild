# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_REV="705f03ace10e273ced75ffa98bc5983c4b3ebecb"

DESCRIPTION="A rapid and good-looking screen locker"
HOMEPAGE="https://github.com/oakszyjrnrdy/betterlockscreen_rapid"
SRC_URI="https://github.com/oakszyjrnrdy/betterlockscreen_rapid/archive/${MY_REV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${MY_REV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="
	x11-misc/i3lock-color
	x11-misc/i3lock-fancy-rapid
"

src_install() {
	dobin betterlockscreen_rapid
	einstalldocs
	insinto /etc
	doins betterlockscreen_rapid.conf
}
