accessing
addCurrentTask
	| task |
	task := Task new description: self currentText.
	self addTask: task.