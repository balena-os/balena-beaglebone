#SRC_URI = "https://github.com/beagleboard/ti-linux-firmware.git;branch=09.00.00.007"
PV = "09.00.00.007"
BPN = "ti-linux-firmware"
SRC_URI = "https://github.com/beagleboard/${BPN}/archive/refs/tags/${PV}.tar.gz"
#SRCREV = "905eb58564581d951d148f45828e8c8a142a5938"
SRC_URI[sha256sum] = "55a76f049207e426cc918eaf68240876373fb13d88e0c37ffa370fec23098248"
WHENCE_CHKSUM  = "0536528ff362262a9f257118fe38c727"


SRC_URI:class-devupstream = "https://github.com/beagleboard/${BPN}/archive/refs/tags/${PV}.tar.gz"
#SRCREV:class-devupstream = "905eb58564581d951d148f45828e8c8a142a5938"