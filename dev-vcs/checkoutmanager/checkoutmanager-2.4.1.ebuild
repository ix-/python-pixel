# Copyright owners: Arfrever Frehtes Taifersar Arahesis
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} )

inherit distutils-r1

GITHUB_USER="reinout"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="2.4.1"

DESCRIPTION="Gives you overview and control over your git/hg/bzr/svn checkouts/clones"
HOMEPAGE="https://github.com/${GITHUB_USER}/${GITHUB_PROJECT}"
SRC_URI="https://github.com/${GITHUB_USER}/${GITHUB_PROJECT}/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="test"

DOCS="README.rst"

python_test() {
	PYTHONPATH=. "${PYTHON}" .checkoutmanager/tests/unit/__init__.py
}
