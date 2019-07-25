running
setUp

	client := TogglClient new.
	user := 'yugizeto@googlemail.com'.
	password := 'thisisasqueaktest123'.
	testTimeEntry := TogglTimeEntry new
		id: 1;
		wid: 3375715;
		description: 'we can still push';
		startDateAndTime: (DateAndTime now);
		stopDateAndTime: (DateAndTime now);
		yourself.
