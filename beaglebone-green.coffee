deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

BBB_FLASH = 'Power up the <%= TYPE_NAME %> while holding down the small button near the SD slot.
You need to keep it pressed until the blue LEDs start flashing wildly.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'beaglebone-green'
	name: 'BeagleBone Green'
	arch: 'armv7hf'
	state: 'experimental'

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

	supportsBlink: true

	yocto:
		machine: 'beaglebone-green'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-morty'
		deployArtifact: 'resin-image-beaglebone-green.resinos-img'
		deployFlasherArtifact: 'resin-image-flasher-beaglebone-green.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
