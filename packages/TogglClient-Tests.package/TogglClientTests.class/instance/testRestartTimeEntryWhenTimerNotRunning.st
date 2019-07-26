tests
testRestartTimeEntryWhenTimerNotRunning

	client 
		addTimeEntry: namedTimeEntry;
		currentSelection: client timeEntryList first;
		restartTimeEntry. 
		
	self assert: 'Test' equals: client currentText.
	self assert: client timerIsRunning.
	self assert: 'Stop' equals: client startStopTimerLabel

	
	