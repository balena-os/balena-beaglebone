DESCRIPTION = "Set wifi MAC address"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${RESIN_COREBASE}/COPYING.Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

SRC_URI = " \
	file://bb-wl18xx-wlan0 \
	file://bb-wl18xx-wlan0.service \
"

inherit allarch systemd

RDEPENDS_${PN} = "bash"

do_install() {
	install -d ${D}/usr/bin
	install -m 0755 ${WORKDIR}/bb-wl18xx-wlan0 ${D}/usr/bin/bb-wl18xx-wlan0
	install -d ${D}${systemd_unitdir}/system
	install -m 0644 ${WORKDIR}/bb-wl18xx-wlan0.service ${D}${systemd_unitdir}/system
}

SYSTEMD_SERVICE_${PN} = "bb-wl18xx-wlan0.service"
