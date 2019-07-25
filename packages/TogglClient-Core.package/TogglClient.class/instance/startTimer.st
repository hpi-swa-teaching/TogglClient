actions
startTimer 

	self timerIsRunning ifTrue: [ ^ self ].
	self timer activate.
	self startDateAndTime: DateAndTime now
	