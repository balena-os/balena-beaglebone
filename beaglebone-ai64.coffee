deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

BBB_FLASH = 'Insert the SD card while powered down. Power up the <%= TYPE_NAME %> while holding down the BOOT/SW1 button at the opposite side of the USB Type-C port.
You need to keep it pressed until the LEDs start flashing wildly.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'beaglebone-ai64'
	aliases: [ 'beaglebone-ai-64' ]
	name: 'BeagleBone AI-64'
	arch: 'aarch64'
	state: 'unreleased'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		BBB_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'https://docs.resin.io/beaglebone/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.resin.io/beaglebone/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.resin.io/beaglebone/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'beaglebone-ai64'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'balena-image-flasher-beaglebone-ai64.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
