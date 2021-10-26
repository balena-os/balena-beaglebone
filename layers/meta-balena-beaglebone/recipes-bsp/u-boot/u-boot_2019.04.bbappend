UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += " \
    file://0001-am335x_evm-uEnv.txt-bootz-n-fixes.patch \
    file://0002-U-Boot-BeagleBone-Cape-Manager.patch \
    file://uEnv.txt_internal \
"

# Added u-boot overlay and capemgr support patches from https://github.com/RobertCNelson/Bootloader-Builder/tree/master/patches/v2019.14
SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"
SRC_URI += " \
	file://0003-resin-specific-env-integration-kconfig_REWORKED.patch \
	file://0001-beaglebone-black-Use-Balena-vars-for-mmc-boot.patch \
	file://0001-Load-uboot-device-tree-overlays.patch \
	file://0005-env_default.h-Add-support-for-OS_KERNEL_CMDLINE.patch \
	file://0004-Integrate-with-Balena-environment-configuration.patch \
	file://0006-Fix-boot-with-cape.patch \
"

SRC_URI_append_beaglebone-pocket = " \
	file://am335x_evm-autoboot-zero.patch \
"

SRC_URI_append_beagleboard-xm = " \
	file://0001-all-mem.patch \
	file://beagle-xm--Balena-environment.patch \
"

do_deploy_append() {
    install ${B}/MLO ${DEPLOYDIR}
    install ${B}/u-boot.img ${DEPLOYDIR}
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}

UBOOT_MACHINE = "am335x_boneblack_config"

# Necessary for Bluetooth to work on this board
OS_KERNEL_CMDLINE_append = " coherent_pool=1M net.ifnames=0  lpj=1990656 rng_core.default_quality=100 "
