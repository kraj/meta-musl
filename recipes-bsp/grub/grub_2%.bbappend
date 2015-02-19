FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://grub-2.00_musl.patch \
	    file://disable-cflags-strict-aliasing.patch \
           "
