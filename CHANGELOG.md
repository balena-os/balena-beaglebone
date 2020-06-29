Change log
-----------

# v2.51.1+rev2
## (2020-06-29)

* u-boot: Use meta-balena fs uuids for beaglebones [Alexandru Costache]

# v2.51.1+rev1
## (2020-06-26)

* Update balena-yocto-scripts to v1.8.0 [Alexandru Costache]

<details>
<summary> Update meta-balena from v2.48.0 to v2.51.1 [Alexandru Costache] </summary>

> ## meta-balena-2.51.1
> ### (2020-06-04)
> 
> * openvpn: Add runtime dependency on bash [Willem Remie]

> ## meta-balena-2.51.0
> ### (2020-06-03)
> 
> * balena-engine: Update to 19.03.13 [Robert Günzler]

> ## meta-balena-2.50.4
> ### (2020-06-02)
> 
> * Use correct SRC_URI for bindmount [Florin Sarbu]

> ## meta-balena-2.50.3
> ### (2020-06-01)
> 
> * os-helpers-fs: Fix shellcheck warnings [Alex Gonzalez]
> * Fallback to label root device matching to support devices with closed source bootloaders [Alex Gonzalez]
> * Fallback to labels and partlabels for devices with custom HUPs [Alex Gonzalez]

> ## meta-balena-2.50.2
> ### (2020-05-27)
> 
> * Enable the Analog Devices AD5446 kernel driver [Florin Sarbu]

> ## meta-balena-2.50.1
> ### (2020-05-21)
> 
> * networkmanager: Remove build warning [Alex Gonzalez]
> * Remove busybox-syslog to use only systemd's journald [Alex Gonzalez]
> * Update CODEOWNERS [Alex Gonzalez]
> * Backport NM patch for setting modem MTU correctly [Florin Sarbu]
> * update-resin-supervisor: short circuit if remote image cannot be fetched [Matthew McGinn]
> 
<details>
<summary> Update balena-supervisor from v11.4.1 to v11.4.10 [Cameron Diver] </summary>

>> ### balena-supervisor-11.4.10
>> #### (2020-05-18)
>> 
>> * Fix leftover spurious return from typescript conversion [Cameron Diver]

>> ### balena-supervisor-11.4.9
>> #### (2020-05-18)
>> 
>> * Catch errors in the target state poll so polling will always continue [Pagan Gazzard]

>> ### balena-supervisor-11.4.8
>> #### (2020-05-18)
>> 
>> * Avoid querying `instantUpdates` on every state poll [Pagan Gazzard]

>> ### balena-supervisor-11.4.7
>> #### (2020-05-16)
>> 
>> * Fix default request options [Pagan Gazzard]

>> ### balena-supervisor-11.4.6
>> #### (2020-05-15)
>> 
>> * Remove CoffeeScript tests and all CoffeeScript tools [Miguel Casqueira]

>> ### balena-supervisor-11.4.5
>> #### (2020-05-15)
>> 
>> * Update to @balena/lint 5.x [Pagan Gazzard]

>> ### balena-supervisor-11.4.4
>> #### (2020-05-15)
>> 
>> * Add a random offset to the poll interval with each poll [Cameron Diver]

>> ### balena-supervisor-11.4.3
>> #### (2020-05-14)
>> 
>> * Cache service names in local log backend [Cameron Diver]

>> ### balena-supervisor-11.4.2
>> #### (2020-05-13)
>> 
>> * Update engine information in package.json [Cameron Diver]
</details>

> 

> ## meta-balena-2.50.0
> ### (2020-05-13)
> 
> * Use /tmp as bootparam_root storage [Alex Gonzalez]
> * Update to libqmi v1.24.10 [Michal Toman]
> * Set rust 1.36 as the preferred rust version from meta-balena-common [Zubair Lutfullah Kakakhel]
> * Turn off wlan0 power save [Michal Toman]
> 
<details>
<summary> Update os-config from 1.1.3 to 1.1.4 [Alex Gonzalez] </summary>

>> ### os-config-1.1.4
>> #### (2020-05-13)
>> 
>> * versionbot: Add changelog yml file [Alex Gonzalez]
</details>

> 
> 
<details>
<summary> Update balena-supervisor from v11.3.0 to v11.4.1 [Cameron Diver] </summary>

>> ### balena-supervisor-11.4.1
>> #### (2020-05-12)
>> 
>> * Correctly check if value is a valid Integer [Miguel Casqueira]

>> ### balena-supervisor-11.4.0
>> #### (2020-05-12)
>> 
>> * Added endpoint to check if VPN is connected [Miguel Casqueira]

>> ### balena-supervisor-11.3.11
>> #### (2020-05-11)
>> 
>> * Fixed stubs for test suite [Miguel Casqueira]

>> ### balena-supervisor-11.3.10
>> #### (2020-05-11)
>> 
>> * Added more documentation to help new contributors start developing [Miguel Casqueira]

>> ### balena-supervisor-11.3.9
>> #### (2020-05-11)
>> 
>> * Fix dindctl script and update balenaos-in-container [Cameron Diver]

>> ### balena-supervisor-11.3.8
>> #### (2020-05-08)
>> 
>> * Remove unnecessary config.json keys [Pagan Gazzard]

>> ### balena-supervisor-11.3.7
>> #### (2020-05-08)
>> 
>> * CI: Use node 12 for tests to match runtime version [Pagan Gazzard]
>> * CI: Use docker 18 client to match remote [Pagan Gazzard]

>> ### balena-supervisor-11.3.6
>> #### (2020-05-07)
>> 
>> * Move SupervisorAPI state change logs to appropriate functions [Miguel Casqueira]

>> ### balena-supervisor-11.3.5
>> #### (2020-05-07)
>> 
>> * Add 20k-ultra to codeowners [Miguel Casqueira]

>> ### balena-supervisor-11.3.4
>> #### (2020-05-06)
>> 
>> * Don't use the openvpn alias to check VPN status [Cameron Diver]

>> ### balena-supervisor-11.3.3
>> #### (2020-05-06)
>> 
>> * Use lstat rather than stat to avoid error with symlinks in sync [Cameron Diver]

>> ### balena-supervisor-11.3.2
>> #### (2020-05-05)
>> 
>> * Move build files into build-conf and rename to build-utils [Cameron Diver]
>> * Fix knex migration require translation [Cameron Diver]

>> ### balena-supervisor-11.3.1
>> #### (2020-05-05)
>> 
>> * Remove legacy fallback to DROP rule in iptables [Cameron Diver]
>> * Add an ESTABLISHED flag to API iptables rules [Cameron Diver]
>> * Add ESR information to repo.yml [Cameron Diver]
</details>

> 
> 
<details>
<summary> Update balena-supervisor from v10.11.0 to v11.3.0 [Cameron Diver] </summary>

>> ### balena-supervisor-11.3.0
>> #### (2020-05-04)
>> 
>> * Added Bearer Authorization spec [Miguel Casqueira]

>> ### balena-supervisor-11.2.0
>> #### (2020-04-30)
>> 
>> * Added explanation README for running specific tests [Miguel Casqueira]

>> ### balena-supervisor-11.1.11
>> #### (2020-04-28)
>> 
>> * Remove coverage running and modules [Cameron Diver]

>> ### balena-supervisor-11.1.10
>> #### (2020-04-27)
>> 
>> * Update balena-register-device to fix provisioning [Cameron Diver]

>> ### balena-supervisor-11.1.9
>> #### (2020-04-22)
>> 
>> * Added protocol to semver.org link [Miguel Casqueira]

>> ### balena-supervisor-11.1.8
>> #### (2020-04-21)
>> 
>> * Actually remove dbus-native dependency [Cameron Diver]

>> ### balena-supervisor-11.1.7
>> #### (2020-04-21)
>> 
>> * Fix livepush predicate for POSIX sh in entry.sh [Cameron Diver]

>> ### balena-supervisor-11.1.6
>> #### (2020-04-21)
>> 
>> * Remove double printing of API status error [Cameron Diver]

>> ### balena-supervisor-11.1.5
>> #### (2020-04-15)
>> 
>> * ⤴️ Upgrade migrations to work with knex [Cameron Diver]
>> * 📄 Upgrade knex to avoid CVE-2019-10757 [Cameron Diver]

