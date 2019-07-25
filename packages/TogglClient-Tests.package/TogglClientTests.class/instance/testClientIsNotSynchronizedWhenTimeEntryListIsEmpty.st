tests
testClientIsNotSynchronizedWhenTimeEntryListIsEmpty

	client timeEntryList removeAll.
	self assert: client isSynchronized not

	
	