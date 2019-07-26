tests
testPushTimeEntry

	| response json |	
	response := client togglAPI
		pushTimeEntry: validTimeEntry
		WithUser: self validAccountUser
		Password: self validAccountPassword.
		
	self assert: 'https://www.toggl.com/api/v8/time_entries' equals: response url.
	self assert: response isSuccess.
	json := TogglJsonParser jsonFromResponse: response.
	self assert: ((json at: 'data') at: 'description') equals: 'we can still push'