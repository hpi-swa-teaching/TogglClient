tests
testRenameFromEmptyStringToNonEmptyString

	client addTimeEntry: (TogglTimeEntry new renameTo: String empty).
	self assert: 'no description' equals: client timeEntryList first description.
	client timeEntryList first renameTo: 'Toggl'.
	self assert: 'Toggl' equals: client timeEntryList first description