tests
testActionToggleStartStopIfTimerIsNotRunning

	client stopTimer.
	client actionToggleStartStop.
	self assert: true equals: client timerIsRunning

	
	