# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit ecm

DESCRIPTION="Plasma 5 applet for monitoring CPU, GPU and other available temperature sensors"
HOMEPAGE="https://store.kde.org/p/998915/
	https://gitlab.com/agurenko/plasma-applet-thermal-monitor"

EGIT_REPO_URI="https://github.com/Zren/${PN}.git"

LICENSE="GPL-2+"
SLOT="5"

# block against slot 0 of self, to prevent file collision
DEPEND="
	!kde-misc/plasma-applet-thermal-monitor:0
	>=kde-frameworks/plasma-5.60.0:5
"
RDEPEND="${DEPEND}"
