
PACKAGECONFIG:append:aarch64 = " watchdog"
TEST_LIST:append:aarch64 = "\
    watchdog \
"

CFLAGS:append:aarch64 = " -static"