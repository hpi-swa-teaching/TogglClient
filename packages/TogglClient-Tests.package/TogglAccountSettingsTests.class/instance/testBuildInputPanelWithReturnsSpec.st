tests-toolbuilder
testBuildInputPanelWithReturnsSpec

	| spec |
	spec := accountSettings buildInputPanelWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)