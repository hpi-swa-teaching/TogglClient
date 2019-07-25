tests
testActionToggleStartStopIfTimerIsRunning

	client startTimer.
	client actionToggleStartStop.
	self assert: client timerIsRunning not

	
	