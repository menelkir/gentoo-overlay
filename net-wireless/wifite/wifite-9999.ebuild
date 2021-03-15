# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_7 )
inherit distutils-r1

MY_P="${PN}2-${PV}"

if [[ ${PV} == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/derv82/wifite2.git"
else
	SRC_URI="https://github.com/derv82/wifite2/archive/${PV}.tar.gz -> ${MY_P}.tar.gz"
	KEYWORDS="~amd64 ~arm ~x86"
	S="${WORKDIR}/${MY_P}"
fi

DESCRIPTION="An automated wireless attack tool"
HOMEPAGE="https://github.com/derv82/wifite2"

LICENSE="GPL-2"
SLOT="2"
IUSE="dict"

DEPEND=""
RDEPEND=""
PDEPEND="net-wireless/aircrack-ng
	dev-python/pexpect
	net-wireless/hcxdumptool
	net-wireless/hcxtools
	dict? ( sys-apps/cracklib-words )"
