# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="A binary data serialization format inspired by JSON for OCaml"
HOMEPAGE="https://github.com/mjambon/biniou"
SRC_URI="https://github.com/mjambon/biniou/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="dev-ml/easy-format:="
DEPEND="${RDEPEND}"
