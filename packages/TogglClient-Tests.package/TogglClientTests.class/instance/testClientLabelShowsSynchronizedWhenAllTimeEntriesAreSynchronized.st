tests
testClientLabelShowsSynchronizedWhenAllTimeEntriesAreSynchronized

	| synchronizedTimeEntry |
	
	client timeEntryList removeAll.
	synchronizedTimeEntry := TogglTimeEntry new.
	synchronizedTimeEntry isSynchronized: true.
	client timeEntryList add: synchronizedTimeEntry.
	
	self assert: true equals: client isSynchronized.
	self assert: true equals: (client clientLabel includesSubString: '(synchronized)')
	
	