# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop wxwidgets llvm git-r3

DESCRIPTION="OpenMSX emulator GUI"
HOMEPAGE="https://openmsx.org/"
EGIT_REPO_URI="https://github.com/openMSX/wxcatapult.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/tcl
	dev-libs/libxml2
	>=x11-libs/wxGTK-2.6"
RDEPEND="${DEPEND}
	games-emulation/openmsx"

RESTRICT="strip"

CXX="clang++"

src_prepare() {
	default
	sed -i 's@SYMLINK_FOR_BINARY:=true@SYMLINK_FOR_BINARY:=false@' build/custom.mk
	sed -i 's@/opt/openMSX-Catapult@/usr/share/openmsx-catapult@' build/custom.mk
	sed -i 's@/opt/openMSX/bin/openmsx@/usr/bin/openmsx@' build/custom.mk
	sed -i 's@/opt/openMSX/share@/usr/share/openmsx@' build/custom.mk
	echo 'INSTALL_DOC_DIR:=/usr/share/doc/openmsx-catapult' >> build/custom.mk
	echo 'INSTALL_SHARE_DIR:=/usr/share/openmsx-catapult' >> build/custom.mk
	echo 'INSTALL_BINARY_DIR:=/usr/bin' >> build/custom.mk
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	mkdir -p "${D}/usr/share/applications"
	emake DESTDIR="${D}" install
	sed -i 's@/usr/share/openmsx-catapult/bin/catapult@/usr/bin/catapult@' \
		"${D}/usr/share/applications/openMSX-Catapult.desktop"
	sed -i 's@/usr/share/openmsx-catapult/doc/@/usr/share/doc/openmsx-catapult/@' \
		"${D}/usr/share/applications/openMSX-Catapult.desktop"
}

