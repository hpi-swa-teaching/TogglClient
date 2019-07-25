running
setUp

	testTimeEntry := TogglTimeEntry new
		id: 1;
		wid: 1234;
		description: 'anothertest';
		startDateAndTime: (DateAndTime fromString: '2019-01-01 13:37:00');
		stopDateAndTime: (DateAndTime fromString: '2019-01-01 13:37:10');
		yourself.
	testJson := 	'{
		"id":1234,
		"guid":"82c539f326380dc9ebcdb4860d2279d7",
		"wid":3379844,"pid":151132647,
		"billable":false,
		"start":"2019-05-22T11:00:00+00:00",
		"stop":"2019-05-22T12:15:00+00:00",
		"duration":4500,
		"description":"meeting",
		"duronly":false,
		"at":"2019-05-23T09:31:45+00:00",
		"uid":4787965}'.
	noDescriptionJson :='{
		"id":1234,
		"guid":"82c539f326380dc9ebcdb4860d2279d7",
		"wid":3379844,
		"pid":151132647,
		"billable":false,
		"start":"2019-05-22T11:00:00+00:00",
		"stop":"2019-05-22T12:15:00+00:00",
		"duration":4500,
		"duronly":false,"at":"2019-05-23T09:31:45+00:00",
		"uid":4787965}'