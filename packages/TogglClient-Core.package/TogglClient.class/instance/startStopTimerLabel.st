toolbuilder
startStopTimerLabel

	self timerIsRunning
		ifTrue: [^ #Stop]
		ifFalse: [^ #Start] 
	