tests
testRenameToEmptyString

	client addTimeEntry: (TogglTimeEntry new description: 'Test').
	client timeEntryList first renameTo: ''.
	self assert: 'no description' equals: client timeEntryList first description.