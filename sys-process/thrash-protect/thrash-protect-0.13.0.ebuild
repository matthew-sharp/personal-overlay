# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple-Stupid user-space program protecting a linux host from thrashing"
HOMEPAGE="https://github.com/tobixen/thrash-protect"
SRC_URI="https://github.com/tobixen/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz" 

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""


DEPEND=">=dev-lang/python-3"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
  newsbin thrash-protect.py thrash-protect
  newinitd ${FILESDIR}/thrash-protect.rc8 thrash-protect
}
