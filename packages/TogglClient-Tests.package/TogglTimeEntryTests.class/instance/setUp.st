running
setUp

	togglClient := TogglClient new.
	testTimeEntry := TogglTimeEntry new
		id: 1;
		description: 'im a test';
		startDateAndTime: (DateAndTime fromString: '2019-01-01 13:37:00');
		stopDateAndTime: (DateAndTime fromString: '2019-01-01 17:40:33');
		yourself.
	anotherTimeEntry := TogglTimeEntry new
		id: 2;
		description: 'me too';
		startDateAndTime: (DateAndTime fromString: '2019-01-01 14:42:00');
		yourself