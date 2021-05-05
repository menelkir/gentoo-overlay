# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Libpurple (Pidgin) plugin for using Classic Battle.net"
HOMEPAGE="https://github.com/dylex/slack-libpurple"
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="net-im/pidgin"
RDEPEND="${DEPEND}"