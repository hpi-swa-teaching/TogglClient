tests-toolbuilder
testBuildInputFieldWithReturnsSpec

	| spec |
	spec := client buildInputFieldWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec)