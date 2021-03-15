# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="d6aa6fbea5ba63764fa67113e2f7a97ae3ad2703"

inherit vcs-snapshot

DESCRIPTION="Collection of commonly used Cg shaders"
HOMEPAGE="https://github.com/libretro/common-shaders"
SRC_URI="https://github.com/libretro/common-shaders/archive/${LIBRETRO_COMMIT_SHA}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
