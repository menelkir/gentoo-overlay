# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Emulator of the Amstrad CPC and ZX Spectrum home computers and clones"
HOMEPAGE="https://www.retrovirtualmachine.org/en/"

SRC_URI="amd64? ( https://static.retrovm.org/release/beta1/linux/x64/RetroVirtualMachine.2.0.beta-1.r7.linux.x64.zip )
x86? ( https://static.retrovm.org/release/beta1/linux/x86/RetroVirtualMachine.2.0.beta-1.r7.linux.x86.zip )
"

inherit desktop xdg

LICENSE="CC-BY-NC-ND-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	x11-libs/libX11
	x11-libs/libXinerama
	media-libs/libglvnd
	x11-libs/libXi
	x11-libs/libxcb
	x11-libs/libXext
	x11-libs/libXau
	x11-libs/libXdmcp
	dev-libs/libbsd
"
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install(){
	insinto /opt/RetroVirtualMachine
	doins RetroVirtualMachine
	doins cheatsheet.pdf
	fperms +x /opt/RetroVirtualMachine/RetroVirtualMachine

	domenu "${FILESDIR}"/rvm.desktop

	doicon "${FILESDIR}"/rvm.png
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
