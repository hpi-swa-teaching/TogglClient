as yet unclassified
setUp

	togglClient := TogglClient new.
	testTimeEntry := TogglTimeEntry new
		id: 1;
		startDateAndTime: (DateAndTime fromString: '2019-01-01 13:37:00');
		yourself.
	anotherTimeEntry := TogglTimeEntry new
		id: 2;
		startDateAndTime: (DateAndTime fromString: '2019-01-01 14:42:00');
		yourself.