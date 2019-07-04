tests
testClientLabelShowsNotSynchronizedWhenNotAllTimeEntriesAreSynchronized

	client addTimeEntry: TogglTimeEntry new.
	self assert: false equals: client isSynchronized.
	self assert: true equals: (client clientLabel includesSubString: '(not synchronized)')
	
	
	

	
	