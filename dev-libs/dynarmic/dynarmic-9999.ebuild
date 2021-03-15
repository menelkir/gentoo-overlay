# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils vcs-snapshot git-r3

DESCRIPTION="An ARM dynamic recompiler"
HOMEPAGE="https://github.com/MerryMage/dynarmic"
EGIT_REPO_URI="https://github.com/MerryMage/dynarmic"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="dev-libs/boost:="
DEPEND="${RDEPEND}
	dev-cpp/catch:0
	dev-libs/libfmt:=
	dev-libs/xbyak
"

PATCHES=(
	"${FILESDIR}/dynarmic-skip-bundled-dependencies.patch"
)

src_prepare() {
	cmake-utils_src_prepare
	rm -r externals/{catch,fmt,xbyak} || die
}

src_configure() {
	local mycmakeargs=(
		-DDYNARMIC_SKIP_EXTERNALS=ON
		-DDYNARMIC_TESTS=$(usex test)
		-DDYNARMIC_WARNINGS_AS_ERRORS=OFF
	)
	cmake-utils_src_configure
}

src_install() {
	insinto /usr/include
	doins -r "include/${PN}"

	dolib.so "${BUILD_DIR}/src/lib${PN}.so"
}
