tests-toolbuilder
testBuildButtonBarAndButtonsWithReturnsSpec

	| spec |
	spec := client buildButtonBarAndButtonsWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)