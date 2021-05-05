# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

WX_GTK_VER=3.0-gtk3

inherit desktop wxwidgets llvm

DESCRIPTION="OpenMSX emulator GUI"
HOMEPAGE="https://openmsx.org/"
SRC_URI="https://github.com/openMSX/openMSX/releases/download/RELEASE_16_0/${PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/tcl
	dev-libs/libxml2"
RDEPEND="${DEPEND}
	games-emulation/openmsx"

RESTRICT="strip"

CXX="clang++"

src_prepare() {
	default
	sed -i 's@SYMLINK_FOR_BINARY:=true@SYMLINK_FOR_BINARY:=false@' build/custom.mk
	sed	-i 's@/opt/openMSX-Catapult@/usr/share/openmsx-catapult@' build/custom.mk
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
