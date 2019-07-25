actions
setDefaultUserAndPassword
	
	| initialName initialPassword |
	initialName := TogglAccount defaultName ifNil: [String empty].
	initialPassword := TogglAccount defaultPassword ifNil: [String empty].
	TogglAccount defaultName: 
		(UIManager default
			request: 'Enter new user name'
			initialAnswer: initialName).
	TogglAccount defaultPassword: 
		(UIManager default
			request: 'Enter password'
			initialAnswer: initialPassword)
