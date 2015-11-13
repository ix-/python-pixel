# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_{6,7} python3_{3,4} )

inherit distutils-r1

GITHUB_USER="lebigot"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="2.4.6.1"

DESCRIPTION="Transparent calculations with uncertainties on the quantities involved"
HOMEPAGE="http://pythonhosted.org/uncertainties/"
SRC_URI="
mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz
https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="numpy doc"

RDEPEND="
    numpy? ( dev-python/numpy[${PYTHON_USEDEP}] )
	"
DEPEND="${DEPEND}
   doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
   "

DOCS="README.rst"

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
