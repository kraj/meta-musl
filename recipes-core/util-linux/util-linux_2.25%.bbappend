FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = " file://posix-only.patch"
SRC_URI_append_libc-musl = " file://0001-switch_root-use-typeof-instead-of-__SWORD_TYPE-for-s.patch"
