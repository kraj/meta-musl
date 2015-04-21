# Copyright (C) 2014 Khem Raj <raj.khem@gmail.com>
# Released under the MIT license (see COPYING.MIT for the terms)

require musl.inc

SRCREV = "115af23942e024f78779ab29832fed3938c799e7"
PV = "1.1.8+git${SRCPV}"

# mirror is at git://github.com/bminor/musl.git

SRC_URI = "git://git.musl-libc.org/musl \
           file://check_for_mtune_passed_via_cc.patch \
          "

S = "${WORKDIR}/git"

PROVIDES += "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc virtual/libiconv virtual/libintl"

DEPENDS = "virtual/${TARGET_PREFIX}binutils \
           virtual/${TARGET_PREFIX}gcc-initial \
           libgcc-initial \
          "
LDFLAGS += "-Wl,-soname,libc.so"

CONFIGUREOPTS = " \
    --prefix=${prefix} \
    --exec-prefix=${exec_prefix} \
    --bindir=${bindir} \
    --libdir=${libdir} \
    --includedir=${includedir} \
    --syslibdir=${base_libdir} \
"

do_configure() {
	${S}/configure ${CONFIGUREOPTS}
}

do_compile() {
	oe_runmake
}

do_install() {
	oe_runmake install DESTDIR='${D}'

	install -d ${D}${bindir}
	ln -s ${libdir}/libc.so ${D}${bindir}/ldd
}

RDEPENDS_${PN}-dev = "linux-libc-headers-dev"
RPROVIDES_${PN}-dev += "libc-dev virtual-libc-dev"
RPROVIDES_${PN} += "ldd libsegfault rtld(GNU_HASH)"

LEAD_SONAME = "libc.so"
