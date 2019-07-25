tests
testUpdateTimeEntry

	| response json timeEntry |
	response := client togglAPI pushTimeEntry: validTimeEntry 
		WithUser: self validAccountUser 
		Password: self validAccountPassword.
	timeEntry := TogglJsonParser createTimeEntryFromJson: ((TogglJsonParser jsonFromResponse: response) at: 'data').
	timeEntry renameTo: 'we can still rename'.
	
	response := client togglAPI updateTimeEntry: timeEntry 
		WithUser: self validAccountUser 
		Password: self validAccountPassword.
	json := TogglJsonParser jsonFromResponse: response.
	self assert: ((json at:'data') at: 'description') equals: 'we can still rename'