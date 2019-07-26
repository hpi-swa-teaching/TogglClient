tests
testTimerDurationAs24hour

	client timerDuration: Duration new.
	self assert: '00:00:00' equals: client timerDurationAs24hour