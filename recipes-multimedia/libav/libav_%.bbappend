FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

CFLAGS_append_libc-musl = " -D_GNU_SOURCE "
