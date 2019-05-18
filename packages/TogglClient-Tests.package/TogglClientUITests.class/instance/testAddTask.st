running
testAddTask
	
	togglClient taskList removeAll.
	togglClient addTask: testTask.
	self assert: (togglClient taskList size == 1)