tests
testRestartTimeEntryWhenTimerNotRunning

	client addTimeEntry: (TogglTimeEntry new description: 'Test').
	client currentSelection: client timeEntryList first.
	client restartTimeEntry. 
	
	self assert: 'Test' equals: client currentText.
	self assert: true equals: client timerIsRunning.
	self assert: 'Stop' equals: client startStopTimerLabel.

	
	