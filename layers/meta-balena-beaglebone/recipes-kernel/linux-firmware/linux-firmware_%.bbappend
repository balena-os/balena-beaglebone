#SRC_URI = "https://github.com/beagleboard/ti-linux-firmware.git;branch=09.00.00.007"
PV = "09.02.00.009"
BPN = "ti-linux-firmware"
SRC_URI = "https://github.com/beagleboard/${BPN}/archive/refs/tags/${PV}.tar.gz"
# SRCREV = "553da6850e271b579b569725ce9c58a1a6d7c849"
SRC_URI[sha256sum] = "7be82c33137d974ce3322d11694a9f53f402c731967e130ba3667b27b4872950"
WHENCE_CHKSUM  = "473207b6318af57de9d4559d1556407a"

SRC_URI:class-devupstream = "https://github.com/beagleboard/${BPN}/archive/refs/tags/${PV}.tar.gz"
#SRCREV:class-devupstream = "905eb58564581d951d148f45828e8c8a142a5938"

DEPENDS += "rdfind-native"