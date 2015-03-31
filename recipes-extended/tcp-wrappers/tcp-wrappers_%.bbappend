FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://musl-decls.patch \
           "
EXTRA_OEMAKE_NETGROUP_libc-musl = "-DUSE_GETDOMAIN"
EXTRA_OEMAKE_append_libc-musl = " 'LIBS='"


