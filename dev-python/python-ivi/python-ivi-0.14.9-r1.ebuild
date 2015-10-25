# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#$Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} )

inherit distutils-r1

GITHUB_USER="python-ivi"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="v0.14.9"

DESCRIPTION="Python Interchangeable Virtual Instrument Library"
HOMEPAGE="http://alexforencich.com/wiki/en/python-ivi/start"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gpib pyvisa serial usbtmc vxi11 doc"

RDEPEND="
	dev-python/numpy[${PYTHON_USEDEP}]
	serial? ( dev-python/pyserial[${PYTHON_USEDEP}] )
	gpib? ( sci-libs/linux-gpib[${PYTHON_USEDEP}] )
	pyvisa? ( dev-python/pyvisa[${PYTHON_USEDEP}] )
	usbtmc? ( dev-python/python-usbtmc[${PYTHON_USEDEP}] )
	vxi11? ( dev-python/python-vxi11[${PYTHON_USEDEP}] )
"
DEPEND="${RDEPEND}
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"

DOCS="README.md"

python_compile_all() {
	if use doc; then
		sphinx-build -b html -c doc/ \
			doc/ doc/html/ || die "docs build failed"
	fi
}

python_install_all() {
	use doc && HTML_DOCS=( doc/html. )
	distutils-r1_python_install_all
}
