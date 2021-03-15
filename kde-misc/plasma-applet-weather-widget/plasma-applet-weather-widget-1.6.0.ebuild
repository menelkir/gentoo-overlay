# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit ecm

DESCRIPTION="Plasma 5 applet for displaying weather information from yr.no (and other) server."
HOMEPAGE="https://store.kde.org/p/998917
		https://github.com/kotelnik/plasma-applet-weather-widget"

SRC_URI="https://github.com/kotelnik/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2+"
SLOT="5"

# block against slot 0 of self, to prevent file collision
DEPEND="
		!kde-misc/plasma-applet-thermal-monitor:0
		>=kde-frameworks/plasma-5.60.0:5
"
RDEPEND="${DEPEND}"

