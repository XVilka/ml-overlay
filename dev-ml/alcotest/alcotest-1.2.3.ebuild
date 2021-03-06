# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit jbuilder

DESCRIPTION="A lightweight and colourful test framework"
HOMEPAGE="https://github.com/mirage/alcotest/"
SRC_URI="https://github.com/mirage/alcotest/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-ml/fmt-0.8.8:=
	dev-ml/astring:=
	dev-ml/cmdliner:=
	dev-ml/uuidm:=
	dev-ml/stdlib-shims:=
"
DEPEND="${RDEPEND}
	dev-ml/findlib"
