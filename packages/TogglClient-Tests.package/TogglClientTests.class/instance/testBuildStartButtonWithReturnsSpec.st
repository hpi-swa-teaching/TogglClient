tests-building
testBuildStartButtonWithReturnsSpec

	| spec |
	spec := client buildStartButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)