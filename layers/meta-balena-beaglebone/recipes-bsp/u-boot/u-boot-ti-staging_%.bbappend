UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://0001-Integrate-with-Balena-u-boot-environment.patch \
"

SRC_URI:append:beaglebone-ai64 = " \
    file://0001-Use-the-BBONEAI-64-B0-as-default-board.patch \
    file://0001-Look-for-the-dtb-in-the-ti-directory.patch \
"

# The BB-AI64 creates this file for both archs, remove one.
do_deploy:append:beaglebone-ai64 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}