>> ### balena-supervisor-11.1.4
>> #### (2020-04-14)
>> 
>> * 🔎 Also watch js files during livepush [Cameron Diver]
>> * Clear changed files after successful livepush invocation [Cameron Diver]
>> * Use livepush commands for copying and running dev specific steps [Cameron Diver]

>> ### balena-supervisor-11.1.3
>> #### (2020-04-13)
>> 
>> * 🚀 Update supervisor to node12 [Cameron Diver]

>> ### balena-supervisor-11.1.2
>> #### (2020-04-13)
>> 
>> * Move from dbus-native to dbus [Cameron Diver]

>> ### balena-supervisor-11.1.1
>> #### (2020-04-10)
>> 
>> * Update copy-webpack-plugin [Pagan Gazzard]
>> * Update ts-loader to 6.x [Pagan Gazzard]
>> * Update fork-ts-checker-webpack-plugin to 4.x [Pagan Gazzard]

>> ### balena-supervisor-11.1.0
>> #### (2020-04-09)
>> 
>> * Support matching on device type within contracts [Cameron Diver]

>> ### balena-supervisor-11.0.9
>> #### (2020-04-08)
>> 
>> * Workaround a circular dependency [Pagan Gazzard]

>> ### balena-supervisor-11.0.8
>> #### (2020-04-08)
>> 
>> * Link sqlite with a system sqlite for quicker builds [Cameron Diver]

>> ### balena-supervisor-11.0.7
>> #### (2020-04-08)
>> 
>> * Convert application-manager.coffee to javascript [Pagan Gazzard]

>> ### balena-supervisor-11.0.6
>> #### (2020-04-08)
>> 
>> * Don't sync test files with livepush [Cameron Diver]

>> ### balena-supervisor-11.0.5
>> #### (2020-04-07)
>> 
>> * Add newTargetState event and use it for backup loading [Cameron Diver]

>> ### balena-supervisor-11.0.4
>> #### (2020-04-07)
>> 
>> * Don't wrap UpdatesLockedErrors with a detailed error [Cameron Diver]

>> ### balena-supervisor-11.0.3
>> #### (2020-04-07)
>> 
>> * Allow spaces in volume definitions [Cameron Diver]

>> ### balena-supervisor-11.0.2
>> #### (2020-04-06)
>> 
>> * Update to balena-register-device 6.0.1 [Pagan Gazzard]

>> ### balena-supervisor-11.0.1
>> #### (2020-04-06)
>> 
>> * Don't mangle names when minimising with webpack [Cameron Diver]

>> ### balena-supervisor-11.0.0
>> #### (2020-04-06)
>> 
>> * ⚡ Update synchronisation scripts for supervisor development [Cameron Diver]
>> * 🔧 Move to an alpine base image and drop i386-nlp support [Cameron Diver]

>> ### balena-supervisor-10.11.3
>> #### (2020-04-02)
>> 
>> * Convert test/18-startup.coffee to typescript [Pagan Gazzard]
>> * Convert test/19-compose-utils.coffee to javascript [Pagan Gazzard]
>> * Convert test/18-compose-network.coffee to javascript [Pagan Gazzard]
>> * Convert test/17-config-utils.spec.coffee to javascript [Pagan Gazzard]
>> * Convert test/16-ports.spec.coffee to typescript [Pagan Gazzard]
>> * Convert test/15-conversions.spec.coffee to javascript [Pagan Gazzard]
>> * Convert test/12-logger.spec.coffee to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.11.2
>> #### (2020-03-31)
>> 
>> * Pass in deviceId when fetching device tags [Cameron Diver]

>> ### balena-supervisor-10.11.1
>> #### (2020-03-30)
>> 
>> * 🔧 Update resin-lint -> balena-lint in lintstaged [Cameron Diver]
</details>

> 
> 
<details>
<summary> Update os-config from 1.1.1 to 1.1.3 [Zubair Lutfullah Kakakhel] </summary>

>> ### os-config-1.1.3
>> #### (2020-03-24)
>> 
>> * Reorder module dependencies [Zahari Petkov]
>> * Pin serde version to v1.0.94 [Zahari Petkov]

>> ### os-config-1.1.2
>> #### (2020-02-04)
>> 
>> * Block on random until success [Zahari Petkov]
>> * Use parse_filters instead of parse [Zubair Lutfullah Kakakhel]
</details>

> 

> ## meta-balena-2.49.0
> ### (2020-05-01)
> 
> * balena-host: Ignore environment file if it does not exist [Alex Gonzalez]
> * Bump balena-engine to 18.09.17 [Robert Günzler]
> * networkmanager: Use absolute path in drop-in [Sven Schwermer]
> * Update ModemManager to v1.12.8 [Michal Toman]
> * Update balena-engine to 18.09.16 [Robert Günzler]
> * Add support for using udev by-state links in balenaOS [Alex Gonzalez]
> * Add initramfs module to regenerate default filesystem UUIDs [Alex Gonzalez]
> * Create udev state symlinks for all partitions [Alex Gonzalez]
> * initramfs-framework: Add os-helpers to module prepare [Alex Gonzalez]
> * Fix initramfs fsck warnings for the boot partition [Andrei Gherzan]
> * Switch to built-in FAT kernel configs [Andrei Gherzan]
> 
<details>
<summary> Update balena-supervisor from v10.8.0 to v10.11.0 [Cameron Diver] </summary>

>> ### balena-supervisor-10.11.0
>> #### (2020-03-30)
>> 
>> * Add BALENA_DEVICE_ARCH environment variable for containers [Cameron Diver]

>> ### balena-supervisor-10.10.15
>> #### (2020-03-30)
>> 
>> * Don't throw an error when getting an unhealthy state [Cameron Diver]

>> ### balena-supervisor-10.10.14
>> #### (2020-03-28)
>> 
>> * Convert src/device-api/common.coffee to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.10.13
>> #### (2020-03-27)
>> 
>> * Switch to mz for the proxyvisor [Pagan Gazzard]
>> * Convert proxyvisor to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.10.12
>> #### (2020-03-26)
>> 
>> * Remove unnecessary code from application-manager [Pagan Gazzard]
>> * Switch to a named export for application-manager [Pagan Gazzard]

>> ### balena-supervisor-10.10.11
>> #### (2020-03-25)
>> 
>> * Convert device-api/v1 to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.10.10
>> #### (2020-03-24)
>> 
>> * Update livepush [Cameron Diver]

>> ### balena-supervisor-10.10.9
>> #### (2020-03-24)
>> 
>> * Add type checking for javascript files [Pagan Gazzard]

>> ### balena-supervisor-10.10.8
>> #### (2020-03-24)
>> 
>> * Pin resin-cli-visuals to avoid build error of lzma-native [Cameron Diver]
>> * Update dependencies [Cameron Diver]

>> ### balena-supervisor-10.10.7
>> #### (2020-03-24)
>> 
>> * Avoid any transpilation of node_modules [Pagan Gazzard]

>> ### balena-supervisor-10.10.6
>> #### (2020-03-24)
>> 
>> * Add transpilation for javascript files to ease node 6 compatibility [Pagan Gazzard]
>> * Add a precheck that linting/tests work on node 10 [Pagan Gazzard]
>> * Update to balena-lint and enable javascript linting [Pagan Gazzard]

>> ### balena-supervisor-10.10.5
>> #### (2020-03-23)
>> 
>> * Tests: Add missing await [Pagan Gazzard]

>> ### balena-supervisor-10.10.4
>> #### (2020-03-16)
>> 
>> * docs: Clarify update locks for multicontainer applications [Gareth Davies]

>> ### balena-supervisor-10.10.3
>> #### (2020-03-16)
>> 
>> * logging: fix up some typos [Matthew McGinn]

>> ### balena-supervisor-10.10.2
>> #### (2020-03-16)
>> 
>> * Bump acorn from 5.7.3 to 5.7.4 [dependabot[bot]]

>> ### balena-supervisor-10.10.1
>> #### (2020-03-13)
>> 
>> * Update dependencies [Pagan Gazzard]

>> ### balena-supervisor-10.10.0
>> #### (2020-03-06)
>> 
>> * Allow semver comparison on l4t versions in contracts [Cameron Diver]
>> * Allow l4t versions with three numbers as well as two [Cameron Diver]

>> ### balena-supervisor-10.9.2
>> #### (2020-03-05)
>> 
>> * config: Support loading SSDT via ConfigFS [Rich Bayliss]

