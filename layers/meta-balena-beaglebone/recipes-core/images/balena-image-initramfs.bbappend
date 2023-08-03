# As of today the kernel is not being compressed, we are using Image instead
# of zImage, so we need a bigger rootfs image size in order to account for this
# on the initramfs.
IMAGE_ROOTFS_MAXSIZE:beaglebone-ai64 = "65536"

