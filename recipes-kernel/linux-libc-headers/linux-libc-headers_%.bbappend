FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://prevent-redefinition-of-struct-ethhdr.patch \
           "