>> ### balena-supervisor-10.9.1
>> #### (2020-02-25)
>> 
>> * Convert device-state module to typescript [Cameron Diver]
>> * Improve application-manager typings [Cameron Diver]
>> * Improve and extend internal typings [Cameron Diver]

>> ### balena-supervisor-10.9.0
>> #### (2020-02-24)
>> 
>> * Add a containerId request parameter for journal-logs api endpoint, and pass it along to journalctl process options. [Ivan]
</details>

> 
</details>

# v2.48.0+rev2
## (2020-05-12)

* Set private to false in .coffee files for the public device types [Florin Sarbu]

# v2.48.0+rev1
## (2020-03-25)

* Update balena-yocto-scripts to v1.5.6 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.47.1 to v2.48.0 [Florin Sarbu] </summary>

> ## meta-balena-2.48.0
> ### (2020-03-20)
> 
> * Add the linux-firmware recipe from the Poky zeus-22.0.1 release and package various iwlwifi firmware separately [Florin Sarbu]
> * Add regulatory.db (Wireless Central Regulatory Domain Database) to rootfs so kernel versions >= v4.15 can load it (for Poky Thud and Warrior based board) [Florin Sarbu]
> * Do not send SIGKILL directly to user containers (set KillMode=process in balena.service) [Florin Sarbu]
> * Update balena-supervisor from  to v10.8.0 [Cameron Diver]
> * Update config.json documentation for disabling NM connectivity checks [Gareth Davies]
> * Fix a typo in a NetworkManager plugin path [Zubair Lutfullah Kakakhel]
> * Remove unnecessary openvpn v2.4.4 recipe in meta-resin-pyro. [Zubair Lutfullah Kakakhel]
> * Use a weak default assignment in a recipe for customer trying to override a variable in his layer [Zubair Lutfullah Kakakhel]
</details>

# v2.47.1+rev2
## (2020-03-06)

* linux-beagleboard: Prevent kernel panic if rtc failed [Alexandru Costache]

# v2.47.1+rev1
## (2020-02-13)


<details>
<summary> Update meta-balena from v2.47.0 to v2.47.1 [Florin Sarbu] </summary>

> ## meta-balena-2.47.1
> ### (2020-02-13)
> 
> * Affects 2.45+ on all devices. Fix dangling sshd services on failed connections that would grow and cause cpu load to keep rising. See issue 1837 in meta-balena for more detail. [Zubair Lutfullah Kakakhel]
</details>

# v2.47.0+rev1
## (2020-02-11)

* Update balena-yocto-scripts to v1.5.4 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.46.1 to v2.47.0 [Florin Sarbu] </summary>

> ## meta-balena-2.47.0
> ### (2020-01-29)
> 
> * Update usb-modeswitch-data to version 20191128 [Florin Sarbu]
> * Update usb-modeswitch to version 2.5.2 [Florin Sarbu]
> * Update to ModemManager v1.12.4 [Florin Sarbu]
> * Update libmbim to version 1.22.0 [Florin Sarbu]
> * Update libqmi to version 1.24.4 [Florin Sarbu]
> * Add periodic vacuuming of journald log files [Alex Gonzalez]
> * No user impact. Increase limit for maximum initramfs size from 12MB to 32MB. This helps reduce unnecessary overrides in integration layers. [Zubair Lutfullah Kakakhel]
> * Match licenses with license files. [Alex Gonzalez]
> * Enable sixaxis support in bluez5 [Alexis Svinartchouk]
> * Addressing review comments [Gareth Davies]
> * Update config.json documentation [Gareth Davies]
> * Increase DNS clients timeout to 15 seconds [Alex Gonzalez]
> * Fix supervisor nested changelogs [Zubair Lutfullah Kakakhel]
> * Enable memory overcommit [Alex Gonzalez]
> * Add uinput kernel module [Florin Sarbu]
> * Make sure to add in rootfs the wifi firmware for wl18xx [Florin Sarbu]
> * Add supported USB WiFi dongle [Vicentiu Galanopulo]

> ## meta-balena-2.46.2
> ### (2020-01-17)
> 
> * Americanize the README.md [Matthew McGinn]
</details>

# v2.46.1+rev4
## (2020-02-11)

* Update meta-rust to include 1.36 [Zubair Lutfullah Kakakhel]

# v2.46.1+rev3
## (2020-02-10)

* Remove unnecessary override of IMAGE_ROOTFS_MAXSIZE [Zubair Lutfullah Kakakhel]

# v2.46.1+rev2
## (2020-01-15)

* Change the state to 'released' in the coffee files [Vicentiu Galanopulo]

# v2.46.1+rev1
## (2020-01-04)


<details>
<summary> Update meta-balena from v2.45.0 to v2.46.1 [Florin Sarbu] </summary>

> ## meta-balena-2.46.1
> ### (2020-01-01)
> 
> * Disable by default the option to stop u-boot autoboot by pressing CTRL+C in all OS versions [Florin Sarbu]
> * Increase NTP polling time to around 4.5 hours. [Alex Gonzalez]
> * Disable the option to stop u-boot autoboot by pressing CTRL+C in production OS version [Florin Sarbu]

