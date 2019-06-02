tests
testCreateTimeEntryFromJsonReturnsTimeEntryWithoutDescription
	| timeEntry |
	
	timeEntry := TogglJsonParser createTimeEntryFromJson: (Json readFrom: noDescriptionJson readStream).
	self assert: timeEntry class equals: TogglTimeEntry.
	self assert: 1234 equals: timeEntry id.
	self assert: 'no description' equals: timeEntry description.