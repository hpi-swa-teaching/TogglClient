tests
testCreateTimeEntryFromJsonReturnsTimeEntry
	| timeEntry |
	
	timeEntry := TogglJsonParser createTimeEntryFromJson: (Json readFrom: testjson readStream).
	self assert: timeEntry class equals: TogglTimeEntry.
	self assert: 1234 equals: timeEntry id.
	self assert: 'meeting' equals: timeEntry description.