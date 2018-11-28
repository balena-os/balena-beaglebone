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
    file://generic-board-startup.service \
    file://SoftAp0 \
    "

RDEPENDS_${PN} = " bash systemd"

FILES_${PN} = " \
    /opt/scripts/boot/* \
    ${sysconfdir}/dnsmasq.d/SoftAp0 \
    "

S = "${WORKDIR}/git"

do_install () {
   install -d ${D}/opt/scripts/boot
   install -d ${D}/${systemd_unitdir}/system
   install -m 0755 ${S}/boot/generic-startup.sh ${D}/opt/scripts/boot/generic-startup.sh
   install -m 0755 ${S}/boot/am335x_evm.sh ${D}/opt/scripts/boot/am335x_evm.sh
   install -m 0755 ${S}/boot/autoconfigure_usb0.sh ${D}/opt/scripts/boot/autoconfigure_usb0.sh
   install -m 0755 ${S}/boot/autoconfigure_usb1.sh ${D}/opt/scripts/boot/autoconfigure_usb1.sh
   install -m 0755 ${WORKDIR}/generic-board-startup.service ${D}/${systemd_unitdir}/system/generic-board-startup.service
   install -d ${D}${sysconfdir}/dnsmasq.d/
   install -m 0755 ${WORKDIR}/SoftAp0 ${D}${sysconfdir}/dnsmasq.d/SoftAp0
}

SYSTEMD_SERVICE_${PN} = "generic-board-startup.service"

COMPATIBLE_MACHINE = "beaglebone-pocket"
