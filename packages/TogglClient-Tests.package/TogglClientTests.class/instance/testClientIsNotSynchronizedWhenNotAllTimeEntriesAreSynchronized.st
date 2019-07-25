tests
testClientIsNotSynchronizedWhenNotAllTimeEntriesAreSynchronized

	client timeEntryList
		removeAll;
		add: synchronizedTimeEntry;
		add: notSynchronizedTimeEntry.
	
	self assert: client isSynchronized not

	
	