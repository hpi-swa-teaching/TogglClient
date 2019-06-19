requests
getTimeEntriesWithUser: aUser Password: aPassword
	^ self getResponseFromEndpoint: self timeEntryEndpoint
			WithUser: aUser Password: aPassword