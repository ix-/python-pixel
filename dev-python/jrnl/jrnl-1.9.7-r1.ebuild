# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} )

inherit distutils-r1

GITHUB_USER="maebert"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="1.9.7"

DESCRIPTION="A simple command line journal application that stores your journal in a plain text file."
HOMEPAGE="https://maebert.github.io/jrnl/ http://maebert.github.io/jrnl"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="doc"

RDEPEND=""
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
	distutils-r1_python_install_all
}
