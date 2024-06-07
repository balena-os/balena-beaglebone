inherit kernel-balena

PV:aarch64 = "6.1.80+git${SRCPV}"
SRCREV:aarch64 = "6.1.80-ti-arm64-r58"
TAG:aarch64 = "6.1.80-ti-arm64-r58"
SRC_URI:aarch64 = " \
    git://github.com/beagleboard/linux.git;protocol=https;nobranch=1;tag=${TAG} \
    file://defconfig \
"
# SRC_URI:aarch64 = "https://github.com/beagleboard/linux/archive/refs/tags/6.1.80-ti-rt-arm64-r58.tar.gz;protocol=https"