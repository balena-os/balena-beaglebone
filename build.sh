#!/bin/sh
HERE="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
balena login
$HERE/balena-yocto-scripts/build/balena-build.sh -d beaglebone -t balena-image-flasher -k -s $HERE/work
balena os configure $HERE/build/tmp/deploy/images/beaglebone/balena-image-flasher-beaglebone.balenaos-img -f v3-gateway --device-type beaglebone --config $HERE/bn-customizations/config.json --system-connection $HERE/bn-customizations/system-connections/* --version 4.0.1+bn1 --config-network ethernet
balena preload $HERE/build/tmp/deploy/images/beaglebone/balena-image-flasher-beaglebone.balenaos-img --fleet v3-gateway --commit be5f74c7cb3a265f2a719d234998fe0db1d0cc1a -p
