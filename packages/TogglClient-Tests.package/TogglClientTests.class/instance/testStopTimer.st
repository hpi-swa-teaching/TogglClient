tests
testStopTimer

	client 
		startTimer;
		stopTimer.
	self assert: client timerIsRunning not