PV:beagleplay = "09.00.00.011"
BPN:beagleplay = "ti-linux-firmware"
SRC_URI:beagleplay = "https://github.com/beagleboard/${BPN}/archive/refs/tags/${PV}.tar.gz"

python __anonymous () {
    import os
    machine = os.getenv('MACHINE')
    if machine == "beagleplay":
        d.setVarFlag("SRC_URI", "sha256sum", "4ba370a5975131a638c7500d96596313588ab63f19048097f0650e6a7abaf551")
    else:
        d.setVarFlag("SRC_URI", "sha256sum", "c3f9ad2bb5311cce2490f37a8052f836703d6936aabd840246b6576f1f71f607")
}

#SRC_URI:beagleplay[sha256sum] = "4ba370a5975131a638c7500d96596313588ab63f19048097f0650e6a7abaf551"
WHENCE_CHKSUM:beagleplay  = "4279eb9fcb7c0c9e9303a171f491c0e4"

SRC_URI:class-devupstream:beagleplay = "https://github.com/beagleboard/${BPN}/archive/refs/tags/${PV}.tar.gz"
