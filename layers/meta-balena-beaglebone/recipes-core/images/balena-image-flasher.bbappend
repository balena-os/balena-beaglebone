include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:beaglebone = " uEnv.txt_internal:"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"