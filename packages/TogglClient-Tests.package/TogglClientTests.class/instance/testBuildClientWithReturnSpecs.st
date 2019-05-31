tests-building
testBuildClientWithReturnSpecs

	| spec |
	spec := client buildWith: toolbuilder.
	self assert: (spec isKindOf: PluggableSystemWindow)