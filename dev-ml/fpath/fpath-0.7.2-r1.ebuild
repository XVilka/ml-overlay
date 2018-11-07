# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam

DESCRIPTION="File system paths for OCaml"
HOMEPAGE="http://erratique.ch/software/fpath https://github.com/dbuenzli/fpath"
SRC_URI="http://erratique.ch/software/fpath/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-ml/result:=
	dev-ml/astring:=
"
DEPEND="${RDEPEND}
	dev-ml/topkg
	dev-ml/ocamlbuild
	dev-ml/findlib
"

src_compile() {
	ocaml pkg/pkg.ml build || die
}
