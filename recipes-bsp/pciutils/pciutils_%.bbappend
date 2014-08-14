FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://musl.patch \
            file://i386-io-linux.patch \
           "
