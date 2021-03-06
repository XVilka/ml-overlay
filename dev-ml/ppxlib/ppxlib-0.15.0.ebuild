# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Base library and tools for ppx rewriters "
HOMEPAGE="https://github.com/ocaml-ppx/ppxlib"
SRC_URI="https://github.com/ocaml-ppx/ppxlib/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

DEPEND="
	>=dev-ml/base-0.11.0:=
	>=dev-ml/ocaml-compiler-libs-0.11:=
	dev-ml/ocaml-migrate-parsetree:=
		dev-ml/result:=
	dev-ml/ppx_derivers:=
	>=dev-ml/stdio-0.11.0:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/cinaps )"
