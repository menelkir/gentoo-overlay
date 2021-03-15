# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Libpurple (Pidgin) plugin for using a Telegram account"
HOMEPAGE="https://github.com/majn/telegram-purple"
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+webp libressl"

DEPEND="net-im/pidgin
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )
	webp? ( media-libs/libwebp )"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i "s/-Werror//g" tgl/Makefile.in || die
	eapply_user
}

src_configure() {
	econf $(use_enable webp libwebp)
}
