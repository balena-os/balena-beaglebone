Change log
-----------

# v1.30.0 - 2017-08-23

* Update meta-resin to v1.30 [Florin]
* Update resin-yocto-scripts to HEAD of the 1.X branch [Florin]
* Update kernel to version 4.9.34-ti-r43 [Florin]
* Update resin-yocto-scripts to master [Will]

# v1.26.0-rc0 - 2017-01-27

* Update meta-resin to v1.26-rc0 [Andrei]
* Tune memory to prevent higher-order allocation failures [petrosagg]
* Update resin-yocto-scripts to HEAD of the 1.X branch [Florin]

# v1.24.0 - 2016-12-05

* Update meta-resin to v1.24 [Florin]

# v1.23.0 - 2016-12-05

* Update meta-resin to v1.23 [Andrei]

# v1.22.1 - 2016-12-01

* Update resin-yocto-scripts to include latest bits [Andrei]

# v1.22.0 - 2016-12-01

* Update meta-resin to v1.22 [Andrei]
* Set a predefined sequence to abort or delay booting [Michal]

# v1.20.0 - 2016-11-15

* Update meta-resin to v1.20 [Florin]

# v1.19.0 - 2016-10-25

* Update meta-resin to v1.19 [Florin]

# v1.18.0 - 2016-10-24

* Update meta-resin to v1.18 [Florin]

# v1.17.1 - 2016-10-24

* Apply the mmc fix (set vm.vfs_cache_pressure=400) [Michal]

# v1.17.0 - 2016-10-21

* Update meta-resin to v1.17 [Florin]

# v1.16.0 - 2016-09-27

* Update meta-resin to v1.16 [Florin]

# v1.15.0 - 2016-09-24

* Update meta-resin to v1.15 [Florin]

# v1.14.0 - 2016-09-23

* Update meta-resin to v1.14 [Florin]

# v1.13.0 - 2016-09-23

* Update meta-resin to v1.13 [Florin]
* Update kernel to tag 4.4.21-ti-rt-r46 [Florin]

# v1.12.0 - 2016-09-21

* Update meta-resin to v1.12 [Florin]
* Update resin-yocto-scripts to include resinhup upload to dockerhub [Florin]
* Update kernel to tag 4.4.21-ti-rt-r45 [Florin]
* Update kernel to tag 4.4.20-ti-rt-r44 [Florin]
* Update meta-resin [Florin]
* Change .coffee to announce partition 1 now holds config.json and also introduce versioning (v1) [Florin]
* Update kernel to version 4.4.19 [Florin]

# v1.11.0 - 2016-08-31

* Update meta-resin to v1.11 [Florin]

# v1.10.0 - 2016-08-24

* Update meta-resin to v1.10 [Florin]

# v1.9.0 - 2016-08-24

* Update meta-resin to v1.9 [Florin]
* Update resin-yocto-scripts for including kernel modules headers deploy [Florin]
* Add support for the beaglebone green board [Florin]
* Update yocto-resin-scripts for host nodejs detection improvements [Florin]

# v1.8.0 - 2016-08-02

* Bump meta-resin to v1.8 [Andrei]
* Bump resin-device-types to include partial manifest support [Andrei]
* No more debug images in staging

# v1.7.0 - 2016-07-14

* Update meta-resin to v1.7

# v1.6.0 - 2016-07-06

* Update meta-resin to v1.6 [Florin]

# v1.5.0 - 2016-07-04

* Update meta-resin to v1.5 [Florin]

# v1.5.0rc4 - 2016-06-29

* Update meta-resin to include supervisor update to v1.11.6 [Florin]

# v1.5.0rc3 - 2016-06-29

* Update meta-resin to include openvpn-resin.service refactoring [Florin]

# v1.5.0rc2 - 2016-06-28

* Update meta-resin to include docker key.json fix [Florin]
* Update meta-resin to include flasher fixes [Florin]

# v1.4.0 - 2016-06-27

* Update meta-resin to v1.4 [Florin]
* Update meta-resin to allow let error out [Florin]
* Update meta-resin to allow patching of kernel-modules-headers [Florin]
* Bump meta-resin to fix various issues [Andrei]
* Fix a small syntax error in meta-resin [Andrei]
* Fix automation fix for debug image [Andrei]
* Replace RESIN_STAGING_BUILD by DEBUG_IMAGE [Andrei]

# v1.3.0 - 2016-06-24

* Update meta-resin to v1.3 [Florin]
* Custom docker images in connectable builds [Andrei]
* Add support for optional supervisor image [Andrei]
* Update meta-resin to include kernel modules compress support [Andrei]
* Compress kernel modules [Andrei]
* Replace SUPERVISOR_TAG by TARGET_TAG [Andrei]
* Update meta-resin to v1.2 [Andrei]
* Bump meta-resin to HEAD [Andrei]
* Use new flasher strategy (specify internal bootloader config file and location where to copy it) [Florin]
* Update meta-resin submodule for including bootloader specific removal changes [Florin]
* Bump yocto-resin-scripts to bring in improvements for in-docker builds [Andrei]
* Configure builds with RM_OLD_IMAGE [Theodor]

# v1.4.1 - 2016-05-19

* New machine support: BeagleBone Green Wireless [Theodor]
* Provide dtb to control on-board wireless for the BeagleBone Green [Theodor]
* Allow users to use UART5 [Theodor]
* Bump meta-resin to include switch from rce to docker [Andrei]

# v1.4.0 - 2016-04-16

# v1.1.1 - 2016-03-16

* Transition from fido -> jethro [Theodor]
