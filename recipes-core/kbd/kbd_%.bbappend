FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = " file://kbd-2.0.1_musl.patch"
