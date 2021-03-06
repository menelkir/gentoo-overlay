# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Plymouth plugin for OpenRC"
HOMEPAGE="https://github.com/aidecoe/plymouth-openrc-plugin"

inherit git-r3
EGIT_REPO_URI="https://github.com/aidecoe/plymouth-openrc-plugin.git"
SRC_URI=""

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="sys-apps/openrc:="
RDEPEND="${DEPEND}
	sys-boot/plymouth"

src_install() {
	insinto /$(get_libdir)/rc/plugins
	doins plymouth.so
}

pkg_postinst() {
	ewarn "You need to disable 'rc_interactive' feature in /etc/rc.conf to make"
	ewarn "Plymouth work properly with OpenRC init system."

	if has_version sys-apps/systemd; then
		eerror "sys-apps/systemd is installed, please uninstall this package if you"
		eerror "are booting with systemd"
	fi
}
