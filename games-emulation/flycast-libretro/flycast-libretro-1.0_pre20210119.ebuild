# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/flycast"
LIBRETRO_COMMIT_SHA="ea1278ee1faf31068ff3b9122779ad5d771d88cc"

inherit libretro-core toolchain-funcs

DESCRIPTION="Multiplatform Sega Dreamcast emulator"
HOMEPAGE="https://github.com/libretro/flycast"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="virtual/opengl"
DEPEND="${RDEPEND}"

src_compile() {
	local ARCH=$(tc-arch)
	if [[ "${ARCH}" == "amd64" ]]; then
		ARCH="x86_64"
	fi

	libretro-core_src_compile
}

pkg_preinst() {
	if ! has_version "=${CATEGORY}/${PN}-${PVR}"; then
		first_install="1"
	fi
}