SUMMARY = "Udev rule to create ttyO* -> ttyS* symlinks on Beagle* boards"

LICENSE="Apache-2.0"
LIC_FILES_CHKSUM = "file://${RESIN_COREBASE}/COPYING.Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

DESCRIPTION = "Udev rule to create ttyO* -> ttyS* symlinks on Beagle* boards"

SRC_URI = "file://99-beagle-serial.rules \
"

do_install() {
    install -d ${D}${base_libdir}/udev/rules.d
    install -m 0644 ${WORKDIR}/99-beagle-serial.rules ${D}${base_libdir}/udev/rules.d
}

FILES_${PN} = " \
  /lib/udev/rules.d/99-beagle-serial.rules \
"
