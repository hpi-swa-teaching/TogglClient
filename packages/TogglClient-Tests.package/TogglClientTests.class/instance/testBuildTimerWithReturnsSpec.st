tests-building
testBuildTimerWithReturnsSpec

	| spec |
	spec := client buildTimerWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)