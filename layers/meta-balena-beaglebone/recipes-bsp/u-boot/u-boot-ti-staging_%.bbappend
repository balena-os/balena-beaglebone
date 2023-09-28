UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://0001-Integrate-with-Balena-environment-configuration.patch \
    file://0002-am335x_evm_defconfig-Reduce-SPL-.rodata-size.patch \
    file://0005-Autoboot-keyboard-beaglebone-fixes.patch \
    file://0001-Add-support-for-BeagleBoard.org-PocketBeagle.patch \

UBOOT_MACHINE = "am335x_evm_config"
UBOOT_MACHINE:beaglebone-play = "am62x_evm_a53_defconfig"
UBOOT_MACHINE:beaglebone-play-k3r5 = "am62x_evm_r5_defconfig"

# Use BeagleBone's u-boot until u-boot-ti-staging has the BBAI64 support upstreamed.
BRANCH:beaglebone-play= "v2023.04-ti-09.00.00.009-BeaglePlay"
UBOOT_GIT_URI:beaglebone-play = "git://git.beagleboard.org/beagleboard/u-boot.git"
SRCREV:beaglebone-play = "52a1bfa3073bcdef4e1e0df13021d1b52947b6a7"

SRC_URI += " \
UBOOT_SIGN_ENABLE:beaglebone-play = "0"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://uEnv.txt_internal \
    file://balenaos_disableuefi.cfg \
    file://balenaos_bootcommand.cfg \
    file://balenaos_env_size.cfg \
"

SRC_URI:append:beaglebone-ai64 = " \
    file://0001-Use-the-BBONEAI-64-B0-as-default-board.patch \
    file://0001-Look-for-the-dtb-in-the-ti-directory.patch \
"

# The BB-AI64 creates this file for both archs, remove one.
do_deploy:append:beaglebone-ai64 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}

SSTATE_ALLOW_OVERLAP_FILES += "${DEPLOYDIR}/extra_uEnv.txt"
SSTATE_ALLOW_OVERLAP_FILES += "${DEPLOYDIR}/uEnv.txt_internal"


do_deploy:append () {
    install ${WORKDIR}/uEnv.txt_internal ${DEPLOYDIR}
}
