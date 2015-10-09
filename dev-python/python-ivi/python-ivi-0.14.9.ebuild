# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"


inherit distutils

GITHUB_USER="${PN}"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="v0.14.9"

DESCRIPTION="Python Interchangeable Virtual Instrument Library"
HOMEPAGE="http://alexforencich.com/wiki/en/python-ivi/start"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DOCS="README.md"
DEPEND="$(python_abi_depend >=dev-python/numpy-1.8.2-r1000)"
RDEPEND="${DEPEND}"
