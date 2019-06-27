initialize-release
initialize

	super initialize.
	self url: 'https://www.toggl.com/api/v8/'.
	self timeEntryEndpoint: 'time_entries'.
	self sessionsEndpoint: 'sessions'