tests
testGetTimeEntriesResponse

	| response |	
	response := client togglAPI getTimeEntriesWithUser: 'yugizeto@googlemail.com' 
		Password:  'thisisasqueaktest123'.
	self assert: response url = 'https://www.toggl.com/api/v8/time_entries'.
	self assert: response code = 200