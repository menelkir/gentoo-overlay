# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

RAZERCHROMA_SHA="99045142479ba0e2fc3b9cccb72e348c67cd5829"
LIBMPV_SHA="b0eae77cf6dc59aaf142b7d079cb13a0904fd3ee"
SINGLEAPPLICATION_SHA="aede311d28d20179216c5419b581087be2a8409f"

DESCRIPTION="Watch videos, movies, TV series and TV channels instantly. (Beta Version)"
HOMEPAGE="https://www.stremio.com"
SRC_URI="https://github.com/Stremio/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/Ivshti/razerchroma/archive/${RAZERCHROMA_SHA}.tar.gz -> razerchroma-${RAZERCHROMA_SHA}.tar.gz
	https://github.com/Ivshti/libmpv/archive/${LIBMPV_SHA}.tar.gz -> libmpv-${LIBMPV_SHA}.tar.gz
	https://github.com/itay-grudev/SingleApplication/archive/${SINGLEAPPLICATION_SHA}.tar.gz -> singleapplcation-${SINGLEAPPLICATION_SHA}.tar.gz
	https://dl.strem.io/four/v${PV}/server.js
	https://dl.strem.io/four/v${PV}/stremio.asar
"

inherit desktop qmake-utils xdg-utils

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	net-misc/wget
	net-libs/nodejs
	media-video/ffmpeg
	dev-qt/qtcore:5
	dev-qt/qtnetwork:5
	dev-qt/qtgui:5
	dev-qt/qtwebengine:5
	dev-qt/qtwidgets:5
	dev-qt/qtwebchannel:5
	dev-qt/qtdeclarative:5
	dev-qt/qtquickcontrols:5
	dev-qt/qtquickcontrols2:5
	dev-qt/qttranslations:5
	media-video/mpv[libmpv]
	dev-libs/openssl
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	unpack "${P}".tar.gz
	unpack razerchroma-"${RAZERCHROMA_SHA}".tar.gz
	unpack libmpv-"${LIBMPV_SHA}".tar.gz
	unpack singleapplcation-"${SINGLEAPPLICATION_SHA}".tar.gz
	rm -fr ${S}/deps/*
	cp -r ${WORKDIR}/razerchroma-${RAZERCHROMA_SHA} ${S}/deps/chroma
	cp -r ${WORKDIR}/libmpv-${LIBMPV_SHA} ${S}/deps/libmpv
	cp -r ${WORKDIR}/SingleApplication-${SINGLEAPPLICATION_SHA} ${S}/deps/singleapplication
}

src_prepare() {
	eapply "${FILESDIR}/makefile.patch"
	eapply_user
}

src_configure() {
	eqmake5
}

src_compile() {
	emake
}

src_install() {
	emake INSTALL_ROOT="$D" DESTDIR="${D}" install
	dosym /opt/stremio/smartcode-stremio.desktop /usr/share/applications/smartcode-stremio.desktop
	dosym /opt/stremio/stremio /opt/bin/stremio
	dosym /usr/bin/node /opt/stremio/node
	doicon "${FILESDIR}"/smartcode-stremio.png

	insinto /opt/stremio/
		doins "${DISTDIR}"/server.js
		doins "${DISTDIR}"/stremio.asar

}

pkg_postinst() {
	xdg_desktop_database_update
}