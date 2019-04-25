accessing
addTask: aTask
	self taskList addLast: aTask.
	self changed: #taskList.