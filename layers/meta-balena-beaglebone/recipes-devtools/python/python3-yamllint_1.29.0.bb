DESCRIPTION = "A linter for yaml files"
HOMEPAGE = "https://github.com/adrienverge/yamllint"
LICENSE = "GPL-3.0-only"
LIC_FILES_CHKSUM = "file://LICENSE;md5=1ebbd3e34237af26da5dc08a4e440464"

inherit pypi setuptools3

PYPI_PACKAGE = "yamllint"

SRC_URI[sha256sum] = "66a755d5fbcbb8831f1a9568676329b5bac82c37995bcc9afd048b6459f9fa48"

DEPENDS += "python3-setuptools-scm-native"
RDEPENDS:${PN} += "python3-pyyaml"

BBCLASSEXTEND = "native nativesdk"
