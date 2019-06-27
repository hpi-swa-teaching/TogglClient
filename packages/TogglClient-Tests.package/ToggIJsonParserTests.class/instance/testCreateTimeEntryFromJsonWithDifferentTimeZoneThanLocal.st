tests
testCreateTimeEntryFromJsonWithDifferentTimeZoneThanLocal

	| timeEntry |	
	timeEntry := TogglJsonParser createTimeEntryFromJson: (Json readFrom: noDescriptionJson readStream).
	self assert: DateAndTime localOffset equals: timeEntry startDateAndTime offset. 
	self assert: DateAndTime localOffset equals: timeEntry stopDateAndTime offset