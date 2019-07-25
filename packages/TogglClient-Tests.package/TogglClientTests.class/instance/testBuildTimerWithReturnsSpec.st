tests-toolbuilder
testBuildTimerWithReturnsSpec

	| spec |
	spec := client buildTimerWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)