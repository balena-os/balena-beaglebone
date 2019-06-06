IMAGE_FSTYPES_append_beaglebone = " resinos-img resinos-img.bmap"
IMAGE_FSTYPES_append_beaglebone-pocket = " resinos-img"
IMAGE_FSTYPES_append_beagleboard-xm = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_beaglebone = " \
    MLO: \
    u-boot.img: \
    "

RESIN_BOOT_PARTITION_FILES_beagleboard-xm = " \
    MLO: \
    u-boot.img: \
"

# Beaglebone expects the kernel and dtbs on rootfs
IMAGE_INSTALL_append = " kernel-image-initramfs kernel-devicetree wlconf"

RESIN_BOOT_PARTITION_FILES_append_beaglebone-pocket = " uEnv.txt_internal:"
