running
setUp

	client := TogglClient new.
	toolbuilder := ToolBuilder default.
	synchronizedTimeEntry := TogglTimeEntry new
		isSynchronized: true;
		startDateAndTime: DateAndTime now;
		yourself.
	notSynchronizedTimeEntry := TogglTimeEntry new
		isSynchronized: false;
		startDateAndTime: DateAndTime now;
		yourself.
	namedTimeEntry := TogglTimeEntry new
		description: 'Test';
		startDateAndTime: DateAndTime now;
		yourself