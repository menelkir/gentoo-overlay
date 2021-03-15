# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_7 )

inherit distutils-r1

DESCRIPTION="Sophisticated chroot/build/flash tool to develop and install postmarketOS."
HOMEPAGE="https://postmarketos.org/ https://pypi.org/project/pmbootstrap/"
SRC_URI="https://files.pythonhosted.org/packages/fb/04/b7e2c289adc9d1cdbe9612730c2cbcc0de287b9ea33d10026a1cafbe583c/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
