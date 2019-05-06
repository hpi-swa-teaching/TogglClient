actions
addCurrentTask
	| task |
	task := Task new.
	task
		startTime: self startTime;
		stopTime: Time now.
	self currentText
		ifEmpty: [task description: 'no description']
		ifNotEmpty: [task description: self currentText asString].
	self addTask: task
