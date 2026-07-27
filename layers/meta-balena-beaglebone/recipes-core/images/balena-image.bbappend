include balena-image.inc

# This might be probably removed or reduced once the kernel gets compressed.
IMAGE_ROOTFS_SIZE:beaglebone-ai64 = "733184"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"

BALENA_BOOT_SIZE:beaglebone-ai64 = "40960"
BALENA_STATE_SIZE:beaglebone-ai64 = "20480"
IMAGE_ROOTFS_SIZE:beaglebone-green-gateway = "327680"
BALENA_BOOT_SIZE:beaglebone-green-gateway = "40960"
BALENA_STATE_SIZE:beaglebone-green-gateway = "20480"
IMAGE_ROOTFS_SIZE:beaglebone-green-wifi = "327680"
BALENA_BOOT_SIZE:beaglebone-green-wifi = "40960"
BALENA_STATE_SIZE:beaglebone-green-wifi = "20480"
IMAGE_ROOTFS_SIZE:beaglebone-green = "327680"
BALENA_BOOT_SIZE:beaglebone-green = "40960"
BALENA_STATE_SIZE:beaglebone-green = "20480"
IMAGE_ROOTFS_SIZE:beaglebone = "327680"
BALENA_BOOT_SIZE:beaglebone = "40960"
BALENA_STATE_SIZE:beaglebone = "20480"
