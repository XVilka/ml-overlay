# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="PRNG that can be split into independent streams"
HOMEPAGE="https://github.com/janestreet/splittable_random"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/base:=
	dev-ml/ppx_assert:=
	dev-ml/ppx_bench:=
	dev-ml/ppx_inline_test:=
	dev-ml/ppx_sexp_message:=
"
DEPEND="${RDEPEND}"
