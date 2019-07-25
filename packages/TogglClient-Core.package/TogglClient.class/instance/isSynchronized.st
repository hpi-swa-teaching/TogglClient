accessing
isSynchronized

	^ (self timeEntryList allSatisfy: [ :timeEntry | timeEntry isSynchronized]) and: [self timeEntryList notEmpty]