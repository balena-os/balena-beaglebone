FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

DESCRIPTION = "Startup and config files for enabling usb related functionality for am335x, like for instance usb ethernet"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit allarch systemd

SRC_URI = "git://git@github.com/RobertCNelson/boot-scripts.git;branch=master;protocol=ssh"
SRCREV = "e9bcff232834702c1c810710706ee815d77b080b"

SRC_URI[md5sum] = "06ba0d39f677f1ed62b25ee1976f96f3"

SRC_URI_append = " \
    file://0001-Adapted-scripts-for-Balena-usage.patch \
    file://usb-eth-startup.service \
    "

RDEPENDS_${PN} = " bash systemd"

FILES_${PN} = " \
    /opt/scripts/boot/am335x_evm.sh \
    "

S = "${WORKDIR}/git"

do_install () {
   install -d ${D}/opt/scripts/boot
   install -d ${D}/${systemd_unitdir}/system
   install -m 0755 ${S}/boot/am335x_evm.sh ${D}/opt/scripts/boot/am335x_evm.sh
   install -m 0755 ${WORKDIR}/usb-eth-startup.service ${D}/${systemd_unitdir}/system/usb-eth-startup.service
}

SYSTEMD_SERVICE_${PN} = "usb-eth-startup.service"

COMPATIBLE_MACHINE = "beaglebone-pocket"
