tests
testTimerIsRunning

	client timer activate.
	self assert: true equals: client timerIsRunning.
	client timer reset.
	self assert: false equals: client timerIsRunning
	

	
	