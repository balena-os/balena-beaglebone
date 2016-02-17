deviceTypesCommon = require 'resin-device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

BBB_FLASH = 'Power up the <%= TYPE_NAME %> while holding down the small button near the SD slot.
You need to keep it pressed until the blue LEDs start flashing wildly.'

module.exports =
	slug: 'beaglebone-black'
	aliases: [ 'beaglebone' ]
	name: 'BeagleBone Black'
	arch: 'armv7hf'
	state: 'released'

	stateInstructions:
		postProvisioning: [
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			instructions.BOARD_REPOWER
		]

	instructions:
		windows: [
			instructions.WINDOWS_DISK_IMAGER_SD
			instructions.EJECT_SD
			instructions.FLASHER_WARNING
			BBB_FLASH
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			instructions.BOARD_REPOWER
		]
		osx: [
			instructions.OSX_PLUG_SD
			instructions.OSX_UNMOUNT_SD
			instructions.DD_BURN_IMAGE_SD
			instructions.EJECT_SD
			instructions.FLASHER_WARNING
			BBB_FLASH
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			instructions.BOARD_REPOWER
		]
		linux: [
			instructions.LINUX_DF_SD
			instructions.DD_BURN_IMAGE_SD
			instructions.EJECT_SD
			instructions.FLASHER_WARNING
			BBB_FLASH
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			instructions.BOARD_REPOWER
		]

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-BBB.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-BBB.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-BBB.md#on-mac-and-linux'

	supportsBlink: true

	yocto:
		machine: 'beaglebone'
		image: 'resin-image-flasher'
		fstype: 'resin-sdcard'
		version: 'yocto-jethro'
		deployArtifact: 'resin-image-flasher-beaglebone.resin-sdcard'

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'

	initialization: commonImg.initialization