> ## meta-balena-2.46.0
> ### (2019-12-23)
> 
> * Update to ModemManager v1.12.2 [Zahari Petkov]
> * Update libmbim to version 1.20.2 [Zahari Petkov]
> * Update libqmi to version 1.24.2 [Zahari Petkov]
> * Update balena-supervisor to v10.6.27 [Cameron Diver]
> * Tweak how the flasher asserts that internal media is valid for being installed balena OS on [Florin Sarbu]
> * Remove networkmanager stale temporary files at startup [Alex Gonzalez]
> * networkmanager: Rework patches to remove fuzzing [Alex Gonzalez]
> * Update openvpn to v2.4.7 [Will Boyce]
> * Enable kernel configs for USB_SERIAL, USB_SERIAL_PL2303 and HFS for all devices [Zubair Lutfullah Kakakhel]
> * image-resin.bbclass: Mark do_populate_lic_deploy with nostamp [Zubair Lutfullah Kakakhel]
> * Namespace the hello-world healthcheck image [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.6.17 [Cameron Diver]
> * Update balena-supervisor to v10.6.13 [Cameron Diver]
> * Update CODEOWNERS [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.45.1
> ### (2019-11-21)
> 
> * Fix for a race condition where occasionally the supervisor might not be able to come up during boot. Also can be caused by using io.balena.features.balena-socket and app container restart always policy. Affects meta-balena 2.44.0 and 2.45.0. To be fixed in 2.44.1 and 2.46.0 [Zubair Lutfullah Kakakhel]
> * Rename resin to balena where possible [Pagan Gazzard]
> * Add leading new line for PACKAGE_INSTALL variable [Vicentiu Galanopulo]
> * Set `net.ipv4.ip_local_port_range` to recommended range (49152-65535) [Will Boyce]
> * No user impact, subtle fix in rollback version checks [Zubair Lutfullah Kakakhel]
</details>

# v2.45.0+rev2
## (2019-11-19)

* Update balena-yocto-scripts to v1.5.2 [Florin Sarbu]

# v2.45.0+rev1
## (2019-11-12)

* Update to thud [Vicentiu Galanopulo]

<details>
<summary> Update meta-balena from v2.43.0 to v2.45.0 [Vicentiu Galanopulo] </summary>

> ## meta-balena-2.45.0
> ### (2019-10-30)
> 
> * Increase persistent journal size to 32M [Will Boyce]
> * Move persistent logs from state to data partition [Will Boyce]
> * Add wpa-supplicant recipe and update to v2.9 [Will Boyce]
> * Improve robustness by making variou services restart if they stop for some reason [Zubair Lutfullah Kakakhel]
> * Build net/dummy as module [Alexandru Costache]

> ## meta-balena-2.44.0
> ### (2019-10-03)
> 
> * Make uboot dev images autoboot delay build time configurable. Default is no delay [Zubair Lutfullah Kakakhel]
> * Reduce systemd logging level from info to notice [Zubair Lutfullah Kakakhel]
> * resin-supervisor: Expose container ID via env variable [Roman Mazur]
> * kernel-devsrc: Copy vdso.lds.S file in source archive if available [Sebastian Panceac]
> * Disable PasswordAuthentication in sshd in production images as an extra precautionary measure. [Zubair Lutfullah Kakakhel]
> * Update balena-engine to 18.9.10 [Robert Günzler]
> * hostapp-update-hooks: Filter out automount for inactive sysroot [Alexandru Costache]
> * Add support for hooks 2.0 enabling finer granularity during HostOS updates. [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.3.7 [Cameron Diver]
> * Add support for balena cloud SSH public keys [Andrei Gherzan]
> * Map any user to root using libnss-ato [Andrei Gherzan]
> * Add option to disable kernel headers from being built. [Zubair Lutfullah Kakakhel]
</details>

# v2.43.0+rev4
## (2019-10-10)

* Update balena-yocto-scripts to v1.4.0 [Florin Sarbu]

# v2.43.0+rev3
## (2019-09-30)

* Update balena-yocto-scripts to v1.3.8 [Zubair Lutfullah Kakakhel]

# v2.43.0+rev2
## (2019-09-24)

* Patches for TCP-based remote denial of service vulnerabilities [Vicentiu Galanopulo]

# v2.43.0+rev1
## (2019-09-23)


<details>
<summary> Update meta-balena from v2.41.1 to v2.43.0 [Florin Sarbu] </summary>

> ## meta-balena-2.43.0
> ### (2019-09-13)
> 
> * Update NetworkManager to 1.20.2 [Andrei Gherzan]
> * Update ModemManager to 1.10.6 [Andrei Gherzan]

> ## meta-balena-2.42.0
> ### (2019-09-13)
> 
> * A small fix in initramfs when /dev/console is invalid due to whatever reason [Zubair Lutfullah Kakakhel]
> * Add automated testing for external kernel module header tarballs [Zubair Lutfullah Kakakhel]
> * Make sure correct utsrelease.h is packaged [Zubair Lutfullah Kakakhel]
> * Fix a bug where application containers with new systemd versions were failing to start in cases. Switch to systemd cgroup driver in balenaEngine [Zubair Lutfullah Kakakhel]
</details>

# v2.41.1+rev2
## (2019-09-16)

* Replace 'resin' with 'balena' and update pull request rules. [Rafq77]

# v2.41.1+rev1
## (2019-09-11)

* Update the balena-yocto-scripts submodule to v1.3.7 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.40.0 to v2.41.1 [Florin Sarbu] </summary>

> ## meta-balena-2.41.1
> ### (2019-09-03)
> 
> * Update ModemManager to version 1.10.4 [Florin Sarbu]
> * Fix for some innocous systemd tmpfile warnings /var/run -> /run ones [Zubair Lutfullah Kakakhel]
> * Fix for rollbacks where the inactive partition mount was unavailable when altboot triggered [Zubair Lutfullah Kakakhel]
> * kernel-resin: Enable FTDI USB-serial convertors driver [Sebastian Panceac]

> ## meta-balena-2.41.0
> ### (2019-08-22)
> 
> * Fix a hang in initramfs for warrior production images [Zubair Lutfullah Kakakhel]
> * Update balena-engine to 18.09.8 [Robert Günzler]
> * Avoid overlayfs mounts in poky's volatile-binds [Andrei Gherzan]
</details>

# v2.40.0+rev1
## (2019-08-17)


<details>
<summary> Update meta-balena from v2.38.3 to v2.40.0 [Florin Sarbu] </summary>

> ## meta-balena-2.40.0
> ### (2019-08-14)
> 
> * Update balena-supervisor to v10.2.2 [Cameron Diver]
> * Workaround for a cornercase bug in PersistentLogging where journalctl filled the state partition. Vacuum the journal on boot. [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.39.0
> ### (2019-07-31)
> 
> * usb-modeswitch-data: Switch Huawei E3372 12d1:1f01 to mbim mode [Alexandru Costache]
> * Fix rollback altboots to prevent good reboots by supervisor triggering rollback. [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Remove any BOOTDELAY for production images. Add a 2 seconds delay for development images [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Enable CONFIG_CMD_SETEXPR for all devices. Required for rollbacks to work [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Enable rollback-altboot by handling bootcount via meta-balena. [Zubair Lutfullah Kakakhel]
> * Production Devices using u-boot. Enable CONFIG_RESET_TO_RETRY to reset a device in case it drops into a u-boot shell [Zubair Lutfullah Kakakhel]
> * Remove confusing networkmanager https connectivity warning [Zubair Lutfullah Kakakhel]
> * Increase fs.inotify.max_user_instances to 512 [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.0.3 [Cameron Diver]
> * Fix balena hello-world healthcheck [Zubair Lutfullah Kakakhel]
> * Add nf_table kernel modules [Zubair Lutfullah Kakakhel]
> * hostapp-update-hooks: Use correct source for inactive sysroot [Alexandru Costache]
> * Add extra healthcheck to balena service. It will spin up a hello-world container as well [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v9.18.8 [Cameron Diver]
> * image-resin.bbclass: fixed a typo [Kyle Harding]
> * kernel-resin: Add support for CH340 family of usb-serial adapters [Sebastian Panceac]
> * resin-proxy-config: add missing reserved ip ranges to default noproxy [Will Boyce]
> * Reduce data partition size from 1G to 192M [Zubair Lutfullah Kakakhel]
</details>

# v2.38.3+rev2
## (2019-08-14)

* linux-beagleboard: Switch UART driver to CONFIG_SERIAL_OMAP [Sebastian Panceac]

# v2.38.3+rev1
## (2019-07-16)

* Update the balena-yocto-scripts submodule to v1.3.5 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.38.2 to v2.38.3 [Florin Sarbu] </summary>

> ## meta-balena-2.38.3
> ### (2019-07-10)
> 
> * resin-proxy-config: fix up incorrect bash subshell command [Matthew McGinn]
</details>

# v2.38.2+rev2
## (2019-07-10)

* Rename beaglebone-black.svg to beaglebone.svg [Florin Sarbu]

# v2.38.2+rev1
## (2019-07-10)

* Update the balena-yocto-scripts submodule to v1.2.3 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.38.0 to v2.38.2 [Florin Sarbu] </summary>

> ## meta-balena-2.38.2
> ### (2019-06-27)
> 
> * Update to kernel-modules-headers v0.0.20 to fix missing target modpost binary on kernel 5.0.3 [Florin Sarbu]
> * Update to kernel-modules-headers v0.0.19 to fix target objtool compile issue on kernel 5.0.3 [Florin Sarbu]

> ## meta-balena-2.38.1
> ### (2019-06-20)
> 
> * Add warrior to compatible layers for meta-balena-common [Florin Sarbu]
> * Fix image-resin.bbclass to be able to use deprecated layers [Andrei Gherzan]
> * Fix kernel-devsrc on thud when kernel version < 4.10 [Andrei Gherzan]
</details>

# v2.38.0+rev1
## (2019-06-19)

* Update meta-balena from v2.37.0 to v2.38.0 [Sebastian Panceac]

<details>
<summary> View details </summary>

## meta-balena-2.38.0
### (2019-06-14)

* Fix VERSION_ID os-release to be semver complient [Andrei Gherzan]
* Introduce META_BALENA_VERSION in os-release [Andrei Gherzan]
* Fix a case where changes to u-boot were not regenerating the config file at build time and using stale values. [Zubair Lutfullah Kakakhel]
* Use all.rp_filter=2 as the default value in balenaOS [Andrei Gherzan]
* Persist bluetooth storage data over reboots [Andrei Gherzan]
* Drop support for morty and krogoth Yocto versions [Andrei Gherzan]
* Add Yocto Warrior support [Zubair Lutfullah Kakakhel]
* Set both VERSION_ID and VERSION in os-release to host OS version [Andrei Gherzan]
* Bump balena-engine to 18.9.6 [Zubair Lutfullah Kakakhel]
* Downgrade balena-supervisor to v9.15.7 [Andrei Gherzan]
* Switch from dropbear to openSSH [Andrei Gherzan]
* Rename meta-resin-common to meta-balena-common [Andrei Gherzan]
* Add wifi firmware for rtl8192su [Zubair Lutfullah Kakakhel]
</details>

# v2.37.0+rev5
## (2019-06-19)

* linux-beagleboard: Power cycle SD card at boot on Beagleboard-XM [Sebastian Panceac]

# v2.37.0+rev4
## (2019-06-07)

* Use the os_cmdline uboot support provided by meta-balena [Andrei Gherzan]

# v2.37.0+rev3
## (2019-06-06)

* u-boot: Integrate Balena env for Beagleboard-XM [Sebastian Panceac]

# v2.37.0+rev2
## (2019-06-03)

* Add icon for Beagleboard-XM board [Sebastian Panceac]

# v2.37.0+rev1
## (2019-05-31)

* resin-image: Add support for Beagleboard-XM [Sebastian Panceac]
* Add support for Beagleboard-XM board [Sebastian Panceac]
* linux-beagleboard: Add support for Beagleboard-XM [Sebastian Panceac]
* Update meta-balena from v2.33.0 to v2.37.0 [Sebastian Panceac]

<details>
<summary> View details </summary>

## meta-balena-2.37.0
### (2019-05-29)

* Update balena-supervisor to v9.15.8 [Cameron Diver]
* kernel-modules-headers: Update to v0.0.18 [Andrei Gherzan]
* os-config: Update to v1.1.1 to fix mDNS [Andrei Gherzan]
* Fix busybox nslookup mdns lookups [Andrei Gherzan]
* Update balena-supervisor to v9.15.4 [Cameron Diver]
* Improve logging and version comparison in linux-firmware cleanup class [Andrei Gherzan]
* Sync ModemManager recipe with upstream [Andrei Gherzan]
* Update NetworkManager to 1.18.0 [Andrei Gherzan]

## meta-balena-2.36.0
### (2019-05-20)

* Cleanup old versions of iwlwifi firmware files in Yocto Thud [Florin Sarbu]

## meta-balena-2.35.0
### (2019-05-18)

* Update kernel-module-headers to version v0.0.16 [Florin Sarbu]
* Add uboot support for unified kernel cmdline arguments [Andrei Gherzan]
* Switch flasher detection in initramfs to flasher boot parameter [Andrei Gherzan]
* Update balena-supervisor to v9.15.0 [Cameron Diver]
* Improve boot speed by only mounting the inactive partition when needed [Zubair Lutfullah Kakakhel]
* Fix openssl dependency of balena-unique-key [Andrei Gherzan]
* Do not spawn getty in production images [Florin Sarbu]

## meta-balena-2.34.1
### (2019-05-14)

* Update balena-supervisor to v9.14.10 [Cameron Diver]

## meta-balena-2.34.0
### (2019-05-10)

* Add support to update a connectivity section in NetworkManager via config.json [Zubair Lutfullah Kakakhel]
* systemd: Fix journald configuration file [Andrei Gherzan]
* Add --max-download-attempts=10 to balenaEngine service to improve performance on shaky networks [Zubair Lutfullah Kakakhel]
* Update balena-engine to 18.09.5 [Zubair Lutfullah Kakakhel]
* Log initramfs messages to kernel dmesg to capture fsck, partition expand etc. command output [Zubair Lutfullah Kakakhel]
* kernel-resin: Add FAT fs specific configs to RESIN_CONFIGS [Sebastian Panceac]
* Update balena-supervisor to v9.14.9 [Cameron Diver]
* Introduce meta-balena yocto thud support [Andrei Gherzan]
* Update os-config to 1.1.0 [Andrei Gherzan]
</details>

# v2.33.0+rev2
## (2019-05-24)

* bb-org-overlays.bb: Added BB-UART4-RTSCTS-00A0.dts overlay [sharvin26]

# v2.33.0+rev1
## (2019-05-06)

* Update rust to 1.33 [Andrei Gherzan]
* Add support for OS_KERNEL_CMDLINE [Florin Sarbu]
* Update meta-balena from v2.32.0 to v2.33.0 [Andrei Gherzan]

<details>
<summary> View details </summary>

## meta-balena-2.33.0
### (2019-05-02)

* Fixes for sysroot symlinks creation [Andrei Gherzan]
* libmbim: Refresh patches after last update to avoid build warnings [Andrei Gherzan]
* modemmanager: Refresh patches after last update to avoid build warnings [Andrei Gherzan]
* Make security flags inclusion yocto version specific [Andrei Gherzan]
* systemd: Make directory warning patch yocto version specific [Andrei Gherzan]
* Replace wireless tools by iw [Andrei Gherzan]
* systemd: Use a conf.d file for journald configuration [Andrei Gherzan]
* Set go verison to 1.10.8 to match balena-engine requirements [Andrei Gherzan]
* Update balena-engine to 18.09.3 [Andrei Gherzan]
* Update balena-supervisor to v9.14.6 [Cameron Diver]
* resin-u-boot: make devtool-compatible [Sven Schwermer]
* docker-disk: Disable unnecessary docker pid check [Armin Schlegel]
* Update libmbim to version 1.18.0 [Zahari Petkov]
* Update libqmi to version 1.22.2 [Zahari Petkov]
* Update to ModemManager v1.10.0 [Zahari Petkov]
* Add a OS_KERNEL_CMDLINE parameter that allows BSPs to easily add extra kernel cmdline args to production images [Zubair Lutfullah Kakakhel]
</details>

# v2.32.0+rev3
## (2019-05-06)

* Fix reference in repo.yml to point to the correct URL [Giovanni Garufi]

# v2.32.0+rev2
## (2019-04-25)

* Change the poky submodule to our github mirror [Florin Sarbu]

# v2.32.0+rev1
## (2019-04-24)

* Update the meta-resin submodule from v2.31.5 to v2.32.0 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-resin-2.32.0
### (2019-04-08)

* balena-supervisor: Update to v9.14.0 [Cameron Diver]
* readme: Replace resin with balena where appropriate [Roman Mazur]
* Add systemd-analyze to production images as well [Zubair Lutfullah Kakakhel]
* Enable dbus interface for dnsmasq [Zubair Lutfullah Kakakhel]
* Disable docker bridge while pulling the supervisor container to remove runtime balena-engine warnings [Zubair Lutfullah Kakakhel]
* Fix typo in os-networkmanager that prevented it from working [Zubair Lutfullah Kakakhel]
* Fix bug where fsck was run on the data partition on every boot even if it wasn't needed due to old system time. [Zubair Lutfullah Kakakhel]
* Fix the balena version string reported by balena-engine info [Zubair Lutfullah Kakakhel]
* Only check mmc devices for flasher image presence by default. [Zubair Lutfullah Kakakhel]
* Remove an extra redundant copy of udev rules database [Zubair Lutfullah Kakakhel]
* Un-upx mobynit and os-config to speed them up a bit. Approx 1 second boost to boot time. [Zubair Lutfullah Kakakhel]
</details>

* Update repo.yml to be able to trigger VersionBot with `meta-balena` [Alexandru Costache]
* Update the balena-yocto-scripts submodule to v1.0.5 [Alexandru Costache]

# v2.31.5+rev1
## (2019-03-26)

* Update meta-resin from v2.30.0 to v2.31.5 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.31.5
### (2019-03-21)

* Update resin-supervisor to v9.11.3 [Andrei Gherzan]

## meta-resin-2.31.4
### (2019-03-20)

* resin-supervisor: Recreate on start if config has changed [Rich Bayliss]

## meta-resin-2.31.3
### (2019-03-20)

* Update resin-supervisor to v9.11.2 [Pablo Carranza Velez]

## meta-resin-2.31.2
### (2019-03-19)

* Update resin-supervisor to v9.11.1 [Pablo Carranza Velez]

## meta-resin-2.31.1
### (2019-03-18)

* Update resin-supervisor to v9.11.0 [Pablo Carranza Velez]

## meta-resin-2.31.0
### (2019-03-08)

* README:md: Document dnsServers behaviour [Alexis Svinartchouk]
* Update resin-supervisor to v9.9.0 [Cameron Diver]
* Cleanup old versions of iwlwifi firmware files in Yocto sumo [Andrei Gherzan]
* Remove polkit dependency in balenaOS [Andrei Gherzan]
* Remove support for XFS file system [Andrei Gherzan]
* resin-init: update resin.io reference to balenaOS [Matthew McGinn]
</details>

* Update the balena-yocto-scripts submodule to v1.0.3 [Florin Sarbu]

# v2.30.0+rev1
## (2019-03-04)

* u-boot: Set pocketbeagle autoboot delay to 0 [Alexandru Costache]
* meta-resin: Update to v2.30.0 [Alexandru Costache]

# v2.29.2+rev4
## (2019-02-25)

* Disable reboot on kernel panic as workaround for https://github.com/balena-os/balena-beaglebone/issues/177 [Florin Sarbu]

# v2.29.2+rev3
## (2019-02-04)

* Fix BT timeout on Beaglebone Green Wireless [Alexandru Costache]

# v2.29.2+rev2
## (2019-02-01)

* Fix BT timeout on Beaglebone Black Wireless [Alexandru Costache]

# v2.29.2+rev1
## (2019-01-15)

* Update meta-resin from v2.29.0 to v2.29.2 [Alexandru Costache]
* Adapted pocketbeagle bootscripts to NetworkManager 1.14.4 [Alexandru Costache]

# v2.29.0+rev3
## (2019-01-14)

* u-boot: Load and apply device tree overlays [Sebastian Panceac]
* Install BeagleBone DT overlays in root partition [Sebastian Panceac]

# v2.29.0+rev2
## (2019-01-03)

* Switch to mainline u-boot v2018.11 [Florin Sarbu]

# v2.29.0+rev1
## (2018-12-20)

* Update meta-resin from v2.28.0 to v2.29.0 [Sebastian Panceac]

<details>
<summary> View details </summary>

## meta-resin-2.29.0
### (2018-12-19)

* OS will default apps.json to an empty json file [Andrei Gherzan]
* Update balena-engine to include low entropy fixes [Andrei Gherzan]
* Move an NM patch to the right place to reduce a warning [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v9.0.1 [Pablo Carranza Velez]
* Fix cases where RESIN_BOOT_PARTITION_FILES includes invalid entries [Andrei Gherzan]
* Enable some common linux kernel serial device drivers [Andrei Gherzan]
* Configure NetworkManager to only ignore our vpn interface but manage other tun devices [Andrei Gherzan]
* networkmanager: Add pppd to FILES [Zubair Lutfullah Kakakhel]
* networkmanager: Add balena-client-id.patch in bbappend [Zubair Lutfullah Kakakhel]
* Bump network manager from v1.12.2 to v1.14.4 [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v8.7.0 [Pablo Carranza Velez]
* Fix test cases for kernel module header compilation [Zubair Lutfullah Kakakhel]
* Add chrony v3.2 recipe in various layers to keep minimum chrony version on devices above v3.2 [Zubair Lutfullah Kakakhel]
* chrony/pyro: Add v3.2 recipe [Zubair Lutfullah Kakakhel]
* chrony/morty: Add v3.2 recipe [Zubair Lutfullah Kakakhel]
* chrony/krogoth: Bump recipe version to v3.2 [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v8.6.8 [Zubair Lutfullah Kakakhel]
</details>

* Update balena-yocto-scripts submodule to v1.0.1 [Sebastian Panceac]

# v2.28.0+rev2
## (2018-12-14)

* u-boot: Switch console to USB [Alexandru Costache]

# v2.28.0+rev1
## (2018-12-06)

* Update meta-resin from v2.27.0 to v2.28.0 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-resin-2.28.0
### (2018-12-05)

* Update os-config to 1.0.0 [Zahari Petkov]
* Update libqmi to version 1.20.2 [Florin Sarbu]
* Update libmbim to version 1.16.2 [Florin Sarbu]
* kernel-modules-headers: Add basic sanity test [Zubair Lutfullah Kakakhel]
* Fix kernel module header generation [Zubair Lutfullah Kakakhel]
* image-resin.bbclass: Fix config.json pretty format [Andrei Gherzan]
* Allow supervisor update on unmanaged devices [Andrei Gherzan]
* Update resin-supervisor to v8.6.3 [Cameron Diver]
</details>

* Switch from resin-yocto-scripts to balena-yocto-scripts [Alexandru Costache]
* Use overlayfs for PocketBeagle [Alexandru Costache]

# v2.27.0+rev2
## (2018-12-03)

* Add scripts for PocketBeagle networking [Alexandru Costache]

# v2.27.0+rev1
## (2018-11-29)

* Update meta-resin from v2.26.0 to v2.27.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.27.0
### (2018-11-23)

* Expose randomMacAddressScan config.json knob [Andrei Gherzan]
* Move modemmanager udev rules in /lib/udev/rules.d [Andrei Gherzan]
* Fix modemmanager bbappend files [Andrei Gherzan]
* dnsmasq: Define 8.8.8.8 as a fallback nameserver [Andrei Gherzan]
* Increase timeout for filesystem label [Vicentiu Galanopulo]
* Add support for Huawei ME936 modem in MBIM mode [Florin Sarbu]
* Backport systemd sd-shutdown improvements for sumo versions [Florin Sarbu]
* Include avahi d-bus introspection files in rootfs [Andrei Gherzan]
* Fix custom udev rules when rule is removed from config.json [Zubair Lutfullah Kakakhel]
* resin-mounts: Add NetworkManager conf.d bind mounts [Zubair Lutfullah Kakakhel]
* Add support to pass custom configuration to NetworkManager [Zubair Lutfullah Kakakhel]
* README.md: Add info about SSH and Avahi services [Andrei Gherzan]
* Avoid xtables lock in resin-proxy-config [Andrei Gherzan]
* Migrate the supervisor to balena repositories [Florin Sarbu]
* Update balena-supervisor to v8.3.5 [Cameron Diver]
* Update supported modems list [Florin Sarbu]

## meta-resin-2.26.0
### (2018-11-05)

* Rename resin-unique-key to balena-unique-key [Andrei Gherzan]
* Don't let resin-unique-key rewrite config.json [Andrei Gherzan]
</details>

* Revert "random: fix crng_ready() test" to fix balena delay start issue [Florin Sarbu]

# v2.26.0+rev4
## (2018-11-28)

* Add icon for PocketBeagle [Alexandru Costache]

# v2.26.0+rev3
## (2018-11-27)

* Fix boot loop hang when switched to meta-ti rocko [Florin Sarbu]

# v2.26.0+rev2
## (2018-11-27)

* beaglebone-pocket: Added machine for PocketBeagle device [Alexandru Costache]

# v2.26.0+rev1
## (2018-11-23)

* Update meta-resin from v2.15.1 to v2.26.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.26.0
### (2018-11-05)

* Rename resin-unique-key to balena-unique-key [Andrei Gherzan]
* Don't let resin-unique-key rewrite config.json [Andrei Gherzan]

## meta-resin-2.25.0
### (2018-11-02)

* Generate ssh host key at first boot (not at first connection) [Andrei Gherzan]
* Fix extraneous space in kernel-resin.bbclass config [Florin Sarbu]
* Drop obsolete eval from kernel-resin's do_kernel_resin_reconfigure [Florin Sarbu]
* Add SyslogIdentifier for balena and resin-supervisor healthdog services [Matthew McGinn]

## meta-resin-2.24.1
### (2018-11-01)

* Update resin-supervisor to v8.0.0 [Pablo Carranza Velez]

## meta-resin-2.24.0
### (2018-10-24)

* resin-info: Small tweak for balenaCloud product [Andrei Gherzan]
* Update resin-supervisor to v7.25.8 [Pablo Carranza Velez]
* Rename resinOS to balenaOS [Andrei Gherzan]

## meta-resin-2.23.0
### (2018-10-22)

* Update resin-supervisor to v7.25.5 [Cameron Diver]
* recipes-containers: Increase healthcheck timeout to 180s [Gergely Imreh]
* .gitignore: add node_modules and package-lock files [Giovanni Garufi]

## meta-resin-2.22.1
### (2018-10-20)

* Update resin-supervisor to v7.25.3 [Pablo Carranza Velez]

## meta-resin-2.22.0
### (2018-10-19)

* Update resin-supervisor to v7.25.2 [Andrei Gherzan]
* Include a CONTRIBUTING.md file [Andrei Gherzan]
* Update to ModemManager v1.8.2 [Andrei Gherzan]
* Updates on contributing-device-support.md [Vicentiu Galanopulo]

## meta-resin-2.21.0
### (2018-10-18)

* Improve systemd service ordering in rollbacks [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.24.1 [Andrei Gherzan]

## meta-resin-2.20.0
### (2018-10-18)

* Avoid expander on flasher based on root kernel argument [Andrei Gherzan]
* resin-vars: Implement custom ssh keys service [Andrei Gherzan]
* Fix redsocks interface creation when no proxy configured [Andrei Gherzan]
* Replace NM's DHCP request option "Client indentifier" with udhcpc style option [Sebastian Panceac]
* Fix for rollbacks in case of old balenaOS version [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.21.4 [Cameron Diver]
* Warn if rules are found in /etc/udev/rules.d [Zubair Lutfullah Kakakhel]
* Add support to load custom udev rules from config.json [Zubair Lutfullah Kakakhel]
* aufs-util: Package auplink separately [Florin Sarbu]
* Enable kernel config dependencies for MBIM and QMI [Florin Sarbu]
* Set UPX to use LZMA compression by default [Andrei Gherzan]
* Downgrade UPX to 3.94 for ARM [Andrei Gherzan]
* Balena update for rollbacks. mobynit can now mount rootfs from sysroot. [Zubair Lutfullah Kakakhel]
* Fix proxy when using containers over bridge network [Andrei Gherzan]
* Add support for aufs 4.9.9+, 4.9.94+, 4.18 [Florin Sarbu]
* Add rollback-altboot service before balena service [Zubair Lutfullah Kakakhel]
* Add Automated Rollback recipe [Zubair Lutfullah Kakakhel]
* Add Automated Rollback support in u-boot env_resin.h [Zubair Lutfullah Kakakhel]
* Add a hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Update HUP grub hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Update HUP u-boot hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Move kernel-image-initramfs from resin-image recipe to packagegroup-resin.inc [Zubair Lutfullah Kakakhel]
* Have 99-resin-grub hostapp-update-hook decide which grub to use [Florin Sarbu]

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases [Petros Angelatos]
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo) [Florin Sarbu]
* Remove duplicate packaging of bcm43143 [Florin Sarbu]
* Set ModemManager to ignore Inca Roads Serial Device [Petros Angelatos]
* Add support for aufs 4.14.56+ [Florin Sarbu]
* Update resin-supervisor to v7.19.7 [Cameron Diver]

## meta-resin-2.18.1
### (2018-09-14)

* Add a parsable representation of the changelog [Giovanni Garufi]

## meta-resin-v2.18.0
### (2018-09-12)

* Update grub hooks to prepare to load kernel from root [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.19.4 [Cameron Diver]
* Kernel-resin.bbclass: Enable CONFIG_IP_NF_TARGET_LOG as a module [John (Jack) Brown]
* Balena: Update to current HEAD of 17.12-resin [Andrei Gherzan]
* Compress os-config with UPX on arm64 too [Andrei Gherzan]
* Update upx to 3.95 [Andrei Gherzan]
* Add support to skip flasher detection in env_resin.h [Zubair Lutfullah Kakakhel]
* Add the kernel to the rootfs [Zubair Lutfullah Kakakhel]
* Rework resin-supervisor systemd dependency on balena [Florin Sarbu]
* Enhanced security options for dropbear - sumo [Andrei Gherzan]
* Enhanced security options for dropbear - rocko [Andrei Gherzan]
* Enhanced security options for dropbear - pyro [Andrei Gherzan]
* Enhanced security options for dropbear - morty [Andrei Gherzan]
* Enhanced security options for dropbear - krogoth [Andrei Gherzan]

## meta-resin-2.17.0
### (2018-09-03)

* Resin-proxy-config: The no_proxy file fails to parse when missing EOL [Rich Bayliss]

## meta-resin-2.16.0
### (2018-08-31)

* Os-config: UPX is broken on aarch64 [Theodor Gherzan]
* Allow flasher types to pin preloaded devices [Theodor Gherzan]
* Disable PIE for go [Zubair Lutfullah Kakakhel]
* Disable PIE for balena [Zubair Lutfullah Kakakhel]
</details>

* Update to Poky version rocko-18.0.3 [Florin Sarbu]
* Update the resin-yocto-scripts submodule to master HEAD [Florin Sarbu]
* Add a parsable representation of the changelog [Giovanni Garufi]

# v2.15.1+rev1
## (2018-09-07)

* Update the meta-resin submodule to version v2.15.1 [Florin Sarbu]

# v2.14.1+rev2
## (2018-08-28)

* Add versionist support [Giovanni Garufi]

# v2.14.1+rev1
## (2018-08-07)

* Update the meta-resin submodule to version v2.14.1 [Florin]
* Update the resin-yocto-scripts submodule to 8312741e13604a9d166370349061876afb22c0fa [Florin]

# v2.14.0+rev1
## (2018-07-18)

* Update the meta-resin submodule to version v2.14.0 [Florin]

# v2.13.6+rev1
## (2018-07-13)

* Update the meta-resin submodule to version v2.13.6 [Florin]

# v2.13.5+rev1
## (2018-07-09)

* Update the meta-resin submodule to version v2.13.5 [Florin]

# v2.13.3+rev1
## (2018-07-08)

* Update the meta-resin submodule to version v2.13.3 [Florin]
* Update the resin-yocto-scripts submodule to 59ccd8558435ff6424827fb36ccb43b14650f4d4 (on master branch) [Florin]
* Update the beaglebone kernel to version 4.14.53-ti-r62 [Florin]
* Update the pyro branch for meta-rust submodule [Andrei]

# v2.12.7+rev1
## (2018-05-07)

* Update the meta-resin submodule to version v2.12.7 [Florin]

# v2.12.5+rev1
## (2018-04-26)

* Update the meta-resin submodule to version v2.12.5 [Florin]
* Add support for BeagleBone Black Wireless [Florin]
* Update the resin-yocto-scripts submodule to f7718efbbf53369aaacb7eb54e707ee8a5d4fc4b (on master branch) [Florin]

# v2.12.3+rev1
## (2018-03-15)

* Update the meta-resin submodule to version v2.12.3 [Florin]
* Update the resin-yocto-scripts submodule to dc9dfe466e48d934e55fb20a05156886873b1ab1 (on master branch) [Florin]

# v2.12.1+rev1
## (2018-03-12)

* Update the meta-resin submodule to version v2.12.1 [Andrei]

# v2.9.6+rev1
## (2018-01-14)

* Update the meta-resin submodule to version v2.9.6 [Florin]
* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Add wlconf to rootfs [Minh]

# v2.7.8+rev1
## (2017-11-17)

* Update the meta-resin submodule to version v2.7.8 [Florin]
* Increase initramfs maximum size to 12 MB (12288 KB) [Florin]

# v2.7.5+rev2
## (2017-11-03)

* Update the resin-yocto-scripts submodule to c4db082fd2d5a3b4857035264c1e726962d7b826 (on master branch) [Florin]
* Add overlays for being able to use the CAN interface on P9 pins 19 and 20 (CAN0) [Florin]

# v2.7.5+rev1
## (2017-11-01)

* Update the meta-resin submodule to version v2.7.5 [Florin]
* Add to rootfs the device tree overlays needed for the PWM pins [Florin]

# v2.7.4+rev1
## (2017-10-27)

* Update the meta-resin submodule to version v2.7.4 [Florin]
* Update the resin-yocto-scripts submodule to e3a06d48a2f8b7e32d3047c33066a5b896e6ae93 (on master branch) [Florin]
* Update meta-openembedded to latest pyro branch [Will]
* Update poky to latest pyro branch [Will]

# v2.7.2+rev2
## (2017-10-12)

* Install in the rootfs the 99-resin-uboot hostapp hook needed for u-boot to switch the root partition when doing host OS updates [Florin]

# v2.7.2+rev1
## (2017-10-08)

* Update the meta-resin submodule to version v2.7.2 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Update to Yocto Pyro [Will]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]

# v2.4.2+rev1
## (2017-09-04)

* Update the meta-resin submodule to version v2.4.2 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Add bb-wl18xx-bluetooth recipe for enabling bluetooth [Florin]

# v2.3.0+rev1
## (2017-08-17)

* Update the meta-resin submodule to version v2.3.0 [Florin]

# v2.2.0+rev1
## (2017-07-30)

* Update the meta-resin submodule to version v2.2.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Revert Define a new attribute to denote the yocto flasher image [Florin]
* Add device tree overlay for Nimbelinks Skywire Beaglebone Black Cape [Florin]

# v2.1.0+rev1
## (2017-07-21)

* Update the meta-resin submodule to version v2.1.0 [Michal]
* Update the resin-yocto-scripts submodule to HEAD of master [Michal]
* Define a new attribute to denote the yocto flasher image [Michal]

# v2.0.7+rev2
## (2017-06-29)

* Revert beaglebone-green and beaglebone-green-wifi .coffee files to point to their respective yocto machines [Florin]

# v2.0.7+rev1
## (2017-06-29)

* Update the meta-resin submodule to version v2.0.7 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Change bbg and bbgw .coffee files to point to the bbb yocto machine and also change the getting started links [Florin]
* Update kernel to version 4.9.34-ti-r43 [Florin]
* Adapt the u-boot patch for integration with resin-uboot [Florin]
* Update kernel for the beagleboard family from 4.4 to 4.9 [Theodor]
* Update the resin-yocto-scripts submodule [Florin]
* Update resin-yocto-scripts to master [Will]

# v2.0.3+rev1
## (2017-05-12)

* Update the meta-resin submodule to version v2.0.3 [Florin]
* Fix serial console [Theodor]
* Set wlan0 MAC address to EEPROM value [Will]

# v2.0.2+rev2
## (2017-05-01)

* Bump resin-yocto-scripts to fix Jenkins deployment [Andrei]

# v2.0.2+rev1
## (2017-04-24)

* Update the meta-resin submodule to version v2.0.2 [Andrei]
* Generate a bmap file for the resinos-img image [Michal]

# v2.0.0+rev4
## (2017-04-13)

* Bump resin-yocto-scripts to include compressed images in deployment too [Andrei]

# v2.0.0+rev3
## (2017-04-13)

* Bump resin-yocto-scripts to include deployment routine [Andrei]
* Add support for Beaglebone Blue [Will]

# v2.0.0+rev2
## 2017-04-04

* Bump resin-yocto-scripts to fix resinOS docker registry push [Andrei]

# v2.0.0+rev1
## (2017-04-03)

* Fix OS version to be semver compliant [Andrei]

# v2.0.0.rev1
## (2017-04-01)

* Update the meta-resin submodule to version v2.0.0 [Andrei]

# v2.0.0-rc6.rev1
## (2017-03-31)

* Update the meta-resin submodule to version v2.0.0-rc6 [Andrei]

# v2.0.0-rc5.rev1
## (2017-03-26)

* Update meta-resin submodule to version v2.0.0-rc5 [Andrei]

# v2.0.0-rc4.rev1
## (2017-03-20)

* Update meta-resin submodule to version v2.0.0-rc4 [Andrei]

# v2.0.0-rc3.rev1
## (2017-03-14)

* Update meta-resin submodule to version v2.0.0-rc3 [Florin]

# v2.0.0-rc1.rev1
## (2017-03-10)

* Adapt for using initramfs kernel images [Andrei]
* Implement resin-uboot specification 2.0 for beaglebone [Andrei]

# v2.0.0-beta12.rev2
## (2017-02-27)

* Switch beaglebone-black, beaglebone-green and beaglebone-green-wifi to using Poky Morty [Florin]

# v2.0.0-beta12.rev1
## (2017-02-27)

* Bump resin-yocto-scripts to current HEAD [Andrei]
* meta-resin: Bump to 2.0.0-beta12 [Andrei]

# v2.0.0-beta11.rev1
## (2017-02-15)

* Update meta-resin to v2.0.0-beta.11 [Andrei]

# v2.0.0-beta10.rev1
## (2017-02-14)

* Update meta-resin to v2.0.0-beta.10 [Andrei]

# v2.0.0-beta.9
## (2017-02-08)

* Update meta-resin to v2.0-beta.9 [Andrei]

# v2.0.0-beta.8
## (2017-01-27)

* Update meta-resin to v2.0-beta.8 [Andrei]
* Tune memory to prevent higher-order allocation failures [petrosagg]
* Update resin-yocto-scripts to HEAD of the master branch [Florin]

# v2.0.0-beta.7
## (2016-12-05)

* Update meta-resin to v2.0-beta.7 [Florin]

# v2.0.0-beta.6
## (2016-12-05)

* Update meta-resin to v2.0-beta.6 [Andrei]

# v2.0.0-beta.5
## (2016-11-30)

* Update meta-resin to v2.0-beta.5 [Andrei]
* Set a predefined sequence to abort or delay booting [Michal]

# v2.0.0-beta.3
## (2016-11-07)

* Update meta-resin to v2.0-beta.3 [Andrei]
* Cleanup docker-resin-supervisor-disk of unneeded variables [Andrei]
* Update resin-yocto-scripts to fix logging in container builds
* Apply the mmc fix (set vm.vfs_cache_pressure=400) [Michal]
* Don't compress kernel modules [Michal]

# v2.0.0-beta.1
## (2016-10-11)

* Update meta-resin to v2.0-beta.1 [Andrei]
* Add meta-filesystem as we need aufs-utils [Andrei]
* Add build support for resinos [Andrei]
* Update resin-yocto-script to include changes in our image types [Theodor]
* Replace the concept of a debug image with a development image [Theodor]
* Update meta-resin to include avahi [Florin]
* Update resin-yocto-scripts to include kernel headers handling as gzip [Florin]

# v1.16.0
## (2016-09-27)

* Update meta-resin to v1.16 [Florin]

# v1.15.0
## (2016-09-24)

* Update meta-resin to v1.15 [Florin]

# v1.14.0
## (2016-09-23)

* Update meta-resin to v1.14 [Florin]

# v1.13.0
## (2016-09-23)

* Update meta-resin to v1.13 [Florin]
* Update kernel to tag 4.4.21-ti-rt-r46 [Florin]

# v1.12.0
## (2016-09-21)

* Update meta-resin to v1.12 [Florin]
* Update resin-yocto-scripts to include resinhup upload to dockerhub [Florin]
* Update kernel to tag 4.4.21-ti-rt-r45 [Florin]
* Update kernel to tag 4.4.20-ti-rt-r44 [Florin]
* Update meta-resin [Florin]
* Change .coffee to announce partition 1 now holds config.json and also introduce versioning (v1) [Florin]
* Update kernel to version 4.4.19 [Florin]

# v1.11.0
## (2016-08-31)

* Update meta-resin to v1.11 [Florin]

# v1.10.0
## (2016-08-24)

* Update meta-resin to v1.10 [Florin]

# v1.9.0
## (2016-08-24)

* Update meta-resin to v1.9 [Florin]
* Update resin-yocto-scripts for including kernel modules headers deploy [Florin]
* Add support for the beaglebone green board [Florin]
* Update yocto-resin-scripts for host nodejs detection improvements [Florin]

# v1.8.0
## (2016-08-02)

* Bump meta-resin to v1.8 [Andrei]
* Bump resin-device-types to include partial manifest support [Andrei]
* No more debug images in staging

# v1.7.0
## (2016-07-14)

* Update meta-resin to v1.7

# v1.6.0
## (2016-07-06)

* Update meta-resin to v1.6 [Florin]

# v1.5.0
## (2016-07-04)

* Update meta-resin to v1.5 [Florin]

# v1.5.0rc4
## (2016-06-29)

* Update meta-resin to include supervisor update to v1.11.6 [Florin]

# v1.5.0rc3
## (2016-06-29)

* Update meta-resin to include openvpn-resin.service refactoring [Florin]

# v1.5.0rc2
## (2016-06-28)

* Update meta-resin to include docker key.json fix [Florin]
* Update meta-resin to include flasher fixes [Florin]

# v1.4.0
## (2016-06-27)

* Update meta-resin to v1.4 [Florin]
* Update meta-resin to allow let error out [Florin]
* Update meta-resin to allow patching of kernel-modules-headers [Florin]
* Bump meta-resin to fix various issues [Andrei]
* Fix a small syntax error in meta-resin [Andrei]
* Fix automation fix for debug image [Andrei]
* Replace RESIN_STAGING_BUILD by DEBUG_IMAGE [Andrei]

# v1.3.0
## (2016-06-24)

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

# v1.4.1
## (2016-05-19)

* New machine support: BeagleBone Green Wireless [Theodor]
* Provide dtb to control on-board wireless for the BeagleBone Green [Theodor]
* Allow users to use UART5 [Theodor]
* Bump meta-resin to include switch from rce to docker [Andrei]

# v1.4.0
## (2016-04-16)

# v1.1.1
## (2016-03-16)

* Transition from fido -> jethro [Theodor]
