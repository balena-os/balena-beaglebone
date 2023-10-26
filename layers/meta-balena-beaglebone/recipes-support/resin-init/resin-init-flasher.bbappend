# Flash to internal eMMC - kernel enumerates this, when SD card is in, as mmcblk1
INTERNAL_DEVICE_KERNEL:beaglebone = "mmcblk1"
# Except on the beaglebone-ai64
INTERNAL_DEVICE_KERNEL:beaglebone-ai64 = "mmcblk0"

# the name of the bootloader config file to be written to internal media
INTERNAL_DEVICE_BOOTLOADER_CONFIG:beaglebone = "uEnv.txt_internal"

# the pathname (relative to /boot/) where the internal bootloader config file should reside in
# (currently assuming this is on partition 1 of the internal media)
INTERNAL_DEVICE_BOOTLOADER_CONFIG_PATH:beaglebone = "/uEnv.txt"
