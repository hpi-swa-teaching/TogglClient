tests
testStartTimer

	client startTimer.
	self assert: true equals: client timer isActive.