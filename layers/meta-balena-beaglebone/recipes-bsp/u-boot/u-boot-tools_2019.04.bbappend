inherit resin-u-boot

FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI += " \
	file://remove-redundant-yyloc-global.patch \
"
