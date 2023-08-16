include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:beaglebone = " uEnv.txt_internal:"
IMAGE_INSTALL:append:beaglebone = " bb-org-overlays"
