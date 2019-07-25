actions
logoutAndCleanTimeEntryList

	self togglAPI logout.
	self timeEntryList removeAll.
	self 
		authenticated: false;
		changed: #timeEntryList;
		changed: #authenticated