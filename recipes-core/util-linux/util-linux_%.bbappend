FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = " file://posix-only.patch"
