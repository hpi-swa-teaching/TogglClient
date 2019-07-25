tests
testCurrentTextResetOnStopTimer

	client startTimer.
	client currentText: 'test'.
	client stopTimerAndAddTimeEntry.
	self assert: client currentText equals: String empty