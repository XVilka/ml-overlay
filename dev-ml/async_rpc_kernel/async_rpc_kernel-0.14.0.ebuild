# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Platform-independent core of Async RPC library"
HOMEPAGE="https://github.com/janestreet/async_rpc_kernel"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/async_kernel:=
	dev-ml/core_kernel:=
		dev-ml/typerep:=
			dev-ml/base:=
	dev-ml/protocol_version_header:=
	dev-ml/ppx_jane:=
		dev-ml/ppx_inline_test:=
		dev-ml/ocaml-migrate-parsetree:=
		dev-ml/ppxlib:=
"
DEPEND="${RDEPEND}"
