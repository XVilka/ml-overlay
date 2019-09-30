# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Synchronous redis bindings for OCaml"
HOMEPAGE="http://0xffea.github.io/ocaml-redis/ https://github.com/0xffea/ocaml-redis/"
SRC_URI="https://github.com/0xffea/ocaml-redis/archive/${PV}.tar.gz -> ocaml-redis-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="dev-ml/redis:=
	!dev-ml/ocaml-redis-sync
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )"

S=${WORKDIR}/ocaml-redis-${PV}
PATCHES=( "${FILESDIR}/ounit2.patch" )
