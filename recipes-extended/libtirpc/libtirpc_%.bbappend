FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://0002-Provide-getrpcbynumber-and-getrpcbyname-if-those-are.patch \
            file://0003-Avoid-use-of-internal-glibc-sys-cdefs.h-header.patch \
            file://0004-Add-configure-option-to-disable-DES-authentication.patch \
            file://0005-Fix-compile-error-IPPORT_RESERVED-undeclared.patch \
            file://0006-Define-struct-rpcent-on-non-GNU-libc.patch \
            file://0007-use-bsd-queue.patch \
	    file://nis.h \
           "

EXTRA_OECONF_append_libc-musl = " --disable-authdes"

do_configure_prepend () {
	cp ${WORKDIR}/nis.h ${S}/../tirpc/rpcsvc/nis.h
}
