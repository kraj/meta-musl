FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = "\
    file://fix-some-issues-arising-from-in6.h.patch \
    file://prevent-redefinition-of-struct-ethhdr.patch \
"
