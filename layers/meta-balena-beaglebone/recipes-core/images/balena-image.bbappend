include balena-image.inc

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append:beaglebone-pocket = " boot-scripts"

IMAGE_ROOTFS_MAXSIZE:beaglebone-play = "655360"
IMAGE_ROOTFS_MAXSIZE:beaglebone-play-k3r5 = "655360"

IMAGE_ROOTFS_SIZE:beaglebone-play = "655360"
IMAGE_ROOTFS_SIZE:beaglebone-play-k3r5 = "655360"
