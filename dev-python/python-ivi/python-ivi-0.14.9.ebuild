# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"
PYTHON_RESTRICTED_ABIS="*-jython *-pypy-*"

inherit distutils

GITHUB_USER="python-ivi"
GITHUB_PROJECT="${PN}"
GITHUB_TAG="v0.14.9"

DESCRIPTION="Python Interchangeable Virtual Instrument Library"
HOMEPAGE="http://alexforencich.com/wiki/en/python-ivi/start"
SRC_URI="https://github.com/$GITHUB_USER/$GITHUB_PROJECT/archive/${GITHUB_TAG}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="gpib pyvisa serial usbtmc vxi11"

DOCS="README.md"
RDEPEND="$(python_abi_depend dev-python/numpy)
serial? ( $(python_abi_depend dev-python/pyserial) )
gpib? ( $(python_abi_depend sci-libs/linux-gpib) )
pyvisa? ( $(python_abi_depend dev-python/pyvisa) )
usbtmc? ( $(python_abi_depend dev-python/python-usbtmc) )
vxi11? ( $(python_abi_depend dev-python/python-vxi11) )"
DEPEND="${RDEPEND}"
