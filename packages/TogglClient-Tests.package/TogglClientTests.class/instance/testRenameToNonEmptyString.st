tests
testRenameToNonEmptyString

	client addTimeEntry: (TogglTimeEntry new description: 'Test').
	client timeEntryList first renameTo: 'Toggl'.
	self assert: 'Toggl' equals: client timeEntryList first description