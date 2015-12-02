
do_install_append() {

	case "${TARGET_ARCH}" in
		mips*)
			[ -e '${D}${includedir}/sgidefs.h' ] || echo '#include <asm/sgidefs.h>' > ${D}${includedir}/sgidefs.h
			;;
	esac
}
