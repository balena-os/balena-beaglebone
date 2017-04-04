IMAGE_FSTYPES_append_beaglebone = " resinos-img resinos-img.bmap"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_beaglebone = " \
    MLO: \
    u-boot.img: \
    "

# Beaglebone expects the kernel and dtbs on rootfs
IMAGE_INSTALL_append = " kernel-image-initramfs kernel-devicetree"
