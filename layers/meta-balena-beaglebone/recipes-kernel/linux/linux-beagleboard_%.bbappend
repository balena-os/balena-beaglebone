# disable modules compression
RESIN_CONFIGS_append = " no_modules_compression"
RESIN_CONFIGS[no_modules_compression]=" \
    CONFIG_MODULE_COMPRESS=n \
    CONFIG_MODULE_COMPRESS_XZ=n \
"

KERNEL_DEVICETREE_beaglebone += " am335x-boneblack-uboot.dtb \
"

SRC_URI_append_beaglebone = " \
	file://0001-Use-bbbw-dts-from-4.9.patch \
"

SRC_URI_append_beaglebone-green-wifi = " \
        file://0001-Use-kernel-4.9-BBGW-dts-version.patch \
"

SRC_URI_append_beagleboard-xm = " \
	file://0001-set-gpios-vaux3.patch \
	file://0001-card-power-cycle.patch \
"

SRC_URI_append = " \
	file://0002-NFLX-2019-001-SACK-Panic.patch \
	file://0003-NFLX-2019-001-SACK-Panic-for-lteq-4.14.patch \
	file://0004-NFLX-2019-001-SACK-Slowness.patch \
	file://0005-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
	file://0006-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
"

RESIN_CONFIGS_append_beagleboard-xm = " omap3_soc \
	twl4030 \
"

RESIN_CONFIGS[omap3_soc] = " \
	CONFIG_ARCH_OMAP3=y \
	CONFIG_USB_MUSB_OMAP2PLUS=y \
"

RESIN_CONFIGS[twl4030] = " \
	CONFIG_REGULATOR_TWL4030=y \
	CONFIG_TWL4030_USB=y \
	CONFIG_GPIO_TWL4030=y \
"

RESIN_CONFIGS_append = " alt_serial"
RESIN_CONFIGS[alt_serial] = "\
	CONFIG_SERIAL_OMAP=y \
	CONFIG_SERIAL_OMAP_CONSOLE=y \
	CONFIG_SERIAL_8250=n \
"
