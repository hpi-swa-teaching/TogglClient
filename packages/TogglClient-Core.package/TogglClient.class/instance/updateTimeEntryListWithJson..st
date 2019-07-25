actions
updateTimeEntryListWithJson: aJson
	
	self timeEntryList removeAll.
	aJson collect: [:jsonTimeEntry | 
		TogglJsonParser createTimeEntryFromJson: jsonTimeEntry] into: self timeEntryList.
	self changed: #timeEntryList.