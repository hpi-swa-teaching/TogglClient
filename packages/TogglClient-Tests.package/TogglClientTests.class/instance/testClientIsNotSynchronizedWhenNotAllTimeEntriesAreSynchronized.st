tests
testClientIsNotSynchronizedWhenNotAllTimeEntriesAreSynchronized

	| synchronizedTimeEntry notSynchronizedTimeEntry |
	
	client timeEntryList removeAll.
	
	synchronizedTimeEntry := TogglTimeEntry new.
	synchronizedTimeEntry 
		isSynchronized: true;
		startDateAndTime: DateAndTime now.
	notSynchronizedTimeEntry := TogglTimeEntry new.
	notSynchronizedTimeEntry 
		isSynchronized: false;
		startDateAndTime: DateAndTime now.
	client timeEntryList add: synchronizedTimeEntry.
	client timeEntryList add: notSynchronizedTimeEntry.
	
	self assert: false equals: client isSynchronized

	
	