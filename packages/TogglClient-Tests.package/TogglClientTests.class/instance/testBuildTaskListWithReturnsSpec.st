tests-toolbuilder
testBuildTaskListWithReturnsSpec

	| spec |
	spec := client buildTimeEntryListWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)