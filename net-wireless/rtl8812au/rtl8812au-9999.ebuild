# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit linux-info linux-mod git-r3

DESCRIPTION="Driver for AC1200 (801.11ac) Wireless Dual-Band USB Adapter"
#HOMEPAGE="https://github.com/abperiasamy/rtl8812AU_8821AU_linux"
#EGIT_REPO_URI="https://github.com/abperiasamy/rtl8812AU_8821AU_linux.git"
HOMEPAGE="https://github.com/gnab/rtl8812au"
EGIT_REPO_URI="https://github.com/gnab/rtl8812au.git"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

MODULE_NAMES="rtl8812au(net/wireless:)"
BUILD_TARGETS="clean modules"
