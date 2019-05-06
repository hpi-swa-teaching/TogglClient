toolbuilder
renameTask
	self currentSelection description: (UIManager default request: 'Enter new description' initialAnswer: self currentSelection description)