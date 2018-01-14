FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://wl18xx-conf.bin"

do_install_append() {
    install -m 0644 ${WORKDIR}/wl18xx-conf.bin ${D}/lib/firmware/ti-connectivity/
}
