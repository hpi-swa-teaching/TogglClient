tests
testCreateTimeEntryFromJsonReturnsTimeEntry

	| timeEntry |
	timeEntry := TogglJsonParser createTimeEntryFromJson: (Json readFrom: testJson readStream).
	self assert: timeEntry class equals: TogglTimeEntry.
	self assert: 1234 equals: timeEntry id.
	self assert: 'meeting' equals: timeEntry description