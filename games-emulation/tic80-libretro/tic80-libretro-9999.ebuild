# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="nesbox/TIC-80"

inherit cmake-utils libretro-core toolchain-funcs

DESCRIPTION="Nintendo 3DS for libretro"
HOMEPAGE="https://github.com/nesbox/TIC-80"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND=""
DEPEND="${RDEPEND}"

# S=${WORKDIR}/TIC-80-${LIBRETRO_COMMIT_SHA}

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DBUILD_PLAYER=OFF
		-DBUILD_SOKOL=OFF
		-DBUILD_SDL=OFF
		-DBUILD_DEMO_CARTS=OFF
		-DBUILD_LIBRETRO=ON
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	LIBRETRO_CORE_LIB_FILE="${WORKDIR}/${P}_build/lib/tic80_libretro.so"
	libretro-core_src_install
}
