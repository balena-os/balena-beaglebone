UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

UBOOT_MACHINE = "am335x_evm_config"
UBOOT_MACHINE:beaglebone-play = "am62x_evm_a53_defconfig"
UBOOT_MACHINE:beaglebone-play-k3r5 = "am62x_evm_r5_defconfig"

# Use BeagleBone's u-boot until u-boot-ti-staging has the BBAI64 support upstreamed.
BRANCH:beaglebone-play= "v2023.04-ti-09.00.00.010-BeaglePlay"
UBOOT_GIT_URI:beaglebone-play = "git://git.beagleboard.org/beagleboard/u-boot.git"
SRCREV:beaglebone-play = "4a4f4d88ffb620a3d389900f648abb24008f3ddc"


# Generate an extlinux.conf file
UBOOT_EXTLINUX = "1"
UBOOT_EXTLINUX_ROOT = "root=/dev/mmcblk1p2"
UBOOT_EXTLINUX_KERNEL_ARGS = "rootwait rw rootfstype=ext4"
UBOOT_EXTLINUX_BOOT_FILES = " \
    extlinux.conf;extlinux/extlinux.conf \
    ${KERNEL_IMAGETYPE} \
    ${KERNEL_DEVICETREE} \
"


FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://uEnv.txt_internal \
    file://balenaos_disableuefi.cfg \
    file://balenaos_bootcommand.cfg \
"

SSTATE_ALLOW_OVERLAP_FILES += "${DEPLOY_DIR_IMAGE}/extra_uEnv.txt"
SSTATE_ALLOW_OVERLAP_FILES += "${DEPLOY_DIR_IMAGE}/uEnv.txt_internal"


do_deploy:append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
