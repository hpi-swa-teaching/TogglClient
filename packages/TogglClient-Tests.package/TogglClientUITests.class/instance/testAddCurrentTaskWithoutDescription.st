running
testAddCurrentTaskWithoutDescription
	
	togglClient currentText: ''.
	togglClient addCurrentTask.
	self assert: 'no description' equals: togglClient taskList first description. 