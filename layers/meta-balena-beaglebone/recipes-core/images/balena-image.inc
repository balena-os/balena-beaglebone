IMAGE_FSTYPES:append:beaglebone = " balenaos-img balenaos-img.bmap"
IMAGE_FSTYPES:append:beaglebone-pocket = " balenaos-img"
IMAGE_FSTYPES:append:beagleboard-xm = " balenaos-img"

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
IMAGE_INSTALL:append = " kernel-image-initramfs kernel-devicetree wlconf"

IMAGE_INSTALL:append = " beagle-serial"

BALENA_BOOT_PARTITION_FILES:append:beaglebone-pocket = " uEnv.txt_internal:"

# Fixes error: packages already installed
# by kernel-image-initramfs
IMAGE_INSTALL:remove = " kernel-image-zimage"

IMAGE_INSTALL:remove = " bb-wl18xx-bluetooth bb-wl18xx-wlan0"
IMAGE_INSTALL:append = " bb-wl18xx-btwl"
