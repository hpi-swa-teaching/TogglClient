actions
renameTimeEntry

	self currentSelection renameTo: 
		(UIManager default
			request: 'Enter new description'
			initialAnswer: self currentSelection description).
	self authenticated ifTrue: [
		self togglAPI 
			updateTimeEntry: (self currentSelection)
			WithUser: self account userName Password: self account userPassword].
	self changed: #timeEntryList.
	self changed: #clientLabel
