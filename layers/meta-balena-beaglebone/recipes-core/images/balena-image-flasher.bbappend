include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:beaglebone = " uEnv.txt_internal:"

BALENA_BOOT_PARTITION_FILES:append:beagleplay = " \
    extlinux.conf:/extlinux/extlinux.conf \
"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"
IMAGE_INSTALL:append:beagleplay = " mmc-utils"