FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
           file://0001-net-tools-Fix-build-with-musl.patch \
           "
