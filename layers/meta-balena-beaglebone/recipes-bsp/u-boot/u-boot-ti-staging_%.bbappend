UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

UBOOT_MACHINE = "am335x_evm_config"
UBOOT_MACHINE:beaglebone-play = "am62x_evm_a53_defconfig"
UBOOT_MACHINE:beaglebone-play-k3r5 = "am62x_evm_r5_defconfig"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://uEnv.txt_internal \
"

SRC_URI:append:beaglebone-pocket = " \
    file://0001-u-boot-Disable-logging-on-UART0.patch \
    "

do_deploy:append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
