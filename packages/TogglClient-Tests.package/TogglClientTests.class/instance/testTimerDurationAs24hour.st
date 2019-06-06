tests
testTimerDurationAs24hour

	client startTimer.
	client stopTimer.
	self assert: '00:00:00' equals: client timerDurationAs24hour.