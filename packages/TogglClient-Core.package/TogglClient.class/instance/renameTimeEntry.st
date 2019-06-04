actions
renameTimeEntry
	self currentSelection renameTo: 
		(UIManager default
			request: 'Enter new description'
			initialAnswer: self currentSelection description).
	self changed: #timeEntryList.
