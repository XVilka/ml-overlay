# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# We are opam
OPAM_INSTALLER_DEP=" "

inherit opam

DESCRIPTION="Core installer for opam packages"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/releases/download/${PV}/opam-full-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

DEPEND="
	!<dev-ml/opam-2.0.0_beta
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opam-full-${PV/_/-}"
OPAM_INSTALLER="${S}/opam-installer"

src_compile() {
	sed -e 's/DUNE = .*$/DUNE = /' -i Makefile.config
	emake lib-ext
	emake DUNE_PROMOTE_ARG="" -j1
}
