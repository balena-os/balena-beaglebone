include balena-image.inc

# This might be probably removed or reduced once the kernel gets compressed.
IMAGE_ROOTFS_SIZE:beaglebone-ai64 = "733184"

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append:beaglebone-ai64 = " mmc-utils vxd-dec-fw"
IMAGE_INSTALL:append:beaglebone-pocket = " boot-scripts"
#IMAGE_INSTALL:append:beagleplay = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
#IMAGE_INSTALL:append:beagleplay-k3r5 = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"

IMAGE_INSTALL:remove:beagleplay = " bb-wl18xx-btwl"
IMAGE_INSTALL:remove:beagleplay-k3-r5 = " bb-wl18xx-btwl"

IMAGE_ROOTFS_MAXSIZE:beagleplay = "1966080"
IMAGE_ROOTFS_MAXSIZE:beagleplay-k3r5 = "1966080"

IMAGE_ROOTFS_SIZE:beagleplay = "1966080"
IMAGE_ROOTFS_SIZE:beagleplay-k3r5 = "1966080"
