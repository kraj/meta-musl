FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "file://0001-mtd-utils-libfec-use-standard-C-type-instead-of-u_lo.patch \
            file://010-fix-rpmatch.patch \
            file://0001-Fix-build-with-musl.patch \
           "
