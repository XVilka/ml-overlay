# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Optional compilation for OCaml"
HOMEPAGE="https://github.com/janestreet/ppx_optcomp"
SRC_URI="https://github.com/janestreet/ppx_optcomp/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/stdio:=
	dev-ml/ppxlib:=
		dev-ml/ocaml-migrate-parsetree:=
			dev-ml/result:=
"
RDEPEND="${DEPEND}"
