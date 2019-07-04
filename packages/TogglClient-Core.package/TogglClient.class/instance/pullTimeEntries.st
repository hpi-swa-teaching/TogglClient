actions
pullTimeEntries

	| response json |	
	response := self togglAPI getTimeEntriesWithUser: self account userName Password: self account userPassword.
	json := TogglJsonParser jsonFromResponse: response.
	self timeEntryList removeAll.
	json collect: [:jsonTimeEntry | 
		TogglJsonParser createTimeEntryFromJson: jsonTimeEntry] into: self timeEntryList.
	self changed: #timeEntryList