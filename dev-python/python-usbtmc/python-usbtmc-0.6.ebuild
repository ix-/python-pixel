# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"
PYTHON_RESTRICTED_ABIS="*-jython *-pypy-*"

inherit distutils

GITHUB_USER="python-ivi"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="v0.6"

DESCRIPTION="pure python USBTMC driver for controlling instruments over USB"
HOMEPAGE="http://alexforencich.com/wiki/en/python-vxi11/start"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DOCS="README.md"
RDEPEND=""
DEPEND="${RDEPEND}"
