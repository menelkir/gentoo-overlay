# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="1b5d43b6b376a156e817338cadbbbfdfcb7f873e"

inherit libretro

DESCRIPTION="RetroArch joypad autoconfig files"
HOMEPAGE="https://github.com/libretro/retroarch-joypad-autoconfig"

KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"

RDEPEND="virtual/udev"
DEPEND="${RDEPEND}"

src_install() {
	insinto "${RETROARCH_DATA_DIR}"/autoconfig
	doins "${S}"/udev/*.cfg
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}
