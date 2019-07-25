tests
testClientLabelShowsNotSynchronizedWhenTimeEntryListIsEmpty

	client timeEntryList removeAll.
	self assert: (client clientLabel includesSubString: '(not synchronized)')
	