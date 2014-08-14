FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append = "\
                  file://dont-use-decl-macros.patch \
                 "

EXTRA_OECONF_append_libc-musl = "${@['', ' --disable-gettext '][(d.getVar('USE_NLS', True) == 'no')]}"
