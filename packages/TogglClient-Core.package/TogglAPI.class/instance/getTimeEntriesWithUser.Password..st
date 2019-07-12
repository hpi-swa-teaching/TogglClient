requests
getTimeEntriesWithUser: aUser Password: aPassword

	^ self getResponseFromEndpoint: self class timeEntryEndpoint
			WithUser: aUser Password: aPassword