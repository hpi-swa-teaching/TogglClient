tests
testRestartTimeEntryWhenTimerIsRunning

	client addTimeEntry: namedTimeEntry;
		startTimer;
		currentSelection: client timeEntryList first;
		restartTimeEntry. 
	
	self assert: 'Test' equals: client currentText.
	self assert: client timerIsRunning.
	self assert: 'Stop' equals: client startStopTimerLabel.
	self assert: 'no description' equals: client timeEntryList first description

	
	