#!/bin/bash -xe
HERE="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
COMMIT=3f643827ce0ea517813fb9887ba3815085c1b6ec
#COMMIT=144b01a94e5604a6d59e2d1680af6e1730ad1847
VERSION=4.0.1-bn3
balena login
$HERE/balena-yocto-scripts/build/balena-build.sh -d beaglebone -t balena-image-flasher -k -s $HERE/work
balena os configure $HERE/build/tmp/deploy/images/beaglebone/balena-image-flasher-beaglebone.balenaos-img -f v3-gateway --device-type beaglebone --config $HERE/bn-customizations/config.json --system-connection $HERE/bn-customizations/system-connections/* --version $VERSION --config-network ethernet
balena preload $HERE/build/tmp/deploy/images/beaglebone/balena-image-flasher-beaglebone.balenaos-img --fleet v3-gateway --commit $COMMIT -p
docker load -i build/tmp/deploy/images/beaglebone/balena-image-beaglebone.docker | \
 sed -n 's/^Loaded image ID: sha256:\([0-9a-f]*\).*/\1/p' | \
 xargs -i docker tag {} jkridner/beaglebone-image:$VERSION
docker push jkridner/beaglebone-image:$VERSION
