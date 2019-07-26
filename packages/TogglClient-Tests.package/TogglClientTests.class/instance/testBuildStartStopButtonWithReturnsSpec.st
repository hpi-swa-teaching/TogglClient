tests-toolbuilder
testBuildStartStopButtonWithReturnsSpec

	| spec |
	spec := client buildStartStopButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)