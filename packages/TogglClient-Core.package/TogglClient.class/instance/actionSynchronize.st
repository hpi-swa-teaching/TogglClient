actions
actionSynchronize
	| response json|
	response := self togglAPI getResponseFromEndpoint: 'time_entries'.
	json := TogglJsonParser jsonFromResponse: response.
	json do: [:jsonTimeEntry | 
		self timeEntryList addIfNotPresent: (TogglJsonParser createTimeEntryFromJson: jsonTimeEntry)].
	self changed: #timeEntryList.