running
testAddMultipleTimeEntriesWithDifferentDescriptions

	| text |
	text := Text fromString: 'test1'.
	togglClient currentText: text.
	togglClient startTimer.
	togglClient stopTimerAndAddTimeEntry.
	
	text at: 5 put: '2' asCharacter.
	togglClient currentText: text.
	togglClient startTimer.
	togglClient stopTimerAndAddTimeEntry.


	self assert: 'test2' equals: togglClient timeEntryList first description.
	self assert: 'test1' equals: togglClient timeEntryList second description