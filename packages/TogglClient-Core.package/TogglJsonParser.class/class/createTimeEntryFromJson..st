as yet unclassified
createTimeEntryFromJson: json
	| timeEntry |
	timeEntry := TogglTimeEntry new.
	(json at: 'start') ifNotNil: [
		timeEntry startDateAndTime: (DateAndTime fromString: (json at: 'start'))].
	(json at: 'stop') ifNotNil: [
		timeEntry stopDateAndTime: (DateAndTime fromString: (json at: 'stop'))].
	timeEntry description: (json at: 'description').
	^ timeEntry.
	