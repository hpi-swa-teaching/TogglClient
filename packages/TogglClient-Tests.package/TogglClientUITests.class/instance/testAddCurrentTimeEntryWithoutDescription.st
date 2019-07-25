tests
testAddCurrentTimeEntryWithoutDescription
	
	togglClient currentText: ''.
	togglClient addCurrentTimeEntry.
	self assert: 'no description' equals: togglClient timeEntryList first description