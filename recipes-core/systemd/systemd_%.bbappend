FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "\
            file://0001-Define-GLOB_ALTDIRFUNC-if-not-provided.patch \
            file://0002-hwdb-don-t-use-glibc-specific-qsort_r.patch \
            file://0003-include-netinet-ether.h-before-linux-if_ether.h.patch \
            file://0004-Include-sys-file.h-for-LOCK_-defines.patch \
            file://0005-sys-stat.h-is-needed-for-mode_t.patch \
            file://0006-include-sys-types.h-for-ssize_t-definition.patch \
            file://0007-don-t-fail-if-GLOB_BRACE-is-not-defined.patch \
            file://0008-shared-socket-util-don-t-fail-if-libc-doesn-t-suppor.patch \
            file://0009-shared-pty-fall-back-to-kernel-header-for-TIOCSIG.patch \
            file://0010-shared-missing.h-check-for-missing-canonicalize_file.patch \
            file://0011-shared-missing.h-check-for-missing-strndupa.patch \
            file://0012-shared-utmp-wtmp-don-t-fail-if-libc-doesn-t-support-.patch \
            file://0013-add-fallback-parse_printf_format-implementation.patch \
            file://0014-dhcp-internal.h-add-fallback-IPTOS_CLASS_CS6-definit.patch \
            file://0015-udevadm-hwdb-don-t-use-glibc-specific-qsort_r.patch \
            file://0016-shared-missing.h-check-for-missing-__compar_fn_t-typ.patch \
            file://0017-sd-ipv4all-fall-back-to-random-if-no-random_r.patch \
           "

EXTRA_OECONF += "--disable-selinux --disable-smack --disable-myhostname \
                 --disable-machined --disable-sysusers --disable-tmpfiles \
                "
