UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
    file://0001-Integrate-with-Balena-environment-configuration.patch \
    file://0005-Autoboot-keyboard-beaglebone-fixes.patch \
    file://uEnv.txt_internal \
    "

BRANCH_beaglebone-pocket = "ti-u-boot-2017.01"
SRCREV_beaglebone-pocket = "c68ed086bd00054e28c46e033385f79104c3f84c"

SRC_URI_append_beaglebone-pocket = " \
   file://0001-Add-support-for-BeagleBoard.org-PocketBeagle.patch \
   file://pocketbeagle-integrate-with-balena-configuration.patch \
   "

SRC_URI_remove_beaglebone-pocket = " \
   file://0001-Integrate-with-Balena-environment-configuration.patch \
   "

do_deploy_append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
