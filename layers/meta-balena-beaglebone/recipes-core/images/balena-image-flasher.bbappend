include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append:beaglebone = " uEnv.txt_internal:"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"
IMAGE_INSTALL:append:beagleplay = " mmc-utils"

# Enable verbose output and use the specific
# disk geometry expected by beagleplay boot firmware
# to be able to load u-boot from the SD-CARD. The default
# mkfs.vfat setting is 16 heads / 63 sectors per track
# when creating the filesystem on a file, and that prevents
# the beagleplay from loading uboot from the sd.
DEVICE_SPECIFIC_BOOTFS_OPTS:beagleplay = "-v -g 16/32"
