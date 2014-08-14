FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://configure-musl-target.patch \
            file://linux-musl-libc-termios.patch \
           "

