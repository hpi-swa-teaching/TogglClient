tests-building
testRenameFromEmptyStringToNonEmptyString

	client addTask: (Task new renameTo: '').
	self assert: 'no description' equals: client taskList first description.
	client taskList first renameTo: 'Toggl'.
	self assert: 'Toggl' equals: client taskList first description.