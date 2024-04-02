include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:beaglebone = " uEnv.txt_internal:"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"
IMAGE_INSTALL:append:beagleplay = " mmc-utils"
IMAGE_INSTALL:append:beagleplay-k3r5 = " mmc-utils"