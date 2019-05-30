running
testCreateTimeEntryFromJsonReturnsTimeEntry
	| timeEntry |
	
	timeEntry := TogglJsonParser createTimeEntryFromJson: (Json readFrom: testjson readStream).
	self assert: TogglTimeEntry equals: timeEntry class.
	self assert: timeEntry id equals: 1234.
	self assert: timeEntry description equals: 'meeting'.