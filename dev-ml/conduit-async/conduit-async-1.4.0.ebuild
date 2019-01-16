# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Dereference URIs into communication channels for Async or Lwt"
HOMEPAGE="https://github.com/mirage/ocaml-conduit"
SRC_URI="https://github.com/mirage/ocaml-conduit/archive/v${PV}.tar.gz -> ocaml-conduit-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}-ipaddr3"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/core:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/sexplib:=
	dev-ml/conduit:=
	dev-ml/ipaddr:=
	dev-ml/async:=
	dev-ml/async_ssl:=
	dev-ml/num:=

	!dev-ml/ocaml-conduit
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-conduit-${PV}"