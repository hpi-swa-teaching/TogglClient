as yet unclassified
testAuthenticationFailsWithEmptyAccount

	TogglAccount defaultName: ''.
	TogglAccount defaultPassword: ''.
	client startAuthentication.
	self assert: false equals: client authenticated.