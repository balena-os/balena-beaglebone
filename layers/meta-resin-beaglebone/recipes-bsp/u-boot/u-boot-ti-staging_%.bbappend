RESIN_EXTERNAL_MMC = "0"
RESIN_INTERNAL_MMC = "1"
UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
    file://beaglebone-integrate-with-resin-configuration.patch \
    file://0002-am335x_evm.h-Set-not-env-if-CONFIG_EMMC_BOOT.patch \
    file://0005-Autoboot-keyboard-beaglebone-fixes.patch \
    file://uEnv.txt_internal \
    "

SRC_URI_append_beaglebone-green-wifi = " \
    file://0003-am335x_evm.h-Change-default-dtb-for-Beaglebone-Green-Wireless.patch"

do_deploy_append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
