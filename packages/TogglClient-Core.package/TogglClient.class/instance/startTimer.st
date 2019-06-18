actions
startTimer 

	self timerIsRunning ifFalse: [
		self timer activate.
		self startDateAndTime: DateAndTime now
	]
	