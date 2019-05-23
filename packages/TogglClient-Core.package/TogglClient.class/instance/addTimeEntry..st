actions
addTimeEntry: aTimeEntry
	self timeEntryList addFirst: aTimeEntry.
	self changed: #timeEntryList.