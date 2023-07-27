require u-boot-common_${PV}.inc

SUMMARY = "U-Boot bootloader tools"
DEPENDS += "openssl"

PROVIDES = "${MLPREFIX}u-boot-mkimage ${MLPREFIX}u-boot-mkenvimage"
PROVIDES:class-native = "u-boot-mkimage-native u-boot-mkenvimage-native"

PACKAGES += "${PN}-mkimage ${PN}-mkenvimage"

# Required for backward compatibility with "u-boot-mkimage-xxx.bb"
RPROVIDES:${PN}-mkimage = "u-boot-mkimage"
RREPLACES:${PN}-mkimage = "u-boot-mkimage"
RCONFLICTS:${PN}-mkimage = "u-boot-mkimage"

EXTRA_OEMAKE:class-target = 'CROSS_COMPILE="${TARGET_PREFIX}" CC="${CC} ${CFLAGS} ${LDFLAGS}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" STRIP=true V=1'
EXTRA_OEMAKE:class-native = 'CC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" STRIP=true V=1'
EXTRA_OEMAKE:class-nativesdk = 'CROSS_COMPILE="${HOST_PREFIX}" CC="${CC} ${CFLAGS} ${LDFLAGS}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" STRIP=true V=1'

SED_CONFIG_EFI = '-e "s/CONFIG_EFI_LOADER=.*/# CONFIG_EFI_LOADER is not set/"'
SED_CONFIG_EFI:x86 = ''
SED_CONFIG_EFI:x86-64 = ''
SED_CONFIG_EFI:arm = ''
SED_CONFIG_EFI:armeb = ''
SED_CONFIG_EFI:aarch64 = ''

do_compile () {
	oe_runmake sandbox_defconfig

	# Disable CONFIG_CMD_LICENSE, license.h is not used by tools and
	# generating it requires bin2header tool, which for target build
	# is built with target tools and thus cannot be executed on host.
	sed -i -e "s/CONFIG_CMD_LICENSE=.*/# CONFIG_CMD_LICENSE is not set/" ${SED_CONFIG_EFI} .config

	oe_runmake cross_tools NO_SDL=1
}

do_install () {
	install -d ${D}${bindir}

	# mkimage
	install -m 0755 tools/mkimage ${D}${bindir}/uboot-mkimage
	ln -sf uboot-mkimage ${D}${bindir}/mkimage

	# mkenvimage
	install -m 0755 tools/mkenvimage ${D}${bindir}/uboot-mkenvimage
	ln -sf uboot-mkenvimage ${D}${bindir}/mkenvimage
}

ALLOW_EMPTY:${PN} = "1"
FILES:${PN} = ""
FILES:${PN}-mkimage = "${bindir}/uboot-mkimage ${bindir}/mkimage"
FILES:${PN}-mkenvimage = "${bindir}/uboot-mkenvimage ${bindir}/mkenvimage"

RDEPENDS:${PN}-mkimage += "dtc"
RDEPENDS:${PN} += "${PN}-mkimage ${PN}-mkenvimage"
RDEPENDS:${PN}:class-native = ""

BBCLASSEXTEND = "native nativesdk"
