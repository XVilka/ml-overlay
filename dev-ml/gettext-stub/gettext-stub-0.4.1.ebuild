# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Provides support for internationalization of OCaml program"
HOMEPAGE="https://github.com/gildor478/ocaml-gettext"
SRC_URI="https://github.com/gildor478/ocaml-gettext/releases/download/v${PV}/gettext-v${PV}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-ml/gettext:=
		>=dev-ml/fileutils-0.4.0:=
	"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )"
S="${WORKDIR}/gettext-v${PV}"

PATCHES=( "${FILESDIR}/ounit2.patch" )
