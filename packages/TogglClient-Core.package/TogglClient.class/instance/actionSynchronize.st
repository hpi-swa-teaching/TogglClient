actions
actionSynchronize
	| response json|
	response := self togglAPI getResponseFromEndpoint: 'time_entries' WithUser: self account userName Password: self account userPassword.
	json := TogglJsonParser jsonFromResponse: response.
	json do: [:jsonTimeEntry | 
		self timeEntryList addIfNotPresent: (TogglJsonParser createTimeEntryFromJson: jsonTimeEntry)].
	self changed: #timeEntryList.