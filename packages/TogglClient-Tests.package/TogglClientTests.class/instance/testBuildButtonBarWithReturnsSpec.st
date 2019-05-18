tests-building
testBuildButtonBarWithReturnsSpec

	| spec |
	spec := client buildButtonBarWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)