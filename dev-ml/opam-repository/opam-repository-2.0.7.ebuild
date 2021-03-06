# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="opam repository libraries"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_/-}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND="
	dev-ml/opam-format:=
		dev-ml/re:=
	dev-ml/opam-file-format:=
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/opam-${PV/_/-}"
RESTRICT="test"
