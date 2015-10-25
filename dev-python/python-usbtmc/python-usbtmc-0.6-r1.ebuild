# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} )

inherit distutils-r1

GITHUB_USER="python-ivi"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="v0.6"

DESCRIPTION="pure python USBTMC driver for controlling instruments over USB"
HOMEPAGE="http://alexforencich.com/wiki/en/python-vxi11/start"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="doc"

RDEPEND="dev-python/pyusb"
DEPEND="${RDEPEND}"

DOCS="README.md"

python_compile_all() {
	if use doc; then
		sphinx-build -b html -c doc/ \
		doc/ doc/html || die "docs build failed"
	fi
}

python_install_all() {
	use doc && HTML_DOCS=( doc/html/. )
}
