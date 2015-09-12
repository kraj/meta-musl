FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append_libc-musl = "\
  file://0014-Define-GLOB_ALTDIRFUNC-if-not-provided.patch \
  file://0015-hwdb-don-t-use-glibc-specific-qsort_r.patch \
  file://0016-include-netinet-ether.h-before-linux-if_ether.h.patch \
  file://0017-shared-missing.h-check-for-missing-canonicalize_file.patch \
  file://0018-shared-missing.h-check-for-missing-strndupa.patch \
  file://0019-shared-missing.h-check-for-missing-__compar_fn_t-typ.patch \
  file://0020-udevadm-hwdb-don-t-use-glibc-specific-qsort_r.patch \
  file://0021-comparison_fn_t-is-glibc-specific-use-raw-signature-.patch \
  file://0022-Use-getenv-when-secure-versions-are-not-available.patch \
  file://0023-don-t-fail-if-GLOB_BRACE-is-not-defined.patch \
  file://0024-add-fallback-parse_printf_format-implementation.patch \
  file://0025-socket-util-don-t-fail-if-libc-doesn-t-support-IDN.patch \
  file://0026-sys-stat.h-is-needed-for-mode_t.patch \
  file://0027-Include-sys-file.h-for-LOCK_-defines.patch \
  file://0028-shared-utmp-wtmp-don-t-fail-if-libc-doesn-t-support-.patch \
  file://0029-sd-ipv4all-fall-back-to-random-if-no-random_r.patch \
  file://0030-include-sys-types.h-for-ssize_t-definition.patch \
  file://0031-shared-pty-fall-back-to-kernel-header-for-TIOCSIG.patch \
"

EXTRA_OECONF_append_libc-musl = "\
            --disable-selinux --disable-smack --disable-myhostname \
            --disable-machined --disable-sysusers --disable-tmpfiles \
           "
