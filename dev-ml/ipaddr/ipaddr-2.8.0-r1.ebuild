# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="OCaml library for manipulation of IP (and MAC) address representations"
HOMEPAGE="https://github.com/mirage/ocaml-ipaddr"
SRC_URI="https://github.com/mirage/ocaml-ipaddr/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ocamlopt test"

RDEPEND="dev-ml/sexplib:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppx_core:=
	dev-ml/ppx_type_conv:=
	dev-lang/ocaml:=[ocamlopt?]
	!dev-ml/ocaml-ipaddr
"
DEPEND="${RDEPEND}
	dev-ml/findlib
	test? ( dev-ml/ounit )
"

S="${WORKDIR}/ocaml-${P}"
