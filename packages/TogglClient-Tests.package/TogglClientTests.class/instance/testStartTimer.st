tests-building
testStartTimer

	client startTimer.
	self assert: true equals: client timer isActive.