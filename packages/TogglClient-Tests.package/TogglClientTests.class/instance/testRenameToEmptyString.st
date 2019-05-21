tests-building
testRenameToEmptyString

	client addTask: (Task new description: 'Test').
	client taskList first renameTo: ''.
	self assert: 'no description' equals: client taskList first description.