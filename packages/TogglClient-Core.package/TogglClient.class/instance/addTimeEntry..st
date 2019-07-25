actions
addTimeEntry: aTimeEntry

	self timeEntryList add: aTimeEntry.
	self changed: #timeEntryList.
	self changed: #clientLabel