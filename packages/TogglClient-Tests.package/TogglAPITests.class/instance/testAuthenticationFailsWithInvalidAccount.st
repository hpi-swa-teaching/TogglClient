tests
testAuthenticationFailsWithInvalidAccount

	| response |
	response := client togglAPI
		authenticateWithUsername: ''
		Password: ''.	
	self assert: response isSuccess not.

