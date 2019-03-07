# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Compile-time configuration for Jane Street libraries"
HOMEPAGE="https://github.com/janestreet/jst-config"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/ppx_assert:=
	dev-ml/stdio:=
"
RDEPEND="${DEPEND}"
