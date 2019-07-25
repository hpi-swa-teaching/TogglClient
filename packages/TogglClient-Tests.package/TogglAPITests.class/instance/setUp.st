running
setUp

	client := TogglClient new.
	validTimeEntry := TogglTimeEntry new
		id: 1;
		wid: 3375715;
		description: 'we can still push';
		startDateAndTime: (DateAndTime now);
		stopDateAndTime: (DateAndTime now);
		yourself.
