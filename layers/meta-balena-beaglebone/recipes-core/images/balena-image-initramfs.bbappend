# JET: Need to increase IMAGE_ROOTFS_MAXSIZE to 64MB for bb-ai64.
# Why we need a 64MB initramfs is something to be investigated later.
# The kernel package adds 30MB alone.  Not sure why an initramfs needs
# a kernel package installed in the first place...  But then I'm new to
# balena...

IMAGE_ROOTFS_MAXSIZE = "65536"

