actions
actionSaveAndClose
	userName ifNotNil: [TogglAccount defaultName: userName].
	userEmail ifNotNil: [TogglAccount defaultEmail: userEmail].
	self changed: #close.