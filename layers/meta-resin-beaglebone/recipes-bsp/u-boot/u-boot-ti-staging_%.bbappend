FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
    file://0002-am335x_evm.h-Set-not-env-if-CONFIG_EMMC_BOOT.patch \
    file://0005-Autoboot-keyboard-beaglebone-fixes.patch \
    file://uEnv.txt_internal \
    "

SRC_URI_append_beaglebone-green-wifi = " \
    file://0003-am335x_evm.h-Change-default-dtb-for-Beaglebone-Green-Wireless.patch"

SRC_URI_append_beaglebone-green = " \
    file://0004-am335x_evm.h-Change-default-dtb-for-Beaglebone-Green.patch"

do_deploy_append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
