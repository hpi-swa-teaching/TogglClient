actions
addTask: aTask
	self taskList addFirst: aTask.
	self changed: #taskList.