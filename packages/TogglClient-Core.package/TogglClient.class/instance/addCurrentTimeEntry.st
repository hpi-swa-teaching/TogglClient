actions
addCurrentTimeEntry
	| timeEntry |
	timeEntry := TogglTimeEntry new.
	timeEntry
		startDateAndTime: self startDateAndTime;
		stopDateAndTime: DateAndTime now;
		renameTo: self currentText asString.
	self addTimeEntry: timeEntry.
