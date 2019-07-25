tests
testTimerIsRunning

	client timer activate.
	self assert: client timerIsRunning.
	client timer reset.
	self assert: client timerIsRunning not
	

	
	