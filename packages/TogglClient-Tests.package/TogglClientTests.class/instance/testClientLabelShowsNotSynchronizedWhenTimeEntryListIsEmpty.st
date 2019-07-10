tests
testClientLabelShowsNotSynchronizedWhenTimeEntryListIsEmpty

	client timeEntryList removeAll.
	self assert: true equals: (client clientLabel includesSubString: '(not synchronized)')
	
	
	

	
	