DESCRIPTION = "BB WL18xx Bluetooth"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${RESIN_COREBASE}/COPYING.Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

SRC_URI = " \
	file://bb-wl18xx-bluetooth \
	file://bb-wl18xx-bluetooth.service \
	file://TIInit_11.8.32.bts \
"

inherit allarch systemd

RDEPENDS_${PN} = "bash"

FILES_${PN} += "/lib/firmware/ti-connectivity/TIInit_11.8.32.bts"

do_install() {
	install -d ${D}/usr/bin
	install -m 0755 ${WORKDIR}/bb-wl18xx-bluetooth ${D}/usr/bin/bb-wl18xx-bluetooth
	install -d ${D}${systemd_unitdir}/system
	install -m 0644 ${WORKDIR}/bb-wl18xx-bluetooth.service ${D}${systemd_unitdir}/system/bb-wl18xx-bluetooth.service
	install -d ${D}/lib/firmware/ti-connectivity
	install -m 0644 ${WORKDIR}/TIInit_11.8.32.bts ${D}/lib/firmware/ti-connectivity/TIInit_11.8.32.bts
}

SYSTEMD_SERVICE_${PN} = "bb-wl18xx-bluetooth.service"
