actions
addCurrentTimeEntry
	| timeEntry |
	timeEntry := TogglTimeEntry new.
	timeEntry
		id: DateAndTime now asUnixTime;
		startDateAndTime: self startDateAndTime;
		stopDateAndTime: DateAndTime now;
		renameTo: self currentText asString.
		
	self addTimeEntry: timeEntry.
