include balena-image.inc

BALENA_BOOT_PARTITION_FILES_append_beaglebone = " uEnv.txt_internal:"
IMAGE_INSTALL_append_beaglebone = " bb-org-overlays"
