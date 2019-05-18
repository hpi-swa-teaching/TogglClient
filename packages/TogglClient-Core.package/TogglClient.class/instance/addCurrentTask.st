actions
addCurrentTask
	| task |
	task := Task new.
	task
		startTime: self startTime;
		stopTime: Time now;
		"copy by reference error fix 1: as in ToolBuilder Tutorial - asString"
		renameTo: self currentText asString.
	self addTask: task.
