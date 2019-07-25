tests
testAddTimeEntry
	
	togglClient timeEntryList removeAll.
	togglClient addTimeEntry: testTimeEntry.
	self assert: (togglClient timeEntryList size == 1)