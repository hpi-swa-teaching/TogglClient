actions
addCurrentTask
	| task |
	task := Task new.
	task
		startTime: self startTime;
		stopTime: Time now;
		renameTo: self currentText.
	self addTask: task.