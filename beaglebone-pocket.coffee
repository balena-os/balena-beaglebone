deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'beaglebone-pocket'
	name: 'PocketBeagle'
	arch: 'armv7hf'
	state: 'experimental'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://docs.resin.io/pocketbeagle/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.resin.io/pocketbeagle/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.resin.io/pocketbeagle/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: true

	yocto:
		machine: 'beaglebone-pocket'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-rocko'
		deployArtifact: 'resin-image-beaglebone-pocket.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
