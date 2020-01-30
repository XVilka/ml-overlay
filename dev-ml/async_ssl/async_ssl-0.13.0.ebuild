# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="An Async-pipe-based interface with OpenSSL."
HOMEPAGE="https://github.com/janestreet/async_ssl"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/async:=
		dev-ml/core:=
			dev-ml/sexplib:=
				dev-ml/parsexp:=
					dev-ml/base:=
				dev-ml/sexplib0:=
				dev-ml/num:=
		dev-ml/core_kernel:=
		dev-ml/ppx_jane:=
			dev-ml/ppx_inline_test:=
			dev-ml/ocaml-migrate-parsetree:=
	dev-ml/base:=
	dev-ml/core:=
	dev-ml/ppx_jane:=
		dev-ml/ocaml-migrate-parsetree:=
		dev-ml/ppxlib:=
	dev-ml/stdio:=
	dev-ml/ocaml-ctypes:=
	dev-libs/openssl:0=
	dev-ml/dune-configurator:=
"
DEPEND="${RDEPEND}"
