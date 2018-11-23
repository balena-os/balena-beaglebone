RESIN_EXTERNAL_MMC = "0"
RESIN_INTERNAL_MMC = "1"
UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
    file://0001-Integrate-with-Balena-environment-configuration.patch \
    file://0005-Autoboot-keyboard-beaglebone-fixes.patch \
    file://uEnv.txt_internal \
    "

do_deploy_append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
