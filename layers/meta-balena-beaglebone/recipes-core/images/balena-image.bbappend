include balena-image.inc

IMAGE_INSTALL:append:beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append:beaglebone-pocket = " boot-scripts"
