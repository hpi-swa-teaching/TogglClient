tests
testClientLabelShowsNotSynchronizedWhenNotAllTimeEntriesAreSynchronized

	client addTimeEntry: notSynchronizedTimeEntry.
	self assert: client isSynchronized not.
	self assert: (client clientLabel includesSubString: '(not synchronized)')

	