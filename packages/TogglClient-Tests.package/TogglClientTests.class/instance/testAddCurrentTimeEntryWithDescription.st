tests-toolbuilder
testAddCurrentTimeEntryWithDescription
	
	client timeEntryList removeAll.
	client
		currentText: 'Test';
		addCurrentTimeEntry.
	self assert: 'Test' equals: client timeEntryList first description