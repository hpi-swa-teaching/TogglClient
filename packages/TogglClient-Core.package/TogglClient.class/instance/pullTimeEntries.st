actions
pullTimeEntries

	| response json |	
	response := self togglAPI getTimeEntriesWithUser: self account userName Password: self account userPassword.
	json := TogglJsonParser jsonFromResponse: response.
	self timeEntryList removeAll.
	json do: [:jsonTimeEntry | 
		self timeEntryList add: (TogglJsonParser createTimeEntryFromJson: jsonTimeEntry)].
	self changed: #timeEntryList