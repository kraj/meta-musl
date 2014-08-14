FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

do_install_append () {
	rm -f ${D}${libdir}/charset.alias
}
