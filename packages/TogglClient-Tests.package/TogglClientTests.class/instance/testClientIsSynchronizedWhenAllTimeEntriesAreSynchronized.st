tests
testClientIsSynchronizedWhenAllTimeEntriesAreSynchronized

	client timeEntryList 
		removeAll;
		add: synchronizedTimeEntry.
	self assert: client isSynchronized

	
	