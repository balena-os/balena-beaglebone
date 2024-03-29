SECTION = "kernel"
DESCRIPTION = "Linux kernel for beaglebone boards"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

inherit kernel

require recipes-kernel/linux/setup-defconfig.inc

DEPENDS += "lzop-native"

# Look in the generic major.minor directory for files
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-5.10:"

KERNEL_DEVICETREE:beaglebone = "am335x-bone.dtb am335x-boneblack.dtb am335x-boneblack-uboot-univ.dtb am335x-boneblack-wireless.dtb am335x-boneblue.dtb am335x-bonegreen.dtb am335x-bonegreen-wireless.dtb am335x-bonegreen-wireless-uboot-univ.dtb"

KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

COMPATIBLE_MACHINE = "beaglebone|beagleboard-xm"

S = "${WORKDIR}/git"

TAG = "5.10.162-ti-r59"

PV = "5.10.162+git${SRCPV}"

# Append to the MACHINE_KERNEL_PR so that a new SRCREV will cause a rebuild
MACHINE_KERNEL_PR:append = "b"
PR = "${MACHINE_KERNEL_PR}"

KERNEL_CONFIG_DIR = "${S}/ti_config_fragments"

# SoC specific config fragments are not enabled yet
#KERNEL_CONFIG_FRAGMENTS:append:ti33x = " ${KERNEL_CONFIG_DIR}/am33xx_only.cfg"
#KERNEL_CONFIG_FRAGMENTS:append:ti43x = " ${KERNEL_CONFIG_DIR}/am43xx_only.cfg"

MULTI_CONFIG_BASE_SUFFIX = ""

KERNEL_GIT_URI = "git://github.com/beagleboard/linux.git"
KERNEL_GIT_PROTOCOL = "https"
SRC_URI += " \
    ${KERNEL_GIT_URI};protocol=${KERNEL_GIT_PROTOCOL};tag=${TAG};nobranch=1 \
    file://0001-PATCH-Add-hm3301-driver-from-Seeed.patch \
    file://defconfig \
    "

do_install:append() {
    rm -rf ${D}/lib/modules/5.10.162+/modules.builtin.modinfo
}
