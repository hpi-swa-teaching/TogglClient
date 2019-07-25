tests
testRenameToNonEmptyString

	client addTimeEntry: namedTimeEntry.
	client timeEntryList first renameTo: 'Toggl'.
	self assert: 'Toggl' equals: client timeEntryList first description