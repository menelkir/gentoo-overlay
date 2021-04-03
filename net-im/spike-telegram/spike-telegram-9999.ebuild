# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 )
inherit distutils-r1 git-r3

DESCRIPTION="Telegram client in Ncurses, written in Python"
HOMEPAGE="https://gitlab.com/libre_hackerman/spike"
EGIT_REPO_URI="https://gitlab.com/libre_hackerman/spike.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="+libnotify +emojis"

DEPEND=""
RDEPEND="${DEPEND}
dev-python/python-telegram
libnotify? ( x11-libs/libnotify )
emojis? ( dev-python/emoji )"
BDEPEND=""
