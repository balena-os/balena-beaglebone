include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append_beaglebone = " uEnv.txt_internal:"
IMAGE_INSTALL_append_beaglebone = " bb-org-overlays"
