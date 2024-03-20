FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

inherit resin-u-boot

UBOOT_MACHINE:beagleplay = "am62x_beagleplay_a53_defconfig"
UBOOT_MACHINE:beagleplay-k3r5 = "am62x_beagleplay_r5_defconfig"

# No need to use the UBOOT_CONFIG_FRAGMENTS from the meta-ti layer for the beagplay,
# since the 2024.04-BeaglePlay branch already has the necessary changes.
UBOOT_CONFIG_FRAGMENTS:beagleplay = ""
UBOOT_CONFIG_FRAGMENTS:beagleplay-k3r5 = ""

SRC_URI:append:beaglebone-ai64-k3r5 = " \
  file://integrate_with_balena_u-boot-environment.patch \
  file://balenaos_bootcommand.cfg \
  file://set_right_dtb_path.patch \
  file://0005-env_default.h-Add-support-for-OS_KERNEL_CMDLINE.patch \
"

SRC_URI:append:beagleplay = " \
    file://balenaos_bootcommand_beagleplay_emmc.cfg \
    file://0001-Added-device-tree-fix-as-suggested-by-Nishanth-Menon.patch \
"

SRC_URI:append:beagleplay-k3r5 = " \
    file://balenaos_bootcommand_beagleplay_emmc.cfg \
    file://0001-Added-device-tree-fix-as-suggested-by-Nishanth-Menon.patch \
"

DEPENDS:append:beaglebone-ai64-k3r5 = " python3-yamllint-native python3-pathspec-native"

DEPENDS:append:beagleplay-k3r5 = " python3-yamllint-native python3-pathspec-native"


PV:beaglebone-ai64 = "2023.04"
PV:beaglebone-ai64-k3r5 = "2023.04"
BRANCH:beaglebone-ai64 = "v2023.04-ti-09.00.00.007"
SRCREV:beaglebone-ai64 = "354f64f67e5b36df0027dbfbf071503b0071f4ed"
BRANCH:beaglebone-ai64-k3r5 = "v2023.04-ti-09.00.00.007"
SRCREV:beaglebone-ai64-k3r5 = "354f64f67e5b36df0027dbfbf071503b0071f4ed"

PV:beagleplay = "2024.04"
PV:beagleplay-k3r5 = "2024.04"
BRANCH:beagleplay= "v2024.04-BeaglePlay"
BRANCH:beagleplay-k3r5= "v2024.04-BeaglePlay"
SRCREV:beagleplay = "881379e9e286d0b40d9f054a1d176cbbcfed835e"
SRCREV:beagleplay-k3r5 = "881379e9e286d0b40d9f054a1d176cbbcfed835e"
SPL_BINARY:beagleplay = "tispl.bin_unsigned"
SPL_BINARYNAME:beagleplay = "tispl.bin_unsigned"

# Generate an extlinux.conf file
UBOOT_EXTLINUX = "1"
UBOOT_EXTLINUX_ROOT = "root=/dev/mmcblk1p2"

UBOOT_EXTLINUX_KERNEL_ARGS = "rootwait rw rootfstype=ext4"
UBOOT_EXTLINUX_BOOT_FILES = " \
    extlinux.conf;extlinux/extlinux.conf \
    ${KERNEL_IMAGETYPE} \
    ${KERNEL_DEVICETREE} \
"


# The BB-AI64 creates this file for both archs, remove one.
do_deploy:append:beaglebone-ai64-k3r5 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}

# The Beagleplay *also* creates this file for both archs, remove one.
do_deploy:append:beagleplay-k3r5 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}
