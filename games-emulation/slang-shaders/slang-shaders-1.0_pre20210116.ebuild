# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="35c2d7064e7a7a9bec76048ed753ea74fe8c1ba0"

inherit libretro

DESCRIPTION="Collection of slang shaders for vulkan backends."
HOMEPAGE="https://github.com/libretro/slang-shaders"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

RDEPEND=""
DEPEND="${RDEPEND}"

src_install() {
	dodir "${LIBRETRO_DATA_DIR}"/"${PN}"
	# Remove unnecessary git files
	[[ ! ${PV} == "1.0_pre"* ]] && rm -r .git
	cp -R "${S}"/* "${D}${LIBRETRO_DATA_DIR}"/"${PN}"/
}
