actions
actionSaveAndClose
	userName ifNotNil: [TogglAccount defaultName: userName].
	userPassword ifNotNil: [TogglAccount defaultPassword: userPassword].
	self changed: #close.