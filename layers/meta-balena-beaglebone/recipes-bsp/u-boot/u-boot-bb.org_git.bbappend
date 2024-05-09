UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

UBOOT_MACHINE = "am335x_evm_config"
UBOOT_MACHINE:beagleplay = "am62x_evm_a53_defconfig"
UBOOT_MACHINE:beagleplay-k3r5 = "am62x_evm_r5_defconfig"

# Use BeagleBone's u-boot mainline fork until uboot-ti-mainline has the Beaglplay support upstreamed
BRANCH:beagleplay= "v2024.04-rc4-BeaglePlay"
BRANCH:beagleplay-k3r5= "v2024.04-rc4-BeaglePlay"
UBOOT_GIT_URI:beagleplay = "git://github.com/beagleboard/u-boot.git"
UBOOT_GIT_URI:beagleplay-k3r5 = "git://github.com/beagleboard/u-boot.git"
SRCREV:beagleplay = "db57f550d6d797ce5062215b852fde1424bfc725"
SRCREV:beagleplay-k3r5 = "db57f550d6d797ce5062215b852fde1424bfc725"

# the latest u-boot needs these for binman
DEPENDS:append:beagleplay-k3r5 = " python3-yamllint-native python3-pathspec-native"

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
    file://balenaos_disableuefi.cfg \
    file://balenaos_bootcommand.cfg \
"

SRC_URI:append:beaglebone-ai64 = " \
    file://0001-Use-the-BBONEAI-64-B0-as-default-board.patch \
    file://0001-Look-for-the-dtb-in-the-ti-directory.patch \
"

# The BB-AI64 creates this file for both archs, remove one.
do_deploy:append:beaglebone-ai64 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}

# The Beagleplay *also* creates this file for both archs, remove one.
do_deploy:append:beagleplay () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}

SRC_URI += "file://0001-Added-device-tree-fix-as-suggested-by-Nishanth-Menon.patch"


do_compile:prepend() {
    echo "PYTHONPATH: ${PYTHONPATH}"
    echo "Listing installed Python modules..."
    python3 -c "help('modules')" > ${WORKDIR}/python-modules-list.txt
    cat ${WORKDIR}/python-modules-list.txt
}

