# Copyright (C) 2014 Khem Raj <raj.khem@gmail.com>
# Released under the MIT license (see COPYING.MIT for the terms)

require musl.inc

SRCREV = "c63c98a6067030a25a42703db1209ccbcc74803a"
PV = "1.1.6+git${SRCPV}"

# mirror is at git://github.com/bminor/musl.git

SRC_URI = "git://git.musl-libc.org/musl \
          "
S = "${WORKDIR}/git"

PROVIDES += "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc virtual/libiconv virtual/libintl"

DEPENDS = "virtual/${TARGET_PREFIX}binutils \
           virtual/${TARGET_PREFIX}gcc-initial \
           libgcc-initial \
          "
LDFLAGS += "-Wl,-soname,libc.so"

do_configure() {
	${S}/configure
}

do_compile() {
	oe_runmake
}

do_install() {
	oe_runmake install DESTDIR='${D}'
}

RDEPENDS_${PN}-dev = "linux-libc-headers-dev"
RPROVIDES_${PN}-dev += "libc-dev virtual-libc-dev"
RPROVIDES_${PN} += "libsegfault rtld(GNU_HASH)"

LEAD_SONAME = "libc.so"
