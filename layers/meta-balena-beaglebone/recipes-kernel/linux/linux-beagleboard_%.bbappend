# disable modules compression
BALENA_CONFIGS_append = " no_modules_compression"
BALENA_CONFIGS[no_modules_compression]=" \
    CONFIG_MODULE_COMPRESS=n \
    CONFIG_MODULE_COMPRESS_XZ=n \
"

KERNEL_DEVICETREE_beaglebone += " \
	am335x-boneblack-uboot.dtb \
	am335x-bonegreen-gateway.dtb \
"

SRC_URI_append_beaglebone = " \
	file://rtc-omap-Prevent-kernel-panic-and-reboot-on-shutdown.patch \
        file://0001-Revert-net-ethernet-ti-cpsw-fix-min-eth-packet-size.patch \
"

SRC_URI_append_beagleboard-xm = " \
	file://0001-set-gpios-vaux3.patch \
	file://0001-card-power-cycle.patch \
"

BALENA_CONFIGS_append_beagleboard-xm = " omap3_soc \
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

BALENA_CONFIGS_append = " alt_serial"
BALENA_CONFIGS[alt_serial] = "\
	CONFIG_SERIAL_OMAP=y \
	CONFIG_SERIAL_OMAP_CONSOLE=y \
	CONFIG_SERIAL_8250=n \
"

BALENA_CONFIGS_append = " bt_hciuart"
BALENA_CONFIGS[bt_hciuart] = " \
	CONFIG_BT_HCIUART=m \
	CONFIG_BT_HCIUART_SERDEV=y \
	CONFIG_BT_HCIUART_H4=y \
	CONFIG_BT_HCIUART_LL=y \
"

BALENA_CONFIGS_append = " hm3301"
BALENA_CONFIGS[hm3301] = " \
        CONFIG_HM3301=m \
"

# These device types have been using the aufs storage driver,
# and during a HUP the storage in the inactive sysroot will
# still be aufs, so we need to include the aufs driver further
# for them, as per the internal thread
# https://www.flowdock.com/app/rulemotion/resin-devices/threads/K2TQiSUfNDqBT5Ih6cciNI2d9QJ
BALENA_CONFIGS_append_beaglebone = " aufs"
BALENA_CONFIGS_append_beaglebone-green = " aufs"
BALENA_CONFIGS_append_beaglebone-green-wifi = " aufs"
