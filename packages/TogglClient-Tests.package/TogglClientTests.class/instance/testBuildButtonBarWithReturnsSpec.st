tests-toolbuilder
testBuildButtonBarWithReturnsSpec

	| spec |
	spec := client buildButtonBarAndButtonsWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)