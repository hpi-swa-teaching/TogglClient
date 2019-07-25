tests-toolbuilder
testAddTimeEntry
	
	client timeEntryList removeAll.
	client addTimeEntry: namedTimeEntry.
	self assert: 1 equals: client timeEntryList size