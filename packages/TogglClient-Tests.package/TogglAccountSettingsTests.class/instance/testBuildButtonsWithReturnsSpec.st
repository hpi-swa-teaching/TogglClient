tests-building
testBuildButtonsWithReturnsSpec

	| spec |
	spec := client buildButtonsWith: toolbuilder.
	self assert: (spec isKindOf: Array).
	self assert: ((spec at: 1) isKindOf: ToolBuilderSpec).
	self assert: ((spec at: 2) isKindOf: ToolBuilderSpec).
	