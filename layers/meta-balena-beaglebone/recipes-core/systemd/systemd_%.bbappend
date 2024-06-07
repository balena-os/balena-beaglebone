FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " \
    file://watchdog-disable.conf \
    "

do_install:append() {  
    # enable watchdog
    install -d -m 0755 ${D}/${sysconfdir}/systemd/system.conf.d
    install -m 0644 ${WORKDIR}/watchdog-disable.conf ${D}/${sysconfdir}/systemd/system.conf.d/watchdog.conf
}







