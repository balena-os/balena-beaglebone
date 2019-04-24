do_install_append() {
    # disable audit messages
    rm ${D}/lib/systemd/system/sockets.target.wants/systemd-journald-audit.socket
    rm ${D}/lib/systemd/system/systemd-journald-audit.socket
}
