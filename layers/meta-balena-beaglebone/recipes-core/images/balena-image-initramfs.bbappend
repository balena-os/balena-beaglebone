# As of today the kernel is not being compressed, we are using Image instead
# of zImage, so we need a bigger rootfs image size in order to account for this
# on the initramfs.
IMAGE_ROOTFS_MAXSIZE:beaglebone-ai64 = "65536"
PACKAGE_INSTALL:append:beaglebone-ai64 = " cadence-mhdp-fw"
IMAGE_ROOTFS_MAXSIZE:beagleplay = "65536"
IMAGE_ROOTFS_MAXSIZE:beagleplay-k3r5 = "65536"
