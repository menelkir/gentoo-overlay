# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1 git-r3

DESCRIPTION="A fork of nicotine, a Soulseek client in Python"
HOMEPAGE="https://github.com/Nicotine-Plus/nicotine-plus"
EGIT_REPO_URI="https://github.com/Nicotine-Plus/nicotine-plus"

LICENSE="GPL-3 LGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(python_gen_cond_dep '
		dev-python/pygobject[${PYTHON_MULTI_USEDEP}]
		media-libs/mutagen[${PYTHON_MULTI_USEDEP}]
	')
"

DEPEND="${RDEPEND}"

src_install() {
	distutils-r1_src_install
	mv "${ED}/usr/share/doc/nicotine" "${ED}/usr/share/doc/${PF}" || die
}
