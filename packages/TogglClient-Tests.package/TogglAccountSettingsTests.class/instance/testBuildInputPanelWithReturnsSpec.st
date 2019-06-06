tests-building
testBuildInputPanelWithReturnsSpec

	| spec |
	spec := accountSettings buildInputPanelWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)