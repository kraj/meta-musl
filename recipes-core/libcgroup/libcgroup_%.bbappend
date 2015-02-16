FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = " file://musl-decls-compat.patch"
DEPENDS_append_libc-musl = " fts "
EXTRA_OEMAKE_append_libc-musl = "LIBS=-lfts"
