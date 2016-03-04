FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " file://ENV-IS-NOWHERE.patch \
    file://0001-ti_armv7_common.h-Don-t-hardcode-dev-0-but-use-mmcde.patch"
