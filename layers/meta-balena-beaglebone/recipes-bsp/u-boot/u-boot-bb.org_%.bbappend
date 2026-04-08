FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

inherit resin-u-boot

SRC_URI:append:beaglebone-ai64 = " \
  file://integrate_with_balena_u-boot-environment.patch \
  file://balenaos_bootcommand.cfg \
  file://0005-env_default.h-Add-support-for-OS_KERNEL_CMDLINE.patch \
  file://set_right_dtb_path.patch \
"

BALENA_DEVICE_FDT_ADDR_VAR = "fdtaddr"

PV:beaglebone-ai64 = "2023.04"
PV:beaglebone-ai64-k3r5 = "2023.04"
BRANCH:beaglebone-ai64 = "v2023.04-ti-09.00.00.007"
SRCREV:beaglebone-ai64 = "354f64f67e5b36df0027dbfbf071503b0071f4ed"
BRANCH:beaglebone-ai64-k3r5 = "v2023.04-ti-09.00.00.007"
SRCREV:beaglebone-ai64-k3r5 = "354f64f67e5b36df0027dbfbf071503b0071f4ed"

# Generate an extlinux.conf file
UBOOT_EXTLINUX = "1"
UBOOT_EXTLINUX_ROOT = "root=/dev/mmcblk1p2"

UBOOT_EXTLINUX_KERNEL_ARGS = "rootwait rw rootfstype=ext4"
UBOOT_EXTLINUX_KERNEL_IMAGE = "../${KERNEL_IMAGETYPE}"
UBOOT_EXTLINUX_FDTDIR = "../"

# The BB-AI64 creates this file for both archs, remove one.
do_deploy:append:beaglebone-ai64-k3r5 () {
    rm -vf ${DEPLOYDIR}/extra_uEnv.txt
}

do_install[nostamp] = "1"
do_compile[nostamp] = "1"
do_deploy[nostamp] = "1"
do_configure[nostamp] = "1"
