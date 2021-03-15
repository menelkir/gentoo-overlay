# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit desktop python-any-r1 readme.gentoo-r1 git-r3 llvm

DESCRIPTION="MSX emulator that aims for perfection"
HOMEPAGE="http://openmsx.org/"
EGIT_REPO_URI="https://github.com/openMSX/openMSX.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
		media-libs/libogg
		media-libs/libtheora
		media-libs/libvorbis
		dev-lang/tcl:0=
		dev-libs/libxml2
		media-libs/libpng:0=
		media-libs/libsdl2[sound,video]
		media-libs/glew:0=
		media-libs/sdl2-image[png]
		media-libs/sdl2-ttf
		virtual/opengl
"
DEPEND="
		${RDEPEND}
		${PYTHON_DEPS}
		sys-devel/clang
		sys-devel/llvm
"

CXX="clang++"

DOC_CONTENTS="
If you want to if you want to emulate real MSX systems and not
only the free C-BIOS machines, put the system ROMs in one of
the following directories: /usr/share/${PN}/systemroms
or ~/.openMSX/share/systemroms
"

src_prepare() {
		default
		sed -i 's@SYMLINK_FOR_BINARY:=true@SYMLINK_FOR_BINARY:=false@' build/custom.mk
		sed -i 's@INSTALL_BASE:=/opt/openMSX@INSTALL_BASE:=/usr/share/openmsx@' build/custom.mk
		echo 'INSTALL_DOC_DIR:=/usr/share/doc/openmsx' >> build/custom.mk
		echo 'INSTALL_SHARE_DIR:=/usr/share/openmsx' >> build/custom.mk
		echo 'INSTALL_BINARY_DIR:=/usr/bin' >> build/custom.mk
}

src_compile() {
	emake \
		CXXFLAGS="${CXXFLAGS}" \
		INSTALL_SHARE_DIR=/usr/share/${PN} \
		V=1
}

src_install() {
	emake \
		V=1 \
		INSTALL_BINARY_DIR="${ED}/usr/bin" \
		INSTALL_SHARE_DIR="${ED}/usr/share/${PN}" \
		INSTALL_DOC_DIR="${D}"/usr/share/doc/${PF} \
		install

	einstalldocs
	readme.gentoo_create_doc

	for i in 16 32 48 64 128 256 ; do
		newicon -s "${i}" "share/icons/openMSX-logo-${i}.png" "${PN}.png"
	done
	make_desktop_entry "${PN}" "openMSX"
}

pkg_postinst() {
	readme.gentoo_print_elog
}
