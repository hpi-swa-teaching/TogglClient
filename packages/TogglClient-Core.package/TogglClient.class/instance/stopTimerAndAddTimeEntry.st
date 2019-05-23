actions
stopTimerAndAddTimeEntry

	self timer isActive ifTrue:[
		self stopTimer.
		self addCurrentTimeEntry]

	