# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Library for creating GraphQL servers in OCaml"
HOMEPAGE="https://github.com/andreas/ocaml-graphql-server"
SRC_URI="https://github.com/andreas/ocaml-graphql-server/archive/${PV}.tar.gz -> ocaml-graphql-server-${PV}.tar.gz"
LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/angstrom:=
	dev-ml/sexplib:=
	dev-ml/ppx_sexp_conv:="
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )"
S="${WORKDIR}/ocaml-graphql-server-${PV}"
