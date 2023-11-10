include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:beaglebone = " uEnv.txt_internal:"
BALENA_BOOT_PARTITION_FILES:append:beaglebone-play = " uEnv.txt_internal:"
BALENA_BOOT_PARTITION_FILES:append:beaglebone-play-k3r5 = " uEnv.txt_internal:"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"
IMAGE_INSTALL:append:beaglebone-play = " bb-org-overlays"
IMAGE_INSTALL:append:beaglebone-play-k3r5 = " bb-org-overlays"
