	templateTransform = require "./template-transform"

	module.exports =
		transform: [ templateTransform, "coffeeify" ]
		extensions: [
			".litcoffee", ".template.litcoffee"
			".js", ".template.js"
		]

	# Workaround for karma-browserify 0.0.6
	# This typo was fixed in 0.1.0, but that version is broken
	# because of some node-browserify internal changes.
	# See: https://github.com/xdissent/karma-browserify/pull/31
	module.exports.extension = module.exports.extensions