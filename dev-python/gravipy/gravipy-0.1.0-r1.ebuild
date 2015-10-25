# Copyright owners: Arfrever Frehtes Taifersar Arahesis
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4,5} )
inherit distutils-r1
inherit versionator

MY_PN="GraviPy"
MY_PV=$(replace_version_separator 2 '.')
MY_P="${MY_PN}-${MY_PV}"
S=${WORKDIR}/${MY_P}

DESCRIPTION="Tensor Calculus Package for General Relativity"
HOMEPAGE="https://pypi.python.org/pypi/GraviPy/0.1.0"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="ipython"

RDEPEND=">=dev-python/sympy-0.7.3[${PYTHON_USEDEP}]
        ipython? ( >=dev-python/ipython-1.1.0[${PYTHON_USEDEP}] )"
DEPEND="${RDEPEND}"
