tests
testClientLabelShowsSynchronizedWhenAllTimeEntriesAreSynchronized

	client timeEntryList 
		removeAll;
		add: synchronizedTimeEntry.
	
	self assert: client isSynchronized.
	self assert: (client clientLabel includesSubString: '(synchronized)')
	
	