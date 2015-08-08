FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = "\
	    file://include_paths_header.patch \
	    file://0001-Add-support-for-defining-missing-funcitonality.patch \
           "
