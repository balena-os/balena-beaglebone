FILESEXTRAPATHS:append := ":${THISDIR}/files"

HOSTAPP_HOOKS += "99-resin-uboot"

HOSTAPP_HOOKS:append:beaglebone-ai64 = " 99-flash-bootloader-beaglebone-ai64"