UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append = " \
    file://0001-Integrate-with-Balena-u-boot-environment.patch \
"

# The BB-AI64 creates this file for both archs, remove one.
do_deploy:append:beaglebone-ai64 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}