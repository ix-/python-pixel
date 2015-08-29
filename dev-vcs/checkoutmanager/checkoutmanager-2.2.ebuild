# Copyright owners: Arfrever Frehtes Taifersar Arahesis
# Distributed under the terms of the GNU General Public License v2

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"
PYTHON_RESTRICTED_ABIS="3.[4-9] *-jython *-pypy-*"
#DISTUTILS_SRC_TEST="nosetests"

inherit distutils
inherit versionator
MY_PN="checkoutmanager"
MY_PV=$(replace_version_separator 2 '.')
MY_P="${MY_PN}-${MY_PV}"
S=${WORKDIR}/${MY_P}

DESCRIPTION="Gives you overview and control over your git/hg/bzr/svn checkouts/clones"
HOMEPAGE="https://pypi.python.org/pypi/checkoutmanager"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE=""
