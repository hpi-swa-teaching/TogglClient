tests-building
testBuildTaskListWithReturnsSpec

	| spec |
	spec := client buildTimeEntryListWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)