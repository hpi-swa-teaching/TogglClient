actions
renameTask
	self currentSelection renameTo: 
		(UIManager default
			request: 'Enter new description'
			initialAnswer: self currentSelection description).
	self changed: #taskList.
