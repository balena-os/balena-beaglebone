FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

inherit kernel-balena

# BRANCH:aarch64 = "v5.10.168-ti-arm64-r111"
# SRCREV:aarch64 = "ac0ddc64cced3bdaa8ba5aa56a9a3cdc01825744"
# PV:aarch64 = "5.10.168+git${SRCPV}"

SRC_URI:remove:aarch64 = " file://0001-defconfig-switch-default-kernel-compression-to-LZMA.patch"


