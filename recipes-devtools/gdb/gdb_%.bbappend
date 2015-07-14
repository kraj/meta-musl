FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = "\
            file://0001-Use-exorted-definitions-of-SIGRTMIN.patch \
"
