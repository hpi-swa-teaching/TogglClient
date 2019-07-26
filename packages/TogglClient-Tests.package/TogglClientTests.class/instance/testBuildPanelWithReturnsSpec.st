tests-toolbuilder
testBuildPanelWithReturnsSpec

	| spec |
	spec := client buildPanelWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)