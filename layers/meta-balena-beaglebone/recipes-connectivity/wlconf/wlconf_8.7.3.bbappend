SRC_URI:aarch64 = "git://git.beagleboard.org/beagleboard/18xx-ti-utils.git;protocol=https;branch=R8.7_SP3-bbb.io"
SRCREV:aarch64 = "ba027b093aa013637fcc6271c2d47f3ce99e933e"

do_install:append:aarch64() {
	install -m 0755 device-20221220-wl18xx-conf.bin ${D}${sbindir}/wlconf/
	install -m 0755 device-20221220-wl18xx-conf.bin ${D}${nonarch_base_libdir}/firmware/ti-connectivity/wl18xx-conf.bin
}