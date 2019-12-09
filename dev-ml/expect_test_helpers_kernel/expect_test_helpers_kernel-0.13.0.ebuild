# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="A set of small helper functions for use in expect test"
HOMEPAGE="https://github.com/janestreet/expect_test_helpers_kernel"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/base:=
	dev-ml/base_quickcheck:=
	dev-ml/core_kernel:=
	dev-ml/ppx_jane:=
		dev-ml/ocaml-migrate-parsetree:=
		dev-ml/ppxlib:=
	dev-ml/sexp_pretty:=
	dev-ml/re:=
"
DEPEND="${RDEPEND}"
