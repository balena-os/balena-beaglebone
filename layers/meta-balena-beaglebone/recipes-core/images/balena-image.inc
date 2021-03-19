IMAGE_FSTYPES_append_beaglebone = " balenaos-img balenaos-img.bmap"
IMAGE_FSTYPES_append_beaglebone-pocket = " balenaos-img"
IMAGE_FSTYPES_append_beagleboard-xm = " balenaos-img"

# Customize balenaos-img
BALENA_BOOT_PARTITION_FILES_beaglebone = " \
    MLO: \
    u-boot.img: \
    "

BALENA_BOOT_PARTITION_FILES_beagleboard-xm = " \
    MLO: \
    u-boot.img: \
"

# Beaglebone expects the kernel and dtbs on rootfs
IMAGE_INSTALL_append = " kernel-image-initramfs kernel-devicetree wlconf"

IMAGE_INSTALL_append = " beagle-serial"

BALENA_BOOT_PARTITION_FILES_append_beaglebone-pocket = " uEnv.txt_internal:"

# Fixes error: packages already installed
# by kernel-image-initramfs
IMAGE_INSTALL_remove = " kernel-image-zimage"

IMAGE_INSTALL_remove = " bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL_append = " bb-wl18xx-btwl"
