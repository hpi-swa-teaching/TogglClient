actions
renameTimeEntry

	self currentSelection renameTo: 
		(UIManager default
			request: 'Enter new description'
			initialAnswer: self currentSelection description).
	self togglAPI 
		updateTimeEntry: (self currentSelection)
			WithUser: self account userName Password: self account userPassword.
	self changed: #timeEntryList.
	self changed: #clientLabel
