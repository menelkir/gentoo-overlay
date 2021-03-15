# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/ThePowderToy"

inherit cmake-utils libretro-core toolchain-funcs

DESCRIPTION="Nintendo 3DS for libretro"
HOMEPAGE="https://github.com/libretro/ThePowderToy"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

RDEPEND=""
DEPEND="${RDEPEND}"

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	LIBRETRO_CORE_LIB_FILE="${WORKDIR}/${P}_build/src/thepowdertoy_libretro.so"
	libretro-core_src_install
}
