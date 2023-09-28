inherit kernel-balena

BRANCH:aarch64 = "v6.1.46-ti-arm64-r7"
SRCREV:aarch64 = "51c09b7d81b4531f4846cb6c24f46ac239acd69d"
PV:aarch64 = "6.1.46+git${SRCPV}"

UBOOT_SIGN_ENABLE="0"

KERNEL_DEVICETREE:aarch64 = " \
ti/k3-am625-beagleplay.dtb \
ti/k3-am625-beagleplay-csi2-ov5640.dtbo \
ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtbo \
ti/k3-am625-sk.dtb \
ti/k3-am625-sk-mcu-gpio-wakeup.dtbo \
ti/k3-am625-sk-microtips-mf101hie-panel.dtbo \
ti/k3-am625-sk-csi2-ov5640.dtbo \
ti/k3-am625-sk-csi2-tevi-ov5640.dtbo \
ti/k3-am625-sk-dmtimer-pwm.dtbo \
ti/k3-am625-sk-ecap-capture.dtbo \
ti/k3-am625-sk-hdmi-audio.dtbo \
ti/k3-am62-lp-sk.dtb \
ti/k3-am62-lp-sk-nand.dtbo \
ti/k3-am62-lp-sk-microtips-mf101hie-panel.dtbo \
ti/k3-am625-sk-mcan.dtbo \
ti/k3-am625-sk-rpi-hdr-pwm.dtbo \
ti/k3-am625-sk-mcspi-loopback.dtbo \
"


