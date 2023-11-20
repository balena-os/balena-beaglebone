do_install:append() {
    # Don't manage wlan0 (wifi) - for now
        cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[keyfile]
unmanaged-devices=interface-name:wlan0
EOF
}