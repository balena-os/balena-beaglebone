FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

inherit kernel-balena

SRC_URI:append = " \
    file://0001-Enable-CRYPTO_DM-by-default.patch \
"
