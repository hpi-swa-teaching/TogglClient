running
testAddCurrentTaskWithDescription
	
	togglClient taskList removeAll.
	togglClient currentText: 'Test'.
	togglClient addCurrentTask.
	self assert: 'Test' equals: togglClient taskList first description.