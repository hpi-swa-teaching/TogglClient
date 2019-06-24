actions
setDefaultUserAndPassword
	
	| initialName initialPassword |
	initialName := TogglAccount defaultName ifNil: [''].
	initialPassword := TogglAccount defaultPassword ifNil: [''].
	TogglAccount defaultName: 
		(UIManager default
			request: 'Enter new user name'
			initialAnswer: initialName).
	TogglAccount defaultPassword: 
		(UIManager default
			request: 'Enter password'
			initialAnswer: initialPassword)
