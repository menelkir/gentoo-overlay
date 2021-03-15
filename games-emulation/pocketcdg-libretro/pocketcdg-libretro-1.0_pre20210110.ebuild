# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/libretro-pocketcdg"
LIBRETRO_COMMIT_SHA="11eb084f9459fd0836f16490fcc5d152d54ed23c"

inherit libretro-core

DESCRIPTION="PocketCDG libretro port."
HOMEPAGE="https://github.com/libretro/libretro-pocketcdg"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
