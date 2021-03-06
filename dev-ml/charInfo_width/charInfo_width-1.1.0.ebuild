# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Determine column width for a character"
HOMEPAGE="https://bitbucket.org/zandoye/charinfo_width/src/default/"
SRC_URI="https://bitbucket.org/zandoye/charinfo_width/get/${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND="
	dev-ml/result:=
	dev-ml/camomile:="
DEPEND="${RDEPEND}
	test? ( dev-ml/ppx_expect )"

src_unpack() {
	default
	export S="$(echo "${WORKDIR}/zandoye-charinfo_width-"*)"
}
