tests
testCurrentTextResetOnStopTimer

	client 
		startTimer;
		currentText: 'test';
		stopTimerAndAddTimeEntry.
	self assert: client currentText equals: String empty