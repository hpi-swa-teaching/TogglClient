running
testAddCurrentTimeEntryWithDescription
	
	togglClient timeEntryList removeAll.
	togglClient currentText: 'Test'.
	togglClient addCurrentTimeEntry.
	self assert: 'Test' equals: togglClient timeEntryList first description