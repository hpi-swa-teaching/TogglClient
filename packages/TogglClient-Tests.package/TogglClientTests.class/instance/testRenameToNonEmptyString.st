tests-building
testRenameToNonEmptyString

	client addTask: (Task new description: 'Test').
	client taskList first renameTo: 'Toggl'.
	self assert: 'Toggl' equals: client taskList first description.