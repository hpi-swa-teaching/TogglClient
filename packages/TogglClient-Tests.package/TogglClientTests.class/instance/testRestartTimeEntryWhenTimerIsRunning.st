tests
testRestartTimeEntryWhenTimerIsRunning

	client addTimeEntry: (TogglTimeEntry new 
								description: 'Test';
								startDateAndTime: DateAndTime now).
	client startTimer.
	client currentSelection: client timeEntryList first.
	client restartTimeEntry. 
	
	self assert: 'Test' equals: client currentText.
	self assert: true equals: client timerIsRunning.
	self assert: 'Stop' equals: client startStopTimerLabel.
	self assert: 'no description' equals: client timeEntryList first description

	
	