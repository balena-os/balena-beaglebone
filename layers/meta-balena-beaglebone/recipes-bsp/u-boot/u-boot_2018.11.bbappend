UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

# add u-boot overlay and capemgr support patches from https://github.com/RobertCNelson/Bootloader-Builder/tree/master/patches/v2018.11
FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += " \
    file://0001-am335x_evm-uEnv.txt-bootz-n-fixes.patch \
    file://0002-U-Boot-BeagleBone-Cape-Manager.patch \
    file://uEnv.txt_internal \
"

# rework meta-resin patch whose context is different now in u-boot v2018.11
SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"
SRC_URI += " \
	file://0003-resin-specific-env-integration-kconfig_REWORKED.patch \
	file://0004-Integrate-with-Balena-environment-configuration.patch \
	file://0001-beaglebone-black-Use-Balena-vars-for-mmc-boot.patch \
	file://0001-Load-uboot-device-tree-overlays.patch \
	file://0005-env_default.h-Add-support-for-OS_KERNEL_CMDLINE.patch \
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

do_generate_resin_uboot_configuration_append() {
    fl = open(os.path.join(d.getVar('S'), 'include', 'config_resin.h'), 'a')
    fl.write("#define %s %s\n" % ('OS_KERNEL_CMDLINE', d.getVar('OS_KERNEL_CMDLINE')))
}
