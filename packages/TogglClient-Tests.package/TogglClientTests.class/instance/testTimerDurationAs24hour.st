tests
testTimerDurationAs24hour

	client startTimer.
	(Delay forSeconds: 1) wait.
	self assert: '00:00:01' equals: client timerDurationAs24hour.