# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"
PYTHON_RESTRICTED_ABIS="*-jython *-pypy-*"

inherit distutils

GITHUB_USER="maebert"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="1.9.7"

DESCRIPTION="A simple command line journal application that stores your journal in a plain text file."
HOMEPAGE="https://maebert.github.io/jrnl/ http://maebert.github.io/jrnl"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DOCS="README.md"
RDEPEND=""
DEPEND="${RDEPEND}"
