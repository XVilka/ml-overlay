# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam multiprocessing

DESCRIPTION="A composable build system for OCaml"
HOMEPAGE="https://github.com/ocaml/dune"
SRC_URI="https://github.com/ocaml/dune/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	!dev-ml/jbuilder"
DEPEND="${DEPEND}
	test? (
		dev-ml/menhir
		dev-ml/reason
		dev-ml/ocaml-migrate-parsetree
		dev-ml/ppx_driver
		dev-ml/odoc
		dev-ml/js_of_ocaml-compiler
		dev-ml/utop
	)
"
OPAMSWITCH="system"

OPAMROOT="${D}"

src_configure() {
	:
}

src_compile() {
	ocaml bootstrap.ml || die
	./dune.exe build -p "${PN}" --profile dune-bootstrap -j $(makeopts_jobs) || die
}
