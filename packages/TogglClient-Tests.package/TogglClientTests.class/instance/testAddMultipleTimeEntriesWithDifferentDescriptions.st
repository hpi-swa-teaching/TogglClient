tests-toolbuilder
testAddMultipleTimeEntriesWithDifferentDescriptions
	
	| text |
	text := Text fromString: 'test1'. "Text reference is mutable"
	client 
		currentText: text;
		startTimer;
		stopTimerAndAddTimeEntry.
	
	text at: 5 put: $2.
	client 
		currentText: text;
		startTimer;
		stopTimerAndAddTimeEntry.

	self assert: 'test2' equals: client timeEntryList first description.
	self assert: 'test1' equals: client timeEntryList second description