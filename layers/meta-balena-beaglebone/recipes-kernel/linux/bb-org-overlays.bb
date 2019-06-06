SUMMARY = "DTB overlays for Beaglebone"
HOMEPAGE = "https://github.com/beagleboard/bb.org-overlays"
SECTION = "bootloader"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://debian/copyright;md5=9682d76c70523c172282bb78caa39cdd"

DEPENDS = "dtc-native"

SRCREV = "b5846ff2b7c903e2d702b8b9bd7106961baee6dd"

SRC_URI = " \
    git://github.com/beagleboard/bb.org-overlays.git \
    file://0001-Do-not-use-absolute-path-for-the-dtc-binary.patch \
    file://0001-Install-overlays-in-a-different-folder.patch \
    file://BB-CAN0-00A0.dts \
    file://BB-I2C2N-00A0.dts \
    file://SDS-CAPE-00A0.dts \
    file://BB-UART4-RTSCTS-00A0.dts \
    "

S = "${WORKDIR}/git"

inherit autotools-brokensep

PACKAGES = "${PN}"
FILES_${PN} += "/boot/overlays"

do_compile_prepend () {
    cp ${WORKDIR}/BB-CAN0-00A0.dts ${S}/src/arm/
    cp ${WORKDIR}/BB-I2C2N-00A0.dts ${S}/src/arm/
    cp ${WORKDIR}/SDS-CAPE-00A0.dts ${S}/src/arm/
    cp ${WORKDIR}/BB-UART4-RTSCTS-00A0.dts ${S}/src/arm/
}

PACKAGE_ARCH = "${MACHINE_ARCH}"

COMPATIBLE_MACHINE = "beaglebone"
