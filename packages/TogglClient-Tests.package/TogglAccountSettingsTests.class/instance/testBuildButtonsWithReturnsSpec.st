tests-building
testBuildButtonsWithReturnsSpec

	| spec |
	spec := accountSettings buildButtonsWith: toolbuilder.
	self assert: (spec allSatisfy: [:element | element isKindOf: ToolBuilderSpec])