actions
addCurrentTimeEntry
	| timeEntry |
	timeEntry := TogglTimeEntry new.
	timeEntry
		startTime: self startTime;
		stopTime: Time now;
		renameTo: self currentText asString.
	self addTimeEntry: timeEntry.
