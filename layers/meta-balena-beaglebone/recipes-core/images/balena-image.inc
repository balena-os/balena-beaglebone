IMAGE_FSTYPES:append:beaglebone = " balenaos-img balenaos-img.bmap"
IMAGE_FSTYPES:append:beaglebone-pocket = " balenaos-img"
IMAGE_FSTYPES:append:beagleboard-xm = " balenaos-img"

# Customize balenaos-img
BALENA_BOOT_PARTITION_FILES:beaglebone = " \
    MLO: \
    u-boot.img: \
    "

BALENA_BOOT_PARTITION_FILES:beaglebone-ai64 = " \
    sysfw-j721e-gp-evm.itb: \
    sysfw-j721e_sr1_1-hs-evm.itb: \
    sysfw-j721e_sr2-hs-fs-evm.itb: \
    sysfw.itb: \
    tiboot3-j721e-gp-evm.bin: \
    tiboot3-j721e_sr1_1-hs-evm.bin: \
    tiboot3-j721e_sr2-hs-fs-evm.bin: \
    tiboot3.bin: \
    tispl.bin: \
    u-boot.img: \
    "
BALENA_BOOT_PARTITION_FILES:beagleboard-xm = " \
    MLO: \
    u-boot.img: \
"

BALENA_BOOT_PARTITION_FILES:beagleplay = " \
    tispl.bin_unsigned:/tispl.bin \
    u-boot.img: \
    tiboot3.bin: \
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
