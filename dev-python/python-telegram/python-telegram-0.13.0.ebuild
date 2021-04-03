# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS="no"
PYTHON_COMPAT=( python3_7 python3_8 python3_9 )
inherit distutils-r1

DESCRIPTION="Python client for the Telegram's tdlib"
HOMEPAGE="https://github.com/alexander-akhmetov/"
SRC_URI="https://github.com/alexander-akhmetov/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
