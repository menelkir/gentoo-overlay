# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/retrodream"
LIBRETRO_COMMIT_SHA="bf4d812daf326c56e99208a4c30acae1475fd701"

inherit libretro-core

DESCRIPTION="libretro implementation of redream. (SEGA Dreamcast)"
HOMEPAGE="https://github.com/libretro/retrodream"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"

IUSE="gles2 opengl"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

PATCHES=("${FILESDIR}/redream-libretro-Makefile.patch")

src_prepare() {
	libretro-core_src_prepare
	#fixing ARCH detection
	sed -i deps/libretro/Makefile \
		-e 's:$(ARCH):$(REAL_ARCH):' \
		-e 's:ARCH = $(shell uname -m):REAL_ARCH = $(shell uname -m):' \
		|| die '"sed" failed'
	sed -i deps/libretro/Makefile.common \
		-e 's:ifeq ($(WITH_DYNAREC), arm):ifneq (,$(findstring arm,$(WITH_DYNAREC))):' \
		-e 's:-I$(CORE_DIR)/deps/xbyak-4.901 \\:-I$(CORE_DIR)/deps/xbyak \\:' \
		|| die '"sed" failed'
}

src_compile() {
	myemakeargs=(
		$(usex gles2 "FORCE_GLES=1" "FORCE_GLES=0")
		$(usex opengl "HAVE_OPENGL=1" "HAVE_OPENGL=0")
		$(usex debug "DEBUG=1" "")
		)
	use custom-cflags || filter-flags -O*
	emake CC=$(tc-getCC) CXX=$(tc-getCXX) \
		"${myemakeargs[@]}" \
		-f deps/libretro/Makefile
}

pkg_postinst() {
	if [[ "${first_install}" == "1" ]]; then
		ewarn ""
		ewarn "This core needs the following files in the \"'system_directory'/dc\" directory"
		ewarn "dc_boot.bin (Dreamcast BIOS), md5: e10c53c2f8b90bab96ead2d368858623"
		ewarn "dc_flash.bin (Date/Time/Language), md5: 0a93f7940c455905bea6e392dfde92a4"
		ewarn ""
	fi
}
