tests
testClientIsNotSynchronizedWhenTimeEntryListIsEmpty

	client timeEntryList removeAll.
	self assert: false equals: client isSynchronized

	
	