# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Two factor authentication desktop application"
HOMEPAGE="https://authy.com/"

_SNAPID="H8ZpNgIoPyvmkgxOWw5MSzsXK1wRZiHn"
_SNAPREV="5"
SRC_URI="https://api.snapcraft.io/api/v1/snaps/download/${_SNAPID}_${_SNAPREV}.snap -> ${P}.snap"

LICENSE="Unknown"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
		sys-fs/squashfs-tools[lzo]
		dev-libs/nss
		x11-libs/gtk+:3
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	unsquashfs -q -f -d ${WORKDIR}/${P} ${DISTDIR}/${P}.snap
}

src_install() {
	dodir /opt/authy
	cp -R "${WORKDIR}/${P}" "${D}/opt/" || die "Install failed!"
	dosym /opt/${P}/authy /opt/bin/authy
	insinto /usr/share/applications
		doins ${FILESDIR}/authy.desktop
	doicon ${FILESDIR}/authy.png
}
