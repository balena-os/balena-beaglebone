RESIN_EXTERNAL_MMC = "0"
RESIN_INTERNAL_MMC = "1"
UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
    file://beaglebone-integrate-with-resin-configuration.patch \
    file://0002-am335x_evm.h-Set-not-env-if-CONFIG_EMMC_BOOT.patch \
    file://U-Boot-1-3-config-am335x_evm-detect-Black-Wireless-using-BWA.patch \
    file://U-Boot-2-3-config-am335x_evm-detect-Green-Wireless-using-GW1.patch \
    file://U-Boot-3-3-config-am335x_evm-detect-BeagleBone-Blue-using-BLA.patch \
    file://0005-Autoboot-keyboard-beaglebone-fixes.patch \
    file://uEnv.txt_internal \
    "

do_deploy_append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
