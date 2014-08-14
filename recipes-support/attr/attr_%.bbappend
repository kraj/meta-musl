FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append = "\
                  file://dont-use-decl-macros.patch \
                 "
