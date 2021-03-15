# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit ecm

DESCRIPTION="An extended calendar with daily weather forecasts and events from Google Calendar."
HOMEPAGE="https://store.kde.org/p/998901
	https://github.com/Zren/plasma-applet-eventcalendar"

SRC_URI="https://github.com/Zren/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-2+"
SLOT="5"

# block against slot 0 of self, to prevent file collision
DEPEND="
	!kde-misc/plasma-applet-thermal-monitor:0
	>=kde-frameworks/plasma-5.60.0:5
"
RDEPEND="${DEPEND}"
