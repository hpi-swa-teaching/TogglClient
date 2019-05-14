tests-building
testBuildPanelWithReturnsSpec

	| spec |
	spec := client buildPanelWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)