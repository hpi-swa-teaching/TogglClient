as yet unclassified
testBuildInputPanelWithReturnsSpec

	| spec |
	spec := client buildInputPanelWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)