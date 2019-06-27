tests
testActionToggleStartStopIfTimerIsRunning

	client startTimer.
	client actionToggleStartStop.
	self assert: false equals: client timerIsRunning

	
	