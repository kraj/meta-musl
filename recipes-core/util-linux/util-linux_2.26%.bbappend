FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}-${MAJOR_VERSION}:"

SRC_URI_append_libc-musl = " file://posix-only.patch"
