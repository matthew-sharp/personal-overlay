# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
ansi_term-0.9.0
atty-0.2.14
backtrace-0.3.45
backtrace-sys-0.1.34
bitflags-0.8.2
bitflags-0.9.1
cc-1.0.50
cfg-if-0.1.10
clap-2.23.3
error-chain-0.12.2
hermit-abi-0.1.8
kernel32-sys-0.2.2
libc-0.2.67
nix-0.9.0
rustc-demangle-0.1.16
strsim-0.6.0
term_size-0.3.1
unicode-segmentation-1.6.0
unicode-width-0.1.7
vec_map-0.7.0
version_check-0.9.1
void-1.0.2
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"
inherit cargo

DESCRIPTION="Linux utility for controlling RGB header on select MSI motherboards."
HOMEPAGE="https://github.com/nagisa/msi-rgb"
SRC_URI="https://github.com/nagisa/${PN}/archive/master.tar.gz -> msi-rgb.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack () {
	cargo_src_unpack
	mv "${PN}-master"/* "${P}"
}
