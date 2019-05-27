as yet unclassified
createTimeEntryFromJson: json
	| timeEntry |
	timeEntry := TogglTimeEntry new
		description: (json at: 'description');
		id: (json at: 'id').
	(json at: 'start') ifNotNil: [
		timeEntry startDateAndTime: (DateAndTime fromString: (json at: 'start'))].
	(json at: 'stop') ifNotNil: [
		timeEntry stopDateAndTime: (DateAndTime fromString: (json at: 'stop'))].
	
	^ timeEntry.
	