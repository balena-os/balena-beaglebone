DESCRIPTION = "BB WL18xx Bluetooth"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${BALENA_COREBASE}/COPYING.Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

SRC_URI = " \
	file://bb-wl18xx-btwl \
	file://bb-wl18xx-btwl.service \
	file://TIInit_11.8.32.bts \
"

inherit allarch systemd

RDEPENDS_${PN} = "bash"

FILES_${PN} += "/lib/firmware/ti-connectivity/TIInit_11.8.32.bts"

do_install() {
	install -d ${D}/usr/bin
	install -m 0755 ${WORKDIR}/bb-wl18xx-btwl ${D}/usr/bin/bb-wl18xx-btwl
	install -d ${D}${systemd_unitdir}/system
	install -m 0644 ${WORKDIR}/bb-wl18xx-btwl.service ${D}${systemd_unitdir}/system/bb-wl18xx-btwl.service
	install -d ${D}/lib/firmware/ti-connectivity
	install -m 0644 ${WORKDIR}/TIInit_11.8.32.bts ${D}/lib/firmware/ti-connectivity/TIInit_11.8.32.bts

	# These modules need to be loaded in a particular order and
	# given enoug time to settle, otherwise BT fails to initialize
	install -d ${D}/etc/modprobe.d
	for mod in wl18xx wlcore hci_uart bluetooth; do
		echo "blacklist ${mod}" >> ${D}/etc/modprobe.d/blacklist.conf
	done
}

SYSTEMD_SERVICE_${PN} = "bb-wl18xx-btwl.service"
