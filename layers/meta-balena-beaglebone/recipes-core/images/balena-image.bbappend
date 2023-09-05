include balena-image.inc

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append:beaglebone-pocket = " boot-scripts"
#IMAGE_INSTALL:append:beaglebone-play = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
#IMAGE_INSTALL:append:beaglebone-play-k3r5 = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"

IMAGE_ROOTFS_MAXSIZE:beaglebone-play = "1966080"
IMAGE_ROOTFS_MAXSIZE:beaglebone-play-k3r5 = "1966080"

IMAGE_ROOTFS_SIZE:beaglebone-play = "1966080"
IMAGE_ROOTFS_SIZE:beaglebone-play-k3r5 = "1966080"
