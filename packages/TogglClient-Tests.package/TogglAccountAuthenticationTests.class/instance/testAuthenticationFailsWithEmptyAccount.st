tests
testAuthenticationFailsWithEmptyAccount

	TogglAccount defaultName: ''.
	TogglAccount defaultPassword: ''.
	client togglAPI authenticate.
	self assert: false equals: client authenticated.