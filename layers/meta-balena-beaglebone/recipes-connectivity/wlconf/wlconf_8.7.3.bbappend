SRC_URI:aarch64 = "https://openbeagle.org/beagleboard/18xx-ti-utils/-/archive/R8.7_SP3-bbb.io/18xx-ti-utils-R8.7_SP3-bbb.io.tar.gz"

SRC_URI[sha256sum] = "85fcc44ab5a671e5c21f37dfa14c47fb1f65d670c8598101446169f7dd630984"

do_install:append:aarch64() {
	install -m 0755 device-20221220-wl18xx-conf.bin ${D}${sbindir}/wlconf/
	install -m 0755 device-20221220-wl18xx-conf.bin ${D}${nonarch_base_libdir}/firmware/ti-connectivity/wl18xx-conf.bin
}