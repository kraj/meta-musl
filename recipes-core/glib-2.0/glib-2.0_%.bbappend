FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://include-memset.patch \
           "

do_install_append () {
	rm -f ${D}${libdir}/charset.alias
}

USE_NLS = "no"

FILES_${PN}-locale = "${localedir}"
