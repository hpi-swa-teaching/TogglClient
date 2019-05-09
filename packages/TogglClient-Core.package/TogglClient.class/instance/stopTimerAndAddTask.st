actions
stopTimerAndAddTask

	self timer isActive ifTrue:[
		self stopTimer.
		self addCurrentTask]

	