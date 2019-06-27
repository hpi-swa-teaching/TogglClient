tests
testUpdateTimeEntry

	| response json timeEntry |
	response := client togglAPI pushTimeEntry: testTimeEntry WithUser: user Password: password.
	timeEntry := TogglJsonParser createTimeEntryFromJson: ((TogglJsonParser jsonFromResponse: response) at: 'data').
	timeEntry renameTo: 'we can still rename'.
	response := client togglAPI 	updateTimeEntry: timeEntry WithUser: user Password: password.
	json := TogglJsonParser jsonFromResponse: response.
	self assert: ((json at:'data') at: 'description') equals: 'we can still rename'