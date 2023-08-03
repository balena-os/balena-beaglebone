include balena-image.inc

# This might be probably removed or reduced once the kernel gets compressed.
IMAGE_ROOTFS_MAXSIZE:beaglebone-ai64 = "356352"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append:beaglebone-pocket = " boot-scripts"
