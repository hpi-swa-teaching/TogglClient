parsing
createTimeEntryFromJson: json
	| timeEntry |
	timeEntry := TogglTimeEntry new
		id: (json at: 'id').
	(json at: 'description') 
		ifNil: [timeEntry description: 'no description']
		ifNotNil: [timeEntry description: (json at: 'description')].
	(json at: 'start') ifNotNil: [
		timeEntry startDateAndTime: (DateAndTime fromString: (json at: 'start'))].
	(json at: 'stop') ifNotNil: [
		timeEntry stopDateAndTime: (DateAndTime fromString: (json at: 'stop'))].
	
	^ timeEntry.

	