accessing
addCurrentTask
	| task |
	task := Task new.
	task description: self currentText asString.
	task startTime: self startTime.
	task stopTime: Time now.
	
	self addTask: task
