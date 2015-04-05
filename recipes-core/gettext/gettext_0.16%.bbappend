do_install_append () {
	rm -rf ${D}${includedir}/libintl.h
	rm -f ${D}${includedir}/libintl.h
}
