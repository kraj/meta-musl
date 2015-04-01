FILESEXTRAPATHS_prepend := "${THISDIR}/gcc-${PV}:"

SRC_URI += "\
           file://1000-libstdc-musl.patch \
           file://1001-gcc-musl-support.patch \
           file://1002-musl-dynamic-linker.patch \
           file://1003-musl-no-fixincludes.patch \
          "
