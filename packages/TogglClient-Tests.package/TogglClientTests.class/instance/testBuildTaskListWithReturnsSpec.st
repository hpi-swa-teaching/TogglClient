tests-building
testBuildTaskListWithReturnsSpec

	| spec |
	spec := client buildTaskListWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)