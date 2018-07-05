# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="RFC3986 URI parsing library for OCaml"
HOMEPAGE="https://github.com/mirage/ocaml-uri https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-uri/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	>=dev-ml/re-1.7.2:=
	dev-ml/sexplib:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppx_core:=
	dev-ml/ppx_type_conv:=
	dev-ml/stringext:=
	dev-ml/type-conv:=
"
DEPEND="${RDEPEND}
	test? ( >=dev-ml/ounit-1.0.2 )
"

S="${WORKDIR}/ocaml-${P}"
