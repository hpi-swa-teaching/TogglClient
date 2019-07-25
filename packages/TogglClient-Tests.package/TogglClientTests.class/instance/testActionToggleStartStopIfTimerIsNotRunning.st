tests
testActionToggleStartStopIfTimerIsNotRunning

	client stopTimer.
	client actionToggleStartStop.
	self assert: client timerIsRunning

	
	