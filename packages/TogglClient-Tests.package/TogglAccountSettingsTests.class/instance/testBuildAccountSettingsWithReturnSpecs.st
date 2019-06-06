tests-building
testBuildAccountSettingsWithReturnSpecs

	| spec |
	spec := accountSettings buildWith: toolbuilder.
	self assert: (spec isKindOf: PluggableDialogWindow)