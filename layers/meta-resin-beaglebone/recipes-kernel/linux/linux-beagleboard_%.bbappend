# disable modules compression
RESIN_CONFIGS_append = " no_modules_compression"
RESIN_CONFIGS[no_modules_compression]=" \
    CONFIG_MODULE_COMPRESS=n \
    CONFIG_MODULE_COMPRESS_XZ=n \
"

KERNEL_DEVICETREE_beaglebone += " am335x-boneblack-uboot.dtb \
"
