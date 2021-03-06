# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/smsplus-gx"
inherit git-r3 libretro-core

DESCRIPTION="Improved port of SMSPlus-GX by gameblabla for libretro"
HOMEPAGE="https://github.com/libretro/smsplus-gx"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
