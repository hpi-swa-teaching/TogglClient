tests
testStopTimer

	client startTimer.
	client stopTimer.
	self assert: false equals: client timer isActive