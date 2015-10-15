FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://0001-linedit-deluser-use-POSIX-getpwent-instead-of-getpwe.patch \
           "
