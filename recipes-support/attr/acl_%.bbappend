EXTRA_OECONF_append_libc-musl = "${@['', ' --disable-gettext '][(d.getVar('USE_NLS', True) == 'no')]}"
