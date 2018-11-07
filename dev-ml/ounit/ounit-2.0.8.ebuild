# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

OASIS_BUILD_DOCS=1

inherit oasis

DESCRIPTION="Unit testing framework for OCaml"
HOMEPAGE="http://ounit.forge.ocamlcore.org/ https://github.com/gildor478/ounit"
SRC_URI="https://github.com/gildor478/ounit/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
DEPEND="dev-ml/findlib:="
RDEPEND="${DEPEND}"
DEPEND="${DEPEND} dev-ml/oasis"
IUSE=""

DOCS=( "doc/manual.txt" "changelog" )
