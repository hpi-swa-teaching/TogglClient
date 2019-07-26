tests
testRenameToEmptyString

	client addTimeEntry: namedTimeEntry.
	client timeEntryList first renameTo: String empty.
	self assert: 'no description' equals: client timeEntryList first description