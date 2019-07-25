tests
testGetTimeEntriesResponse

	| response |	
	response := client togglAPI getTimeEntriesWithUser: self validAccountUser 
		Password:  self validAccountPassword.
	self assert: 'https://www.toggl.com/api/v8/time_entries' equals: response url.
	self assert: response isSuccess