actions
setDefaultUserAndPassword
	TogglAccount defaultName: 
		(UIManager default
			request: 'Enter new user name'
			initialAnswer: TogglAccount defaultName).
	TogglAccount defaultPassword: 
		(UIManager default
			request: 'Enter password'
			initialAnswer: TogglAccount defaultPassword)
