# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis eutils

DESCRIPTION="Ocaml implementation of expect to help building unitary testing"
HOMEPAGE="http://forge.ocamlcore.org/projects/ocaml-expect/"
SRC_URI="http://forge.ocamlcore.org/frs/download.php/1736/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND="
	dev-ml/batteries:=
	dev-ml/pcre:="
DEPEND="${RDEPEND}
	test? ( >=dev-ml/ounit2-2.0.0 )"

DOCS=( "README.txt" "CHANGES.txt" "AUTHORS.txt" )
PATCHES=( "${FILESDIR}/ounit2.patch" )
