tests-building
testBuildStopButtonWithReturnsSpec

	| spec |
	spec := client buildStopButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)