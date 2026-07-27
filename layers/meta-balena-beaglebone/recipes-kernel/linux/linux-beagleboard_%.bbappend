inherit kernel-balena

# disable modules compression
BALENA_CONFIGS:append = " no_modules_compression"
BALENA_CONFIGS[no_modules_compression]=" \
    CONFIG_MODULE_COMPRESS=n \
    CONFIG_MODULE_COMPRESS_XZ=n \
"

KERNEL_DEVICETREE:beaglebone += " \
	am335x-boneblack-uboot.dtb \
	am335x-bonegreen-gateway.dtb \
"

SRC_URI:append:beaglebone = " \
	file://rtc-omap-Prevent-kernel-panic-and-reboot-on-shutdown.patch \
"

SRC_URI:append:beagleboard-xm = " \
	file://0001-set-gpios-vaux3.patch \
	file://0001-card-power-cycle.patch \
"

BALENA_CONFIGS:append:beagleboard-xm = " omap3_soc \
	twl4030 \
"

BALENA_CONFIGS[omap3_soc] = " \
	CONFIG_ARCH_OMAP3=y \
	CONFIG_USB_MUSB_OMAP2PLUS=y \
"

BALENA_CONFIGS[twl4030] = " \
	CONFIG_REGULATOR_TWL4030=y \
	CONFIG_TWL4030_USB=y \
	CONFIG_GPIO_TWL4030=y \
"

BALENA_CONFIGS:append = " alt_serial"
BALENA_CONFIGS[alt_serial] = "\
	CONFIG_SERIAL_OMAP=y \
	CONFIG_SERIAL_OMAP_CONSOLE=y \
	CONFIG_SERIAL_8250=n \
"

BALENA_CONFIGS:append = " bt_hciuart"
BALENA_CONFIGS[bt_hciuart] = " \
	CONFIG_BT_HCIUART=m \
	CONFIG_BT_HCIUART_SERDEV=y \
	CONFIG_BT_HCIUART_H4=y \
	CONFIG_BT_HCIUART_LL=y \
"

BALENA_CONFIGS:append = " hm3301"
BALENA_CONFIGS[hm3301] = " \
        CONFIG_HM3301=m \
"

# These device types have been using the aufs storage driver,
# and during a HUP the storage in the inactive sysroot will
# still be aufs, so we need to include the aufs driver further
# for them, as per the internal thread
# https://www.flowdock.com/app/rulemotion/resin-devices/threads/K2TQiSUfNDqBT5Ih6cciNI2d9QJ
BALENA_CONFIGS:append:beaglebone = " aufs"
BALENA_CONFIGS:append:beaglebone-green = " aufs"
BALENA_CONFIGS:append:beaglebone-green-wifi = " aufs"

BALENA_CONFIGS:append = " core-optimization"
BALENA_CONFIGS[core-optimization] = " \
    CONFIG_CC_OPTIMIZE_FOR_SIZE=y \
"


# beaglebone (AM335x) has no USB3/xHCI controller, no Vivante (etnaviv) GPU
# (display is via CONFIG_DRM_TILCDC), and no raw NAND/NOR flash chip
# (storage is eMMC/SD via the MMC controller, not MTD) -- these are dead
# code on this hardware, not feature removals.
BALENA_CONFIGS:append:beaglebone = " reduce-kernel-size"
BALENA_CONFIGS[reduce-kernel-size] = " \
    CONFIG_USB_XHCI_HCD=n \
    CONFIG_DRM_ETNAVIV=n \
    CONFIG_MTD_RAW_NAND=n \
    CONFIG_MTD_UBI=n \
    CONFIG_UBIFS_FS=n \
    CONFIG_JFFS2_FS=n \
"
