FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = " file://musl.cfg"

SRC_URI += "\
            file://0001-linedit-deluser-use-POSIX-getpwent-instead-of-getpwe.patch \
           "
