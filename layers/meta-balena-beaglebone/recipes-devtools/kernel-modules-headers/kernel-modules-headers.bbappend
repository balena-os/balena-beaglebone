# JET: Need to overide do_compile().  Balena version passes wrong arg (3rd)
# to gen_mod_headers script.

do_compile() {
    mkdir -p kernel_modules_headers
    # JET ${S}/gen_mod_headers ./kernel_modules_headers ${STAGING_KERNEL_DIR} ${DEPLOY_DIR_IMAGE} ${ARCH} ${TARGET_PREFIX} "${CC}" "${HOSTCC}"
    ${S}/gen_mod_headers ./kernel_modules_headers ${STAGING_KERNEL_DIR} ${STAGING_KERNEL_BUILDDIR} ${ARCH} ${TARGET_PREFIX} "${CC}" "${HOSTCC}"

    # Sanity test

    file_output=$(find kernel_modules_headers/  | xargs file | grep ELF)
    echo "$file_output" | while read -r a; do
        if echo "$a" | grep -Fiq "sysroot" ; then
            bbwarn "$a"
            bbwarn "Sysroot keyword found in interpreter ELF files"
            exit 1
        fi
    done

    tar -czf ${B}/kernel_modules_headers.tar.gz kernel_modules_headers
}
