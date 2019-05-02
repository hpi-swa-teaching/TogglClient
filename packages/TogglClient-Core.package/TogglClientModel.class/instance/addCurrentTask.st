actions
addCurrentTask
	| task |
	task := Task new.
	task description: self currentText asString.
	
	self addTask: task.