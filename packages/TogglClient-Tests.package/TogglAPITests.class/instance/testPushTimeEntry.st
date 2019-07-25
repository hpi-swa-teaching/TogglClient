tests
testPushTimeEntry

	| response json |	
	response := client togglAPI
		pushTimeEntry: testTimeEntry
		WithUser: 'yugizeto@googlemail.com' 
		Password:  'thisisasqueaktest123'.
		
	self assert: response url = 'https://www.toggl.com/api/v8/time_entries'.
	self assert: response code = 200.
	json := TogglJsonParser jsonFromResponse: response.
	self assert: ((json at: 'data') at: 'description') equals: 'we can still push'