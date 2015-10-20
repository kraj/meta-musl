# Copyright (C) 2014 Khem Raj <raj.khem@gmail.com>
# Released under the MIT license (see COPYING.MIT for the terms)

require musl.inc

SRCREV = "615629bd6fcd6ddb69ad762e679f088c7bd878e2"

PV = "1.1.12+git${SRCPV}"

# mirror is at git://github.com/bminor/musl.git

SRC_URI = "git://git.musl-libc.org/musl \
          "

S = "${WORKDIR}/git"

PROVIDES += "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc virtual/libiconv virtual/libintl"

DEPENDS = "virtual/${TARGET_PREFIX}binutils \
           virtual/${TARGET_PREFIX}gcc-initial \
           libgcc-initial \
          "

export CROSS_COMPILE="${TARGET_PREFIX}"

EXTRA_OEMAKE = ""

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
