include resin-image.inc

IMAGE_INSTALL_append_beaglebone = " bb-org-overlays fix-mmc-bbb bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL_append_beaglebone-pocket = " boot-scripts"
