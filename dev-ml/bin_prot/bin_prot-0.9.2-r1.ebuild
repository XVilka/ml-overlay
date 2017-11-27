# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Binary protocol generator"
HOMEPAGE="https://github.com/janestreet/bin_prot"
SRC_URI="https://github.com/janestreet/bin_prot/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-lang/ocaml:=
	dev-ml/base:=
	dev-ml/ppx_compare:=
	dev-ml/ppx_custom_printf:=
	dev-ml/ppx_core:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_fields_conv:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppx_type_conv:=
	dev-ml/ppx_variants_conv:=
	dev-ml/sexplib:=
	dev-ml/ocaml-migrate-parsetree:=

	!dev-ml/bin-prot
"
DEPEND="${RDEPEND}"